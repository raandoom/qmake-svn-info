# trying to get svn revision
exists($$PWD/.svn/entries) {
    # read lines from entries
    TEMP = $$cat($$PWD/.svn/entries, lines)
    if(count(TEMP, 20, <)) {
        # if entries file not enough
        BUILD_DATE = '\\"$${_DATE_}\\"'
        BUILD_REV = '\\"unknown\\"'
    } else {
        #        message($$member(TEMP,14))  # date
        #        message($$member(TEMP,16))  # revision
        #        message($$member(TEMP,18))  # name
        BUILD_DATE = '\\"$$member(TEMP,14)\\"'
        BUILD_REV = '\\"$$member(TEMP,16)\\"'
    }
} else {
    # if entries not exist
    BUILD_DATE = '\\"$${_DATE_}\\"'
    BUILD_REV = '\\"unknown\\"'
}
DEFINES += SVN_DATE=\"$${BUILD_DATE}\"
DEFINES += SVN_REVISION=\"$${BUILD_REV}\"

SOURCES += \
    main.cpp
