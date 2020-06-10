# allows to add DEPLOYMENTFOLDERS and links to the Felgo library and QtCreator auto-completion
CONFIG += felgo

# uncomment this line to add the Live Client Module and use live reloading with your custom C++ code
# for the remaining steps to build a custom Live Code Reload app see here: https://felgo.com/custom-code-reload-app/
# CONFIG += felgo-live

# Project identifier and version
# More information: https://felgo.com/doc/felgo-publishing/#project-configuration
PRODUCT_IDENTIFIER = com.zlinwei.test
PRODUCT_VERSION_NAME = 1.0
PRODUCT_VERSION_CODE = 1

# Optionally set a license key that is used instead of the license key from
# main.qml file (App::licenseKey for your app or GameWindow::licenseKey for your game)
# Only used for local builds and Felgo Cloud Builds (https://felgo.com/cloud-builds)
# Not used if using Felgo Live
PRODUCT_LICENSE_KEY = "6F59C15646182D9A9F37929D5CA9BBB6AEF77B35A052BA2539D349B86C0A2E9AB39D641AFD94E05DCEEF192EA5FA551470B2ABD008B41F7CA5F87836A8C98FCA91B93FA07A182A359FF393B480CAD71C80EAE1D9EEBD3BF2D32B0D06068E5A8841485676F0E57AF30D5CC7BA8987A0201B39DF87B37A691C7412EF3615C641B591667E69F5B0BEB1C87DF80F7DD7DB7DE0CDF6896191F12D0DF878F8CCA2CD8A934C4357E81ABC328854F16EC91AE830A0697E70FEC65256C76AF4DD733E74992965388C123792C0B12DF613451596663C527EB4EC12722EFE32EF5AFF8232956843C3FDA0F1A3C8B78D9C6A5998C2B96E4B7BDA57AB9DE779BFAE4EC0EC32E5B5FB40ADFD589682632C105EDB64A9130CB902194B8034CBEBEAC78B5C53AFE4AADB7E6E34731C9BDABA0B22FC2FF720"

qmlFolder.source = qml
DEPLOYMENTFOLDERS += qmlFolder # comment for publishing

assetsFolder.source = assets
DEPLOYMENTFOLDERS += assetsFolder

# Add more folders to ship with the application here

RESOURCES += #    resources.qrc # uncomment for publishing

# NOTE: for PUBLISHING, perform the following steps:
# 1. comment the DEPLOYMENTFOLDERS += qmlFolder line above, to avoid shipping your qml files with the application (instead they get compiled to the app binary)
# 2. uncomment the resources.qrc file inclusion and add any qml subfolders to the .qrc file; this compiles your qml files and js files to the app binary and protects your source code
# 3. change the setMainQmlFile() call in main.cpp to the one starting with "qrc:/" - this loads the qml files from the resources
# for more details see the "Deployment Guides" in the Felgo Documentation

# during development, use the qmlFolder deployment because you then get shorter compilation times (the qml files do not need to be compiled to the binary but are just copied)
# also, for quickest deployment on Desktop disable the "Shadow Build" option in Projects/Builds - you can then select "Run Without Deployment" from the Build menu in Qt Creator if you only changed QML files; this speeds up application start, because your app is not copied & re-compiled but just re-interpreted


# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp


android {
    ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
    OTHER_FILES += android/AndroidManifest.xml       android/build.gradle
}

ios {
    QMAKE_INFO_PLIST = ios/Project-Info.plist
    OTHER_FILES += $$QMAKE_INFO_PLIST
}

# set application icons for win and macx
win32 {
    RC_FILE += win/app_icon.rc
}
macx {
    ICON = macx/app_icon.icns
}

DISTFILES += \
    qml/HomePage.qml \
    qml/SettingPage.qml
