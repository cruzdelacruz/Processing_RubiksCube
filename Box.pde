class Box{
    PVector pos;
    float len;

    Box(float x, float y, float z, float side) {
        pos = new PVector(x, y, z);
        len = side;
    }

    void show(){
        fill(255);
        stroke(0);
        strokeWeight(8);
        pushMatrix();
        translate(pos.x, pos.y, pos.z);
        box(len);
        popMatrix();
    }
}