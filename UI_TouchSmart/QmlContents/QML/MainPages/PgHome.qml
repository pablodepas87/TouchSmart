import QtQuick 2.7
import QtQuick.Controls 2.0
import "../OggettiGlobali"
import "../OggettiHomePage"
import QtQuick.Layouts 1.3

Page{
    id: page

    width:480
    height: 800

    //signal premuto(int val)

    background: Sfondo{ objBackImg.source: define.pathBckg }

    header: Intestazione {
        objIconaPag.source:  "qrc:/QmlContents/Images/IconeBottoneArancio/ricette.png"
        objTitPag.text: stringhe.titoloMan
        objNumPag.visible: true
        Component.onCompleted: print(width)
    }


    // riga set
    RigaBoxSetPoint{

      id:rowSet
      anchors.horizontalCenter: parent.horizontalCenter


    }

    BoxCieloPlatea {
        id:cieloPlatea
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: rowSet.bottom ; anchors.topMargin: parent.height* 0.01

    }


    // bottoner power
    BottoneArancio{
        anchors.bottom: parent.bottom ;  anchors.bottomMargin: parent.height*0.22
        anchors.left: parent.left ;    anchors.leftMargin: parent.width*0.03
        state:"startTimer"
        checkable: true
    }

    // bottoner power
    BottoneArancio{

        anchors.bottom: parent.bottom ;  anchors.bottomMargin: parent.height*0.025
        anchors.right: parent.right ;    anchors.rightMargin: parent.width*0.03
        state:"powerOff"
        onPowerOffOn:  gestorePagine.capitolo = define.mainPages.standBy
    }


}
