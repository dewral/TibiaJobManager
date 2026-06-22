cmake_minimum_required(VERSION 3.16)

project(TibiaJobManager VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)


qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appTibiaJobManager
    main.cpp
)

target_sources(appTibiaJobManager PRIVATE
    app.rc
)

qt_add_qml_module(appTibiaJobManager
    URI TibiaJobManager
    QML_FILES
        Main.qml
        qml/TopBar.qml
        qml/Header.qml
        qml/ContentArea.qml
        qml/TimerRow.qml
        qml/IconButton.qml
        qml/Footer.qml
        qml/TibiaScrollBar.qml
        SOURCES
            source/timermodel.h
            source/timermodel.cpp
    )

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appTibiaJobManager PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appTibiaJobManager
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appTibiaJobManager
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appTibiaJobManager
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
