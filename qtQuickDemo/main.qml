//import related modules
import QtQuick 2.12
import QtQuick.Controls 2.12

//应用程序窗口
ApplicationWindow {
    //是否看见
    visible: true

    //应用程序名称
    title: qsTr("Hello World")
    width: 640
    height: 480

    //菜单栏，包括两个子菜单
    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                //触发事件——控制台打印信息
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                //触发事件——退出程序
                onTriggered: Qt.quit();
            }
        }
    }

    /*内容区域*/
    //内容区域中间的一个按钮
    Button {
        text: qsTr("Hello World")
        //按钮位置设置
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
    Column {
        width: 180
        height: 180
        padding: 1.5
        topPadding: 10.0
        bottomPadding: 10.0
        spacing: 5

        MessageLabel{
            width: parent.width - 2
            msgType: "debug"
        }
        MessageLabel {
            width: parent.width - 2
            message: "This is a warning!"
            msgType: "warning"
        }
        MessageLabel {
            width: parent.width - 2
            message: "A critical warning!"
            msgType: "critical"
        }
    }

}
