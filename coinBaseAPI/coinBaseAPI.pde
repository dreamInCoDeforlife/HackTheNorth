boolean overButton = false;

void setup() {
  size(640, 360);
}

void draw() {
  background(255, 255, 255);

  if (overButton == true) {
    fill(51, 153, 255);
  } else {
    noFill();
  }
  rect(40, 60, 560, 240);
  String coinbaseButtonText = "Click to pay with coinbase";
  textSize(32);
  text(coinbaseButtonText, 80, 120, 480, 240);
 
}

void mousePressed() {
  if (overButton) { 
    link("https://www.coinbase.com/oauth/authorize/oauth_signin?client_id=9e44ee4618db6a4c3eeb139797b9c927094cfb0f850f02a6df5612dd2d01bfc9&meta%5Bsend_limit_amount%5D=1.00&meta%5Bsend_limit_currency%5D=USD&meta%5Bsend_limit_period%5D=month&redirect_uri=https%3A%2F%2Fcoinbase.com%2Foauth%2Fjavascript_sdk_redirect&response_type=code&scope=send");
  } 
}

void mouseMoved() { 
  checkButtons(); 
}
  
void mouseDragged() {
  checkButtons(); 
}

void checkButtons() {
  if (mouseX > 40 && mouseX < 600 && mouseY > 60 && mouseY < 300) {
    overButton = true;   
  } 
  else {
    overButton = false;
  }
}