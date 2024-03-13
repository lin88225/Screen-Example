import java.util.ArrayList;

Screen screen1, screen2;
Widget button1Screen1, button2Screen1, button1Screen2, button2Screen2;
int currentScreen = 1;
int visibleText = 0;

void setup() {
  size(400, 400);

  screen1 = new Screen(color(235, 250, 247)); // cold grey
  screen2 = new Screen(color(232, 222, 220)); // warm grey

  button1Screen1 = new Widget(width / 2 - 50, 100, 50, color(255, 92, 92), "Forward"); // red
  button2Screen1 = new Widget(width / 2 - 50, 220, 50, color(92, 255, 92), "Button 1"); // green

  button1Screen2 = new Widget(width / 2 - 50, 100, 50, color(92, 92, 255), "Backward"); // blue
  button2Screen2 = new Widget(width / 2 - 50, 220, 50, color(250, 113, 67), "Button 2"); // yellow

  screen1.addWidget(button1Screen1);
  screen1.addWidget(button2Screen1);

  screen2.addWidget(button1Screen2);
  screen2.addWidget(button2Screen2);
}

void draw() {
  if (currentScreen == 1) {
    screen1.draw(true, "");
  } else if (currentScreen == 2) {
    screen2.draw(true, "");
  }
  
  if (visibleText == 2){
    text("Button text", 50, 100);
  } else if (visibleText == 3){
    text("More button text", 50, 100);
  }
}
