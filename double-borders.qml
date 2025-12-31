/*
 *   SPDX-FileCopyrightText: 2025 Brent Spillner <s p i l l n e r @ acm.org>
 *
 *   SPDX-License-Identifier: BSD
 *
 *   Use this file to force a dark outer border, similar to the Sinden utility for Windows.
 */

import QtQuick
import org.kde.layershell 1.0 as LayerShell

Item
{
    property color outer_fill_color: "black"
    property color border_fill_color: "white"
    property int border_thickness: 24
    property int outer_thickness: border_thickness / 2

    Text {
        width: 400
        height: 200
        anchors.centerIn: parent
        text: "Minimize me to see desktop, close me to exit screen_borders utility"
        wrapMode: Text.WordWrap
    }

    Window {
        LayerShell.Window.anchors: LayerShell.Window.AnchorTop
        LayerShell.Window.layer: LayerShell.Window.LayerOverlay
        LayerShell.Window.exclusionZone: outer_thickness + border_thickness
//        LayerShell.Window.scope: "normal"
        visible: true
        width: Screen.width
        height: outer_thickness + border_thickness
        color: "#00000000"

        Rectangle {
            id: top_outer
            anchors.top: parent.top
            height: outer_thickness
            width: parent.width
            color: outer_fill_color
        }

        Rectangle {
            id: top_inner
            anchors.top: top_outer.bottom
            anchors.horizontalCenter: top_outer.horizontalCenter
            height: border_thickness
            width: parent.width - 2 * outer_thickness
            color: border_fill_color
        }
    }

    Window {
        LayerShell.Window.anchors: LayerShell.Window.AnchorBottom
        LayerShell.Window.layer: LayerShell.Window.LayerOverlay
        LayerShell.Window.exclusionZone: outer_thickness + border_thickness
//        LayerShell.Window.scope: "normal"
        visible: true
        width: Screen.width
        height: outer_thickness + border_thickness
        color: "#00000000"

        Rectangle {
            id: bottom_outer
            anchors.bottom: parent.bottom
            height: outer_thickness
            width: parent.width
            color: outer_fill_color
        }

        Rectangle {
            id: bottom_inner
            anchors.bottom: bottom_outer.top
            anchors.horizontalCenter: bottom_outer.horizontalCenter
            height: border_thickness
            width: parent.width - 2 * outer_thickness
            color: border_fill_color
        }
    }

    Window {
        LayerShell.Window.anchors: LayerShell.Window.AnchorLeft
        LayerShell.Window.layer: LayerShell.Window.LayerOverlay
        LayerShell.Window.exclusionZone: outer_thickness + border_thickness
//        LayerShell.Window.scope: "normal"
        visible: true
        width: outer_thickness + border_thickness
        height: Screen.height
        color: "#00000000"

        Rectangle {
            id: left_outer
            anchors.left: parent.left
            width: outer_thickness
            height: parent.height
            color: outer_fill_color
        }

        Rectangle {
            id: left_inner
            anchors.left: left_outer.right
            anchors.verticalCenter: left_outer.verticalCenter
            width: border_thickness
            height: parent.height - 2 * outer_thickness
            color: border_fill_color
        }
    }

    Window {
        LayerShell.Window.anchors: LayerShell.Window.AnchorRight
        LayerShell.Window.layer: LayerShell.Window.LayerOverlay
        LayerShell.Window.exclusionZone: outer_thickness + border_thickness
//        LayerShell.Window.scope: "normal"
        visible: true
        width: outer_thickness + border_thickness
        height: Screen.height
        color: "#00000000"

        Rectangle {
            id: right_outer
            anchors.right: parent.right
            width: outer_thickness
            height: parent.height
            color: outer_fill_color
        }

        Rectangle {
            id: right_inner
            anchors.right: right_outer.left
            anchors.verticalCenter: right_outer.verticalCenter
            width: border_thickness
            height: parent.height - 2 * outer_thickness
            color: border_fill_color
        }
    }
}

