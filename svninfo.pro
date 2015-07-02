# trying to get svn revision
BUILD_DATE = '\\"$${_DATE_}\\"'

BUILD_REV = $$system(svnversion)
BUILD_REV = $$find(BUILD_REV,'^\\d+')

isEmpty(BUILD_REV) {
    BUILD_REV = '\\"unknown\\"'
}
else {
    BUILD_REV = '\\"$${BUILD_REV}\\"'
}

DEFINES += SVN_DATE=\"$${BUILD_DATE}\"
DEFINES += SVN_REVISION=\"$${BUILD_REV}\"

SOURCES += \
    main.cpp
