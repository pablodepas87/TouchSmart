import QtQuick 2.7
import QtQuick.Controls 2.0


Page{

  width:600
  height: 480

  signal premuto(int val)
  signal fake
  background: Rectangle{

      color: "red"

  }

  Button {
      id: button
      x: 259
      y: 256
      text: qsTr("Button")
      onClicked: premuto(1)
  }




}