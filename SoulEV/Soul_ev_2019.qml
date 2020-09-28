import QtQuick
import QtQuick3D
Node {
    id: kia_Soul_EV_2019_high
    Model {
        id: body_high
        source: "meshes/body_high.mesh"

        PrincipledMaterial {
            id: carpaint_material
            baseColor: "#ffa1a79e"
            roughness: 0.384091
        }

        PrincipledMaterial {
            id: black_material
            baseColor: "#ff030303"
            metalness: 0
            roughness: 0.349488
        }

        PrincipledMaterial {
            id: mirror_material
            baseColor: "#ff778986"
        }

        PrincipledMaterial {
            id: chrome_material
            baseColor: "#ff898989"
            roughness: 0.3811
        }

        PrincipledMaterial {
            id: redglass_material
            baseColor: "#4d6e0c0c"
            metalness: 0.2
            alphaMode: PrincipledMaterial.Blend
        }
        materials: [
            carpaint_material,
            black_material,
            mirror_material,
            chrome_material,
            redglass_material
        ]
    }
    Model {
        id: glass_high
        source: "meshes/glass_high.mesh"

        PrincipledMaterial {
            id: orangeglass_material
            baseColor: "#4cbc4b00"
            metalness: 0.2
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: clearglass_material
            baseColor: "#33969696"
            metalness: 0.2
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: darkglass_material
            baseColor: "#80282828"
            metalness: 0.2
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: windowglass_material
            baseColor: "#4c12221d"
            metalness: 0.2
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }
        materials: [
            orangeglass_material,
            clearglass_material,
            redglass_material,
            darkglass_material,
            windowglass_material,
            chrome_material
        ]
    }
    Model {
        id: interior_high
        source: "meshes/interior_high.mesh"

        PrincipledMaterial {
            id: interior_001_material
            baseColor: "#ff656565"
            roughness: 0.858579
        }
        materials: [
            interior_001_material
        ]
    }
    Model {
        id: wheel_back_left_high
        source: "meshes/wheel_back_left_high.mesh"

        PrincipledMaterial {
            id: tire_material
            baseColor: "#ff000000"
            metalness: 0
            roughness: 0.734981
        }

        PrincipledMaterial {
            id: brakedisk_material
            baseColor: "#ff7e7e7e"
            roughness: 0.792947
            cullMode: Material.NoCulling
        }

        PrincipledMaterial {
            id: rim_second_material
            baseColor: "#ff2a2a2a"
            roughness: 0.8
        }

        PrincipledMaterial {
            id: rim_material
            baseColor: "#ff606060"
            roughness: 0.234091
        }
        materials: [
            black_material,
            tire_material,
            brakedisk_material,
            chrome_material,
            rim_second_material,
            rim_material
        ]
    }
    Model {
        id: wheel_back_right_high
        source: "meshes/wheel_back_right_high.mesh"
        materials: [
            black_material,
            tire_material,
            brakedisk_material,
            rim_material,
            chrome_material,
            rim_second_material
        ]
    }
    Model {
        id: wheel_front_left_high
        source: "meshes/wheel_front_left_high.mesh"
        materials: [
            tire_material,
            black_material,
            brakedisk_material,
            chrome_material,
            rim_second_material,
            rim_material
        ]
    }
    Model {
        id: wheel_front_right_high
        source: "meshes/wheel_front_right_high.mesh"
        materials: [
            tire_material,
            brakedisk_material,
            black_material,
            rim_material,
            chrome_material,
            rim_second_material
        ]
    }
}
