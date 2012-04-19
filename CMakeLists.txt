project(plasma-mobile-config)
cmake_minimum_required (VERSION 2.8)

find_package(KDE4 REQUIRED)

include(KDE4Defaults)

add_definitions (${QT_DEFINITIONS} ${KDE4_DEFINITIONS})


include_directories(
   ${CMAKE_SOURCE_DIR}
   ${CMAKE_BINARY_DIR}
   ${KDE4_INCLUDES}
   )

install(DIRECTORY appconfig/ DESTINATION ${CONFIG_INSTALL_DIR})
install(DIRECTORY skel/ DESTINATION /etc/skel/.kde/share/config)
install(FILES setup-kde-skel.sh DESTINATION ${KDE4_BIN_INSTALL_DIR})
