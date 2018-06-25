import QtQuick 2.7
import QtQuick.Controls 2.0


Item {
    id: item1

    width: 480
    height: 70
    property alias objIconaPag: imgIcoPagina
    property alias objNumPag: txtNumPagina
    property alias objTitPag: txtTitoloPagina
    property int   numeroPag : 1

    Image{

       id: headerBckg
      // width:460
      // height: 65
       anchors.verticalCenter: parent.verticalCenter
       source: "qrc:/QmlContents/Images/Generiche/sfondo-top.png"
       anchors.horizontalCenter: parent.horizontalCenter

       Image {
           id: imgIcoPagina
           width: 65
           height: 65
           anchors.left:   parent.left;     anchors.leftMargin: 10
           anchors.bottom: parent.bottom ; anchors.bottomMargin: parent.height* 0.01
           source: ""
       }

       Text {
           id: txtNumPagina
           text: qsTr("Pag. %1").arg(numeroPag)
           anchors.bottom: parent.bottom ; anchors.bottomMargin: parent.height* 0.07
           anchors.left: imgIcoPagina.right
           anchors.leftMargin: 2
           font.pixelSize: 18
           font.capitalization: Font.AllUppercase
           color: "white"
           font.weight: Font.Bold
       }

       Text {
           id: txtTitoloPagina
           width: 325
           anchors.verticalCenter: parent.verticalCenter
           height: 62
           text: qsTr("Text")
           anchors.right: headerBckg.right
           anchors.rightMargin: 15
           font.bold: true
           font.capitalization: Font.AllUppercase
           verticalAlignment: Text.AlignVCenter
           horizontalAlignment: Text.AlignRight
           font.pixelSize: 25
           minimumPixelSize: 10
           fontSizeMode: Text.Fit


       }

    }
}
