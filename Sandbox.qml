import QtQuick 6
import QtQuick3D 6

import "LightBox"

Item {
    id: sandbox
    // Inputs
    // Values are between 0.0 - 1.0
    required property real value1
    required property real value2
    required property real value3
    required property real value4
    required property real value5
    required property real value6
    required property bool isEnabled1
    required property bool isEnabled2
    required property bool isEnabled3
    // Outputs
    property string sessionText: "Qt Quick 3D: Scene Concepts"
    property string debugText: ""

    View3D {
        anchors.fill: parent
        environment: SceneEnvironment {
            lightProbe: Texture {
                source: "monte_scherbelino_2k.hdr"
            }
        }

        PerspectiveCamera {
            z: 300
        }

        LightBox {
            y: -200
            eulerRotation.y: 45
        }

        Node {

//            DirectionalLight {
//                visible: isEnabled1
//                eulerRotation.x: -30
//                castsShadow: true
//            }

//            PointLight {
//                visible: isEnabled2
//                position: Qt.vector3d(0, 100, 100)
//                castsShadow: true
//                shadowFactor: 50
//            }

//            SpotLight {
//                visible: isEnabled3
//                z: 300
//            }

            Model {
                source: "#Sphere"
                eulerRotation.y: 30
                materials: PrincipledMaterial {
                    baseColor: "red"
                    metalness: value1
                    roughness: value2
                }
            }
        }
    }
}
