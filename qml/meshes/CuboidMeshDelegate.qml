/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt3D Editor of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL-EXCEPT$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 as published by the Free Software
** Foundation with exceptions as appearing in the file LICENSE.GPL3-EXCEPT
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/
import QtQuick 2.4
import com.theqtcompany.Editor3d 1.0

MeshDelegate {
    id: thisDelegate
    componentType: EditorSceneItemComponentsModel.Mesh
    title: qsTr("Cuboid")

    FloatPropertyInputField {
        label: qsTr("X Extent")
        propertyName: "xExtent"
        component: meshComponentData
        componentType: thisDelegate.componentType
        minimum: 0.00001
    }

    FloatPropertyInputField {
        label: qsTr("Y Extent")
        propertyName: "yExtent"
        component: meshComponentData
        componentType: thisDelegate.componentType
        minimum: 0.00001
    }

    FloatPropertyInputField {
        label: qsTr("Z Extent")
        propertyName: "zExtent"
        component: meshComponentData
        componentType: thisDelegate.componentType
        minimum: 0.00001
    }

    SizePropertyInputField {
        label: qsTr("YZ Resolution")
        widthLabel: qsTr("Y")
        heightLabel: qsTr("Z")
        propertyName: "yzMeshResolution"
        component: meshComponentData
        componentType: thisDelegate.componentType
        minimum: 2
    }

    SizePropertyInputField {
        label: qsTr("XZ Resolution")
        widthLabel: qsTr("X")
        heightLabel: qsTr("Z")
        propertyName: "xzMeshResolution"
        component: meshComponentData
        componentType: thisDelegate.componentType
        minimum: 2
    }

    SizePropertyInputField {
        label: qsTr("XY Resolution")
        widthLabel: qsTr("X")
        heightLabel: qsTr("Y")
        propertyName: "xyMeshResolution"
        component: meshComponentData
        componentType: thisDelegate.componentType
        minimum: 2
    }
}
