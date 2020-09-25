import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick3D
import QtQuick3D.Helpers

Window {
    id: window
    visible: true
    width: 1280
    height: 720
    title: qsTr("Qt Quick 3D Presentation Sandbox")

    property string sessionText: "Introduction"

    SplitView {
        anchors.fill: parent
        orientation: Qt.Horizontal

        Rectangle {
            id: contentContainer
            color: "black"
            SplitView.fillWidth: true
        }
        Rectangle {
            id: controlsContainer
            color: "#875087"
            implicitWidth: 250

            ColumnLayout {
                width: parent.width
                Label {
                    text: "Settings"
                    font.pointSize: 16
                    color: "white"
                    ColumnLayout.alignment: Qt.AlignHCenter
                }
            }

        }
    }

    Text {
        id: topText
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        text: window.sessionText
        color: "white"
        font.pointSize: 32
        style: Text.Outline
        styleColor: "black"
    }

}
