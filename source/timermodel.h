#pragma once

#include <QAbstractListModel>
#include <QStringList>

class TimerModel : public QAbstractListModel
{
    Q_OBJECT

public:
    enum Roles {
        NameRole = Qt::UserRole + 1,
        StatusRole,
        TimeRole
    };

    struct Timer
    {
        QString name;
        QString status;
        int seconds;
    };

    explicit TimerModel(QObject* parent = nullptr);

    int rowCount(const QModelIndex& parent = QModelIndex()) const override;
    QVariant data(const QModelIndex& index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;
    Q_INVOKABLE void addTimer(const QString& name);
    Q_INVOKABLE void removeTimer(int row);

private:
    QVector<Timer> m_timers;
};
