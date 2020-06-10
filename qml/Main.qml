import Felgo 3.0
import QtQuick 2.0

App {
    id:app
    licenseKey: "6F59C15646182D9A9F37929D5CA9BBB6AEF77B35A052BA2539D349B86C0A2E9AB39D641AFD94E05DCEEF192EA5FA551470B2ABD008B41F7CA5F87836A8C98FCA91B93FA07A182A359FF393B480CAD71C80EAE1D9EEBD3BF2D32B0D06068E5A8841485676F0E57AF30D5CC7BA8987A0201B39DF87B37A691C7412EF3615C641B591667E69F5B0BEB1C87DF80F7DD7DB7DE0CDF6896191F12D0DF878F8CCA2CD8A934C4357E81ABC328854F16EC91AE830A0697E70FEC65256C76AF4DD733E74992965388C123792C0B12DF613451596663C527EB4EC12722EFE32EF5AFF8232956843C3FDA0F1A3C8B78D9C6A5998C2B96E4B7BDA57AB9DE779BFAE4EC0EC32E5B5FB40ADFD589682632C105EDB64A9130CB902194B8034CBEBEAC78B5C53AFE4AADB7E6E34731C9BDABA0B22FC2FF720"


    Navigation {
        // You can try different navigation modes by uncommenting the lines below
        // By default, the mode is chosen depending on the platform. Tabs on iOS, drawer on Android
        //navigationMode: navigationModeDrawer
        //navigationMode: navigationModeTabs

        id: root

        NavigationItem {
            title: "Home"
            icon: IconType.home

            NavigationStack {
                HomePage{

                }
            }
        }

        NavigationItem {
            title: "Second"
            icon: IconType.thlarge

            NavigationStack {
                Page {
                    title: "Second Page"
                }
            }
        }

        NavigationItem {
            title: "Settings"
            icon: IconType.gear

            NavigationStack {
                id: settingPageStack
                SettingPage{

                }
            }

        }
    }

}
