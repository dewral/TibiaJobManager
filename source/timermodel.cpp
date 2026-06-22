#include "source/timermodel.h"

TimerModel::TimerModel(QObject* parent)
    : QAbstractListModel(parent)
{
    m_timers.push_back({
        "Training",
        "Running",
        3600
    });

    m_timers.push_back({
        "Fishing",
        "Paused",
        900
    });

    m_timers.push_back({
        "Mining",
        "Running",
        120
    });
}

int TimerModel::rowCount(const QModelIndex& parent) const
{
    Q_UNUSED(parent);
    return m_timers.size();
}

QVariant TimerModel::data(
    const QModelIndex& index,
    int role) const
{
    if (!index.isValid())
        return {};

    const Timer& timer = m_timers[index.row()];

    switch (role)
    {
    case NameRole:
        return timer.name;

    case StatusRole:
        return timer.status;

    case TimeRole:
    {
        int h = timer.seconds / 3600;
        int m = (timer.seconds % 3600) / 60;
        int s = timer.seconds % 60;

        return QString("%1:%2:%3")
            .arg(h, 2, 10, QChar('0'))
            .arg(m, 2, 10, QChar('0'))
            .arg(s, 2, 10, QChar('0'));
    }

    default:
        return {};
    }
}

QHash<int, QByteArray> TimerModel::roleNames() const
{
    return {
        { NameRole, "name" },
        { StatusRole, "status" },
        { TimeRole, "time" }
    };
}

void TimerModel::addTimer(const QString& name)
{
    beginInsertRows(
        QModelIndex(),
        m_timers.size(),
        m_timers.size()
        );

    m_timers.push_back({
        name,
        "Paused",
        0
    });

    endInsertRows();
}


void TimerModel::removeTimer(int row)
{
    if (row < 0 || row >= m_timers.size())
        return;

    beginRemoveRows(
        QModelIndex(),
        row,
        row
        );

    m_timers.removeAt(row);

    endRemoveRows();
}
