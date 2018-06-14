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
       width:460
       height: 65
       anchors.verticalCenter: parent.verticalCenter
       source: "qrc:/QmlContents/Images/Generiche/sfondo-top.png"
       anchors.horizontalCenter: parent.horizontalCenter

       Image {
           id: imgIcoPagina
           width: 53
           height: 51
           anchors.left: parent.left
           anchors.leftMargin: 10
           source: ""


       }

       Text {
           id: txtNumPagina
           text: qsTr("Pag. %1").arg(numeroPag)
           anchors.bottom: imgIcoPagina.bottom
           anchors.bottomMargin: 0
           anchors.left: imgIcoPagina.right
           anchors.leftMargin: 10
           font.pixelSize: 20
           font.capitalization: Font.Capitalize
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
