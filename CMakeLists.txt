project(plasma-mobile-config)
cmake_minimum_required (VERSION 2.8)

find_package(KDE4 REQUIRED)

include(KDE4Defaults)

add_definitions (${QT_DEFINITIONS} ${KDE4_DEFINITIONS})

set(KDE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

include_directories(
   ${CMAKE_SOURCE_DIR}
   ${CMAKE_BINARY_DIR}
   ${KDE4_INCLUDES}
   )

configure_file(
    profile.d/activeqmlimportpath.sh.cmake
    ${CMAKE_CURRENT_BINARY_DIR}/profile.d/activeqmlimportpath.sh
)
configure_file(
    profile.d/disablecursors.sh.cmake
    ${CMAKE_CURRENT_BINARY_DIR}/profile.d/disablecursors.sh
)

install(DIRECTORY appconfig/ DESTINATION ${CONFIG_INSTALL_DIR})
install(DIRECTORY skel/dotkde/ DESTINATION /etc/skel/.kde)
install(DIRECTORY skel/dotconfig/ DESTINATION /etc/skel/.config)
#install(DIRECTORY profile.d/*.sh DESTINATION /etc/profile.d/)
install(DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/profile.d DESTINATION /etc/ PATTERN .cmake EXCLUDE)
