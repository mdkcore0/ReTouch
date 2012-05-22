CONFIG += qt

contains(QT_VERSION, ^5.*) QT += quick
else: QT += declarative

TEMPLATE = app

SOURCES += src/main.cpp
HEADERS +=

RESOURCES += resources.qrc
