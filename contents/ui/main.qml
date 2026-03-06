import QtQuick
import QtQuick.Layouts
import org.kde.plasma.components as PlasmaComponents
import org.kde.plasma.plasmoid

PlasmoidItem {
    id: root

    implicitWidth: 200
    implicitHeight: 100

    fullRepresentation: ColumnLayout {
        anchors.fill: parent
        spacing: 10

        PlasmaComponents.Label {
            Layout.alignment: Qt.AlignHCenter
            text: "Hello, Plasma!"
            font.pixelSize: 18
        }

        PlasmaComponents.Button {
            Layout.alignment: Qt.AlignHCenter
            text: "Click Me"
            onClicked: statusLabel.text = "It works! 🎉"
        }

        PlasmaComponents.Label {
            id: statusLabel
            Layout.alignment: Qt.AlignHCenter
            text: "Waiting..."
        }
    }
}
