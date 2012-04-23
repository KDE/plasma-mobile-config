FILE(GLOB startactive_modules *.module)
FILE(GLOB startactive_modules_in *.module.in)

SET(inFiles
    kdeinit.module
    lnusertemp-socket.module
    lnusertemp-cache.module
    lnusertemp-tmp.module
    )

set(KDE_ROOT_DIR ${CMAKE_INSTALL_PREFIX})

FOREACH(infileName ${inFiles})
    MESSAGE(STATUS "Process file: ${infileName}")

    configure_file(${infileName}.in "${CMAKE_CURRENT_BINARY_DIR}/${infileName}" @ONLY)

    install(
        FILES "${CMAKE_CURRENT_BINARY_DIR}/${infileName}"
        DESTINATION ${DATA_INSTALL_DIR}/startactive/modules/
        )
ENDFOREACH(infileName)

install(
    FILES ${startactive_modules}
    DESTINATION ${DATA_INSTALL_DIR}/startactive/modules/
)


