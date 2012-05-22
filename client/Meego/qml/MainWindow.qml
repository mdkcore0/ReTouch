/**
 * Copyright (C) 2012 by Rodrigo Goncalves de Oliveira
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 *
 * @author Rodrigo Goncalves de Oliveira <rodrigo.goncalves@openbossa.org>
 */

import QtQuick 1.1

Item {
    id: root

    // for landscape
    //width: 854
    //height: 480
    // for portrait
    width: 480
    height: 854

    Rectangle {
        anchors.fill: parent
        color: "black"
    }

    TouchArea {
        id: touch

        color: "black"
        border.color: "#00eca1"
        border.width: 2
        radius: border.width

        anchors {
            top: parent.top
            topMargin: 10
            left: parent.left
            leftMargin: 10
            right: parent.right
            rightMargin: 10
            bottom: left.top
            bottomMargin: 10
        }

        onPressed: {
            console.log("Mouse press at:", mouse.x, mouse.y);
        }

        onReleased: {
            console.log("Mouse release at:", mouse.x, mouse.y);
        }

        onDoubleClicked: {
            console.log("Mouse double click at:", mouse.x, mouse.y);
        }

        onPositionChanged: {
            console.log("Position changed:", mouse.x, mouse.y);
        }
    }

    Button {
        id: left

        width: (root.width / 2) - 20
        height: root.height * 0.1

        color: touch.color
        border.color: touch.border.color
        border.width: touch.border.width
        radius: touch.radius

        anchors {
            bottom: parent.bottom
            bottomMargin: 10
            left: parent.left
            leftMargin: 10
        }

        onPressed: {
            console.log("Left pressed");
        }

        onReleased: {
            console.log("Left released");
        }

        onDoubleClicked: {
            console.log("Left double clicked");
        }
    }

    Button {
        id: right

        width: left.width
        height: left.height

        color: touch.color
        border.color: touch.border.color
        border.width: touch.border.width
        radius: touch.radius

        anchors {
            bottom: parent.bottom
            bottomMargin: 10
            right: parent.right
            rightMargin: 10
        }

        onPressed: {
            console.log("Right pressed");
        }

        onReleased: {
            console.log("Right released");
        }
    }
}
