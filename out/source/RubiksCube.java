import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class RubiksCube extends PApplet {

int dim = 3;
Box[][][] cube = new Box[dim][dim][dim];
public void setup(){
    
    for (int i = 0; i < dim; i++) {
       for (int j = 0; j < dim; j++) {
           for (int k = 0; k < dim; k++) {
               float len =  50;
               float x = len * i;
               float y = len * j;
               float z = len * k;
               cube[i][j][k] = new Box(x, y, z, len);
            }
        } 
    }
}

public void draw(){
    background(51);

    for (int i = 0; i < dim; i++) {
       for (int j = 0; j < dim; j++) {
           for (int k = 0; k < dim; k++) {
               cube[i][j][k].show();
            }
        } 
    }
}
class Box{
    PVector pos;
    float len;

    Box(float x, float y, float z, float side) {
        pos = new PVector(x, y, z);
        len = side;
    }

    public void show(){
        fill(255);
        stroke(0);
        strokeWeight(8);
        pushMatrix();
        translate(pos.x, pos.y, pos.z);
        box(len);
        popMatrix();
    }
}
  public void settings() {  size(600, 600, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "RubiksCube" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
