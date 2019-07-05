import 'package:flutter/material.dart';
import 'presenter.dart';

class View extends PresenterState {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          padding: EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 0),
          color: Colors.transparent,
          height: sizeBoxHeight,
          width: double.infinity,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: GestureDetector(
                  onVerticalDragStart: (drag) {
                    dragStart = drag.globalPosition;
                  },
                  onVerticalDragEnd: (drag) {
                    setState(() {
                      gripColor = widget.gripColorOnFree;
                      if (isExpand) {
                        sizeBoxHeight = widget.maxHeight;
                      } else {
                        sizeBoxHeight =
                            widget.minHeight + widget.extraArea;
                      }
                    });
                  },
                  onVerticalDragDown: (drag) {
                    setState(() {
                      gripColor = widget.gripColorOnDrag;
                    });
                  },
                  onVerticalDragUpdate: (drag) {
                    if (drag.globalPosition.dy > dragStart.dy) {
                      if (sizeBoxHeight >
                          widget.minHeight + widget.extraArea) {
                        setState(() {
                          sizeBoxHeight = sizeBoxHeight -
                              (drag.globalPosition.dy - dragStart.dy);
                          dragStart = drag.globalPosition;
                          sizeBoxHeight =
                              sizeBoxHeight < widget.minHeight
                                  ? widget.minHeight + widget.extraArea
                                  : sizeBoxHeight;
                          isExpand = false;
                        });
                      }
                    } else {
                      if (sizeBoxHeight < widget.maxHeight) {
                        setState(() {
                          sizeBoxHeight = sizeBoxHeight +
                              (dragStart.dy - drag.globalPosition.dy);
                          dragStart = drag.globalPosition;
                          sizeBoxHeight = sizeBoxHeight > sizeBoxHeight
                              ? sizeBoxHeight
                              : sizeBoxHeight;
                          isExpand = true;
                        });
                      }
                    }
                  },
                  child: Container(
                      width: double.infinity,
                      height: widget.minHeight + 30,
                      color: Colors.transparent,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          color: widget.gripBackground,
                          width: double.infinity,
                          height: widget.minHeight,
                          child: Icon(
                            widget.gripIcon,
                            color: gripColor,
                          ),
                        ),
                      )),
                ),
              ),
              Container(
                height: widget.maxHeight -
                    (widget.minHeight + widget.extraArea),
                color: widget.backgroundColor,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: widget.child,
              )
            ],
          )),
    );
  }
}
