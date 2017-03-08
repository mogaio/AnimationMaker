/****************************************************************************
** Copyright (C) 2016 Olaf Japp
**
** This file is part of AnimationMaker.
**
**  AnimationMaker is free software: you can redistribute it and/or modify
**  it under the terms of the GNU General Public License as published by
**  the Free Software Foundation, either version 3 of the License, or
**  (at your option) any later version.
**
**  AnimationMaker is distributed in the hope that it will be useful,
**  but WITHOUT ANY WARRANTY; without even the implied warranty of
**  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
**  GNU General Public License for more details.
**
**  You should have received a copy of the GNU General Public License
**  along with AnimationMaker.  If not, see <http://www.gnu.org/licenses/>.
**
****************************************************************************/

#ifndef TRANSITIONPANEL_H
#define TRANSITIONPANEL_H

#include <QWidget>
#include <QModelIndex>
#include <QTreeView>
#include "timelinemodel.h"

class TransitionPanel : public QWidget
{
    Q_OBJECT
public:
    TransitionPanel();

    void paintEvent(QPaintEvent*);
    void setModel(TimelineModel *model);
    void setTreeview(QTreeView *tv);

public slots:
    void treeExpanded(QModelIndex);
    void treeCollapsed(QModelIndex);
    void treeScrollValueChanged(int);
    void treeItemAdded();

private:
    int m_scrollPos;
    TimelineModel *m_timelineModel;
    QTreeView *m_treeview;
    QImage m_imageRaute;
    QImage m_imageRauteHohl;
};

#endif // TRANSITIONPANEL_H
