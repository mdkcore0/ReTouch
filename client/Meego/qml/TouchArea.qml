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

Rectangle {
    id: root

    border.color: "black"
    color: "white"
    //smooth: true

    signal pressed(variant mouse);
    signal released(variant mouse);
    signal doubleClicked(variant mouse);
    signal positionChanged(variant mouse);

    MouseArea {
        anchors.fill: parent

        onPressed: root.pressed(mouse)
        onReleased: root.released(mouse)
        onDoubleClicked: root.doubleClicked(mouse)
        onPositionChanged: root.positionChanged(mouse)
    }
}
