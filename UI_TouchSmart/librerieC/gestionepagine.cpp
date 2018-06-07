#include "gestionepagine.h"

GestionePagine::GestionePagine(QObject *parent) : QObject(parent)
  ,m_capitolo(0)
{

}

int GestionePagine::capitolo() const
{
    return m_capitolo;
}

void GestionePagine::setCapitolo(int capitolo)
{
    if (m_capitolo == capitolo)
        return;

    m_capitolo = capitolo;
    emit capitoloChanged();
}



