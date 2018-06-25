import QtQuick 2.7
import QtQuick.Controls 2.0
import "../OggettiGlobali"
import QtQuick.Layouts 1.3

Item{

    height : 140
    width: 460//parent.width *0.96


    signal setTemp(int temp)                 // signal per set temperatura
    signal setMinuti(int tempo)              // signal per setMinuti


    // box set temperatura
    BoxSetPoint{ 
       id:btn1
       anchors.left: parent.left
       onClicked: setTemp(setTemperatura)   // SEGNALE PER APRIRE IL Popup
    }
    //
    BoxSetPoint{
       id:btn2
       anchors.right: parent.right
       tipoVal: true
       onClicked: setMinuti(setTime)       // SEGNALE PER APRIRE IL Popup

    }


}
