import QtQuick 2.7
import QtQuick.Controls 2.0


Item{

  width:480
  height: 800
  property alias objBackImg: background

  Image{
      id:background
      anchors.fill: parent
      source: ""
  }
}
