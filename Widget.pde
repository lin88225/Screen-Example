class Widget {
  float x, y, size;
  int fillColour;
  String buttonText;

  Widget(float x, float y, float size, int fillColour, String buttonText) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.fillColour = fillColour;
    this.buttonText = buttonText;
  }

  void draw(boolean showText, String textToShow) {
    noStroke();
    fill(fillColour);
    rect(x, y, 2 * size, size);

    if (showText == true) {
      fill(255);
      textAlign(CENTER, CENTER);
      text(buttonText, x + size, y + size / 2);
      fill(0);
    }
  }

  boolean isPressed(float mouseX, float mouseY) {
    return mouseX >= x && mouseX <= x + 2 * size && mouseY >= y && mouseY <= y + size;
  }

  String getButtonText() {
    return buttonText;
  }
}void mousePressed() {
  Widget pressedWidget = null;

  if (currentScreen == 1) {
    pressedWidget = screen1.getEvent(mouseX, mouseY);
  } else if (currentScreen == 2) {
    pressedWidget = screen2.getEvent(mouseX, mouseY);
  }

  if (pressedWidget != null) {
    if (pressedWidget == button1Screen1 || pressedWidget == button1Screen2) {
      currentScreen = (currentScreen % 2) + 1;
    } else if (pressedWidget == button2Screen1 || pressedWidget == button2Screen2) {
      currentScreen = (currentScreen - 2 + 3) % 2 + 1;

      if (pressedWidget == button2Screen1 || pressedWidget == button2Screen2) {
        
        if (currentScreen == 1) {
          visibleText = 2;
        } else if (currentScreen == 2) {
          visibleText = 3;
        }
      }
    }
  }
}
