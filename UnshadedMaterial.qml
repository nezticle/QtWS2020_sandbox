import QtQuick 6
import QtQuick3D 6

CustomMaterial {
    shadingMode: CustomMaterial.Unshaded
    vertexShader: "unshadedmaterial.vert"
    fragmentShader: "unshadedmaterial.frag"
}
