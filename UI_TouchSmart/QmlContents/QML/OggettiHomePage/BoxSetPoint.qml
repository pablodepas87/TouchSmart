import QtQuick 2.7
import QtQuick.Controls 2.0


Button{

  width:225
  height: 140

  property bool tipoVal: false   // se false visualizzo la temperatura

  property int  setTemperatura: 250
  property int  temperaturaAtt: 150
  property int  setTime: 20
  property int  tempoTrascorso:10

  background: Item{

      Image {

        source:"qrc:/QmlContents/Images/Home/BOX-set-time-temp.png"
      }

  }
  contentItem: Item{

      Text{
          height: 30
          anchors.left: parent.left ; anchors.leftMargin: parent.width*0.01
          anchors.right: parent.right ; anchors.rightMargin: parent.width*0.01
          anchors.top: parent.top ; anchors.topMargin: parent.height*0.02

          text:  tipoVal== false? qsTr("SET   %1°C").arg(setTemperatura) : qsTr("TIME -%1'MIN").arg(setTime)
          color: tipoVal== false? "white" : "#009fe3"
          minimumPixelSize: 25
          fontSizeMode: Text.Fit
          horizontalAlignment: Text.AlignHCenter; verticalAlignment: Text.AlignVCenter
          font.capitalization: Font.Capitalize
          font.pixelSize: 30
          font.weight: Font.Bold

      }


      Text{

          height: 60
          font.capitalization: Font.Capitalize
          anchors.left: parent.left ; anchors.leftMargin: parent.width*0.01
          anchors.right: parent.right ; anchors.rightMargin: parent.width*0.01
          anchors.bottom:  parent.bottom ; anchors.bottomMargin: parent.height*0.05

          text:  tipoVal== false? qsTr("%1°C").arg(temperaturaAtt) : qsTr("%1' MIN").arg(tempoTrascorso)
          color: tipoVal== false? "#ed7101" : "#009fe3"
          minimumPixelSize: 20
          fontSizeMode: Text.Fit
          horizontalAlignment: Text.AlignHCenter; verticalAlignment: Text.AlignVCenter
          font.pixelSize:  55 ; font.weight: Font.Bold
      }



  }




}
