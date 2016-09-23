String[] nombre = {
  "Laboratorio",
  "casero Sánchez ",
  "y Rodríguez"};
float[] nombreWidth;
PFont sobria, extravagante;
int fontsize;

void setup() {
  size(320, 200);
  sobria = loadFont("SerreriaSobria-24.vlw");
  int size;
  for (size = 1; size < 2000; size++) {
    textFont(sobria, size);
    int i;
    for (i = 0; i < nombre.length; i++) {
      if (textWidth(nombre[i]) >  width) {
        break;
      }
    }
    if (i != nombre.length) {
      break; 
    }
    
    if (textWidth(nombre[0]) > .9 * width) {
      break;
    }
  }
  fontsize = size - 1;  
  println(fontsize);
  textFont(sobria, fontsize);
  nombreWidth = new float[nombre.length];
  for (int i = 0; i < nombreWidth.length; i++) {
    nombreWidth[i] = textWidth(nombre[i]);
  }

  color color11 = color(0, 234, 97);
  color color7 = color(255, 243, 236);
  color color3 = color(0, 146, 91);
  background(color7);
  textFont(sobria, fontsize);
  stroke(color3);
  fill(color3);
  float x = .5 * ( width - max(nombreWidth));
  float y = .5 * height - (nombre.length * .5 - 1) * fontsize;
  line (x, y - fontsize, max(nombreWidth) + x, y - fontsize);
  line (x, y + 1.05 * fontsize * (nombre.length-1), max(nombreWidth) + x, y + 1.05 * fontsize  * (nombre.length-1));
  for (int i = 0; i < nombre.length; i++) {
    text(nombre[i], x + (max(nombreWidth) - nombreWidth[i]) *.5, y + i * fontsize);
  }
  
  noLoop();
  save("logo.png");
}