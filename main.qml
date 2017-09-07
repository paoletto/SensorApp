import QtQuick 2.7
import QtQuick.Controls 2.1
import Sensors 1.0
import QtQuick.Window 2.2

Window {
    id: mainWindow
    visible: true
    width: 240
    height: 360
    color: "black"
    Loader {
        id: loader
        width: mainWindow.width
        height: mainWindow.height
        anchors.top: buttonRow.bottom
        anchors.bottom: mainWindow.bottom
        anchors.bottomMargin: 2
        source: "qrc:/Accelerometer.qml"
    }
    Row {
        id: buttonRow
        width: mainWindow.width
        height: 50
        x: 2
        spacing: 2
        anchors.bottom: mainWindow.bottom

        Button {
            text: "Accelerometer"
            onClicked: {
                console.log("Accelerometer clicked")
                loader.source = "qrc:/Accelerometer.qml"
            }
        }
        Button {
            text: "Gyroscope"
            onClicked: {
                console.log("Gyroscope clicked")
                loader.source = "qrc:/Gyroscope.qml"
            }
        }
        Button {
            text: "Magnetometer"
            onClicked: {
                console.log("Magnetometer clicked")
                loader.source = "qrc:/Magnetometer.qml"
            }
        }
        Button {
            text: "Compass"
            onClicked: {
                console.log("Compass clicked")
                loader.source = "qrc:/Compass.qml"
            }
        }
        Button {
            text: "Proximity"
            onClicked: {
                console.log("Proximity clicked")
                loader.source = "qrc:/Proximity.qml"
            }
        }
        Button {
            text: "Tilt"
            onClicked: {
                console.log("Tilt clicked")
                loader.source = "qrc:/TiltSensor.qml"
            }
        }
    }
}
