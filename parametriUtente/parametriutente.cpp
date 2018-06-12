#include "parametriutente.h"


ParametriUtente::ParametriUtente(QObject *parent):QObject(parent)
    ,m_partenzaRit(false)
    ,m_orarioPartenza(QDateTime(QDate(2000,1,1),QTime(0,0,0)))
{

}

QDateTime ParametriUtente::orarioPartenza() const
{
    return m_orarioPartenza;
}

bool ParametriUtente::partenzaRit() const
{
    return m_partenzaRit;
}

void ParametriUtente::setPartenzaRit(bool partenzaRit)
{
    if (m_partenzaRit == partenzaRit)
        return;

    m_partenzaRit = partenzaRit;
    emit partenzaRitChanged();
}

void ParametriUtente::setOrarioPartenza(QDateTime orarioPartenza)
{
    if (m_orarioPartenza == orarioPartenza)
        return;

    m_orarioPartenza = orarioPartenza;
    emit orarioPartenzaChanged(m_orarioPartenza);
}
