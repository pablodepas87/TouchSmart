#ifndef PARAMETRIUTENTE_H
#define PARAMETRIUTENTE_H
#include <QDateTime>

#include "parametriutente_global.h"

class PARAMETRIUTENTESHARED_EXPORT ParametriUtente : public QObject
{
   Q_OBJECT
public:
    explicit ParametriUtente(QObject *parent=nullptr);

    static ParametriUtente *m_parametriUtente;

    Q_PROPERTY(bool partenzaRit READ partenzaRit WRITE setPartenzaRit NOTIFY partenzaRitChanged)
    Q_PROPERTY(QDateTime orarioPartenza READ orarioPartenza WRITE setOrarioPartenza NOTIFY orarioPartenzaChanged)


    QDateTime orarioPartenza() const;

public slots:
    bool partenzaRit() const;
    void setPartenzaRit(bool partenzaRit);

    void setOrarioPartenza(QDateTime orarioPartenza);

signals:
    void partenzaRitChanged();
    void orarioPartenzaChanged(QDateTime orarioPartenza);

private:

    bool m_partenzaRit;
    QDateTime m_orarioPartenza;
};

#endif // PARAMETRIUTENTE_H
