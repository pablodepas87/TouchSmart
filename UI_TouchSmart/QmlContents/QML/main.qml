import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import "MainPages"


ApplicationWindow {


    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Item {

        id:item
        anchors.fill: parent


        Loader {

          id:loader
          state:"page1"
          states: [
              State {
                  name: "page1"
                  when: item.capitolo==0
                  PropertyChanges { target: loader; sourceComponent: page1 }

              },
              State {
                  name: "page2"
                  when: item.capitolo==1
                  PropertyChanges {
                      target: loader
                      sourceComponent: page2

                  }
              }
          ]
        }

        Component {
            id:page1
            Page1{
            onPremuto: {
               loader.state="page2"

            }
         }

        }
        Component {
            id:page2
            Page2{

            }

        }







    }




}
