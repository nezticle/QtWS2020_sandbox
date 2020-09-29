import QtQuick 6
import QtQuick3D 6

CustomMaterial {
    property color diffuseColor: "salmon"

    shadingMode: CustomMaterial.Unshaded
    vertexShader: "unshadedmaterial.vert"
    fragmentShader: "unshadedmaterial.frag"
}
