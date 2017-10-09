#    Copyright (C) 2017 Olaf Japp
#    https://facebook.com/artanidos
#
#    This file is part of AnimationMaker.
#
#    AnimationMaker is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    AnimationMaker is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with AnimationMaker.  If not, see <http://www.gnu.org/licenses/>.

QT       += widgets testlib xml svg

TARGET = Widgets
TEMPLATE = lib
DEFINES += WIDGETS_LIBRARY
DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    flatbutton.cpp \
    resizeableitem.cpp \
    itemhandle.cpp \
    keyframe.cpp \
    animationscene.cpp \
    commands.cpp \
    timeline.cpp \
    playhead.cpp \
    transitionpanel.cpp \
    transitionline.cpp \
    ellipse.cpp \
    rectangle.cpp \
    text.cpp \
    vectorgraphic.cpp \
    bitmap.cpp \
    plugins.cpp
    

HEADERS +=\
    widgets_global.h \
    flatbutton.h \
    resizeableitem.h \
    itemhandle.h \
    keyframe.h \
    animationscene.h \
    commands.h \
    timeline.h \
    playhead.h \
    transitionpanel.h \
    transitionline.h \
    ellipse.h \
    rectangle.h \
    text.h \
    vectorgraphic.h \
    bitmap.h \
    plugins.h \
    ../interfaces.h
    
unix {
    target.path = /usr/lib
    INSTALLS += target
}