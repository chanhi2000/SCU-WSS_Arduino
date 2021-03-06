
/*
 *  Sketch: serialEvent.pde
 *  
 *  This sketch manages the serial event.
 */

void playAlert() {
  // Pulse Alert condition
  if (IBI > 1300 || IBI < 260) {
    alertNow = true;
  }
  
  if (BPM > 140 || BPM < 30 ) {
   alertNow = true; 
  }

  // Temperature Alert Condition
  if (temp_c > 40 || temp_c < 29 ) {
    alertNow = true;
  }

  playNow(alertNow);
  alertNow = false;
}


void playNow(boolean trigger) {
  if (trigger) {
    alert.rewind();
    alert.play(200);
  }
}