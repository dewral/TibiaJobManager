#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QFont>
#include <QIcon>
#include <QQmlContext>
#include "source/timermodel.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    app.setFont(QFont("Verdana", 10));
    app.setWindowIcon(
        QIcon("C:/Users/Dewral/Desktop/QT/TibiaJobManager/data/appIcon.ico")
        );


    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
        TimerModel timerModel;

        engine.rootContext()->setContextProperty(
            "timerModel",
            &timerModel
            );

        engine.loadFromModule(
            "TibiaJobManager",
            "Main"
            );

    return app.exec();
}
