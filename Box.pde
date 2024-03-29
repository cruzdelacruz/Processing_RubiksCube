class Cubie{
    PVector pos;
    float len;

    Cubie(float x, float y, float z, float side) {
        pos = new PVector(x, y, z);
        len = side;
    }

    void show(){
        fill(255);
        stroke(0);
        strokeWeight(8);
        pushMatrix();
        translate(pos.x, pos.y, pos.z);
        beginShape(QUADS);
        float r = len / 2;

        // z-fixed
        fill(colors[BCK]);
        vertex(-r, -r, -r);
        vertex(r, -r, -r);
        vertex(r, r, -r);
        vertex(-r, r, -r);

        fill(colors[FRT]);
        vertex(-r, -r, r);
        vertex(r, -r, r);
        vertex(r, r, r);
        vertex(-r, r, r);

        // y-fixed
        fill(colors[DWN]);
        vertex(-r, -r, -r);
        vertex(r, -r, -r);
        vertex(r, -r, r);
        vertex(-r, -r, r);

        fill(colors[UPP]);
        vertex(-r, r, -r);
        vertex(r, r, -r);
        vertex(r, r, r);
        vertex(-r, r, r);

        // x-fixed
        fill(colors[LFT]);
        vertex(-r, -r, -r);
        vertex(-r, r, -r);
        vertex(-r, r, r);
        vertex(-r, -r, r);

        fill(colors[RGT]);
        vertex(r, -r, -r);
        vertex(r, r, -r);
        vertex(r, r, r);
        vertex(r, -r, r);

        endShape();
        
        //box(len);
        popMatrix();
    }
}