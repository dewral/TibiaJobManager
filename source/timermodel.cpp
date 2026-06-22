#include "source/timermodel.h"

TimerModel::TimerModel(QObject* parent)
    : QAbstractListModel(parent)
{
    m_timers << "Training";
    m_timers << "Fishing";
    m_timers << "Mining";
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

    if (role == NameRole)
        return m_timers[index.row()];

    return {};
}

QHash<int, QByteArray> TimerModel::roleNames() const
{
    return {
        { NameRole, "name" }
    };
}
