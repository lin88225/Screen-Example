class Screen {
  ArrayList<Widget> widgets;
  int bgColour;

  Screen(int bgColour) {
    this.bgColour = bgColour;
    widgets = new ArrayList<Widget>();
  }

  void addWidget(Widget widget) {
    widgets.add(widget);
  }

  Widget getEvent(float mouseX, float mouseY) {
    for (Widget widget : widgets) {
      if (widget.isPressed(mouseX, mouseY)) {
        return widget;
      }
    }
    return null;
  }

  void draw(boolean showText, String textToShow) {
    background(bgColour);
    for (Widget widget : widgets) {
      widget.draw(showText, textToShow);
    }
  }
}
