import QtQuick 2.7
import QtQuick.Controls 2.0
import "../OggettiGlobali"
import QtQuick.Layouts 1.3

Item{

    height : 245
    width: 460//parent.width *0.96


    signal setTemp(int temp)                 // signal per set temperatura
    signal setMinuti(int tempo)              // signal per setMinuti


    Image{

        anchors.horizontalCenter: parent.horizontalCenter
        source:"qrc:/QmlContents/Images/Home/sfondoBOX-cieloplatea.png"


    }




}
