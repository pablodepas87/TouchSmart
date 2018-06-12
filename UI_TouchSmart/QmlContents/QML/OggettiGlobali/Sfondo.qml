import QtQuick 2.7
import QtQuick.Controls 2.0


Item{

  width:800
  height: 480
  property alias objBackImg: background

  Image{
      id:background
      anchors.fill: parent
      source: ""
  }
}
