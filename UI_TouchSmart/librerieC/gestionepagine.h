#ifndef GESTIONEPAGINE_H
#define GESTIONEPAGINE_H
#include <QObject>

class GestionePagine : public QObject
{
    Q_OBJECT
public:
    explicit GestionePagine(QObject *parent = nullptr);

    Q_PROPERTY(int capitolo READ capitolo WRITE setCapitolo NOTIFY capitoloChanged)

    int capitolo() const;

signals:

   void capitoloChanged();

public slots:

   void setCapitolo(int capitolo);

private:

   int m_capitolo;

};

#endif // GESTIONEPAGINE_H
