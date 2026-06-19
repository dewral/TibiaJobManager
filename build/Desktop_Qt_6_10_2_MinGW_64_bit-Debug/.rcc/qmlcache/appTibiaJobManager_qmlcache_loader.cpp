#include <QtQml/qqmlprivate.h>
#include <QtCore/qdir.h>
#include <QtCore/qurl.h>
#include <QtCore/qhash.h>
#include <QtCore/qstring.h>

namespace QmlCacheGeneratedCode {
namespace _qt_qml_TibiaJobManager_Main_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TibiaJobManager_qml_TopBar_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TibiaJobManager_qml_Header_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TibiaJobManager_qml_ContentArea_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TibiaJobManager_qml_TimerRow_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TibiaJobManager_qml_IconButton_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TibiaJobManager_qml_Footer_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TibiaJobManager_qml_TibiaScrollBar_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}

}
namespace {
struct Registry {
    Registry();
    ~Registry();
    QHash<QString, const QQmlPrivate::CachedQmlUnit*> resourcePathToCachedUnit;
    static const QQmlPrivate::CachedQmlUnit *lookupCachedUnit(const QUrl &url);
};

Q_GLOBAL_STATIC(Registry, unitRegistry)


Registry::Registry() {
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TibiaJobManager/Main.qml"), &QmlCacheGeneratedCode::_qt_qml_TibiaJobManager_Main_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TibiaJobManager/qml/TopBar.qml"), &QmlCacheGeneratedCode::_qt_qml_TibiaJobManager_qml_TopBar_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TibiaJobManager/qml/Header.qml"), &QmlCacheGeneratedCode::_qt_qml_TibiaJobManager_qml_Header_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TibiaJobManager/qml/ContentArea.qml"), &QmlCacheGeneratedCode::_qt_qml_TibiaJobManager_qml_ContentArea_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TibiaJobManager/qml/TimerRow.qml"), &QmlCacheGeneratedCode::_qt_qml_TibiaJobManager_qml_TimerRow_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TibiaJobManager/qml/IconButton.qml"), &QmlCacheGeneratedCode::_qt_qml_TibiaJobManager_qml_IconButton_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TibiaJobManager/qml/Footer.qml"), &QmlCacheGeneratedCode::_qt_qml_TibiaJobManager_qml_Footer_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TibiaJobManager/qml/TibiaScrollBar.qml"), &QmlCacheGeneratedCode::_qt_qml_TibiaJobManager_qml_TibiaScrollBar_qml::unit);
    QQmlPrivate::RegisterQmlUnitCacheHook registration;
    registration.structVersion = 0;
    registration.lookupCachedQmlUnit = &lookupCachedUnit;
    QQmlPrivate::qmlregister(QQmlPrivate::QmlUnitCacheHookRegistration, &registration);
}

Registry::~Registry() {
    QQmlPrivate::qmlunregister(QQmlPrivate::QmlUnitCacheHookRegistration, quintptr(&lookupCachedUnit));
}

const QQmlPrivate::CachedQmlUnit *Registry::lookupCachedUnit(const QUrl &url) {
    if (url.scheme() != QLatin1String("qrc"))
        return nullptr;
    QString resourcePath = QDir::cleanPath(url.path());
    if (resourcePath.isEmpty())
        return nullptr;
    if (!resourcePath.startsWith(QLatin1Char('/')))
        resourcePath.prepend(QLatin1Char('/'));
    return unitRegistry()->resourcePathToCachedUnit.value(resourcePath, nullptr);
}
}
int QT_MANGLE_NAMESPACE(qInitResources_qmlcache_appTibiaJobManager)() {
    ::unitRegistry();
    return 1;
}
Q_CONSTRUCTOR_FUNCTION(QT_MANGLE_NAMESPACE(qInitResources_qmlcache_appTibiaJobManager))
int QT_MANGLE_NAMESPACE(qCleanupResources_qmlcache_appTibiaJobManager)() {
    return 1;
}
