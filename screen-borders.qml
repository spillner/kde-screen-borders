/*
 *   SPDX-FileCopyrightText: 2025 Brent Spillner <s p i l l n e r @ acm.org>
 *
 *   SPDX-License-Identifier: BSD
 */

import QtQuick
import org.kde.layershell 1.0 as LayerShell

Item
{
    property color border_fill_color: "white"
    property int border_thickness: 16

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
        LayerShell.Window.exclusionZone: border_thickness
//        LayerShell.Window.scope: "normal"
        visible: true
        width: Screen.width
        height: border_thickness

        Rectangle {
	     anchors.fill: parent
             color: border_fill_color
        }
    }

    Window {
        LayerShell.Window.anchors: LayerShell.Window.AnchorBottom
        LayerShell.Window.layer: LayerShell.Window.LayerOverlay
        LayerShell.Window.exclusionZone: border_thickness
//        LayerShell.Window.scope: "normal"
        visible: true
        width: Screen.width
        height: border_thickness

        Rectangle {
	     anchors.fill: parent
             color: border_fill_color
        }
    }

    Window {
        LayerShell.Window.anchors: LayerShell.Window.AnchorLeft
        LayerShell.Window.layer: LayerShell.Window.LayerOverlay
        LayerShell.Window.exclusionZone: border_thickness
//        LayerShell.Window.scope: "normal"
        visible: true
        width: border_thickness
        height: Screen.height

        Rectangle {
	     anchors.fill: parent
             color: border_fill_color
        }
    }

    Window {
        LayerShell.Window.anchors: LayerShell.Window.AnchorRight
        LayerShell.Window.layer: LayerShell.Window.LayerOverlay
        LayerShell.Window.exclusionZone: border_thickness
//        LayerShell.Window.scope: "normal"
        visible: true
        width: border_thickness
        height: Screen.height

        Rectangle {
	     anchors.fill: parent
             color: border_fill_color
        }
    }
}

