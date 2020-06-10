import QtQuick 2.0
import Felgo 3.0

/*

// EXAMPLE USAGE:
// add the following piece of code inside your App { } to display the List Page

SettingPage {

}

*/
Page {
    title: "Basic List Example"

    property var listData: [
        {
            text: "Apple",
            detailText: "A delicious fruit with round shape",
            icon: IconType.apple
        },

        {
            text: "Beer",
            detailText: "A delicous drink",
            icon: IconType.beer
        }
    ]

    AppListView {
        id: listView
        model: page.listData
        delegate: SimpleRow {
            onSelected: {
//                page.listData.push(modelData) // add copy of clicked element at end of model
//                page.listDataChanged() // signal change of data to update the list
                settingPageStack.push(subPage)
            }
        }
    }

    Component {
        id: subPage
        Page {
            title: "Sub Page"

        }


    }
}



