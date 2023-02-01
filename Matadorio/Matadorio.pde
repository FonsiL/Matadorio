//Matador spil

class Matador {
  ArrayList[] Spillere;
  int spillersTur;
}

int SlutKastVaerdi;
boolean Buying = false;
int SpillersTur = 1;
int P1 = 0;
int P2 = 0;


ArrayList<Felt> Felter = new ArrayList<Felt>();
ArrayList<Spiller> Spillere = new ArrayList<Spiller>();


void setup() {
  Felter.add(new Start(4000)); //1
  Felter.add(new Gade("1", false, 1000, 75));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("2", false, 1250, 100));
  Felter.add(new Skat(4000)); // 5
  Felter.add(new Faerge("3", false, 4000, 500));
  Felter.add(new Gade("4", false, 1250, 100));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("5", false, 1250, 100));
  Felter.add(new Gade("6", false, 1250, 100)); //10
  Felter.add(new Helle("Faengsel", 0));
  Felter.add(new Gade("7", false, 1250, 100));
  Felter.add(new Sodavand("Squash", false, 3000, 100));
  Felter.add(new Gade("8", false, 1250, 100));
  Felter.add(new Gade("9", false, 1250, 100)); //15
  Felter.add(new Faerge("10", false, 4000, 500));
  Felter.add(new Gade("11", false, 1250, 100));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("12", false, 1250, 100));
  Felter.add(new Gade("13", false, 1250, 100)); //20
  Felter.add(new Helle("Parkering", 4000));
  Felter.add(new Gade("14", false, 1250, 100));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("15", false, 1250, 100));
  Felter.add(new Gade("16", false, 1250, 100)); //25
  Felter.add(new Faerge("17", false, 4000, 500));
  Felter.add(new Gade("18", false, 1250, 100));
  Felter.add(new Gade("19", false, 1250, 100));
  Felter.add(new Sodavand("CocaCola", false, 3000, 100));
  Felter.add(new Gade("20", false, 1250, 100)); //30

  Felter.add(new Gade("21", false, 1250, 100));
  Felter.add(new Gade("22", false, 1250, 100));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("23", false, 1250, 100)); //35
  Felter.add(new Faerge("24", false, 4000, 500));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("25", false, 1250, 100));
  Felter.add(new Skat(4000));
  Felter.add(new Gade("26", false, 1250, 100)); //40

  // println(Felter);





  // println(Spillere);
}

void draw() {
  if (keyPressed
  Spillere.add(new Spiller("Frederik", 30000, P1));
  Spillere.add(new Spiller("Kristian", 30000, P2));
}


void keyPressed() {

  if (Buying == false) {


    if (SpillersTur == 1) {
      if (key == ' ') {
        int Kast1 = int(random(1, 7));
        int Kast2 = int(random(1, 7));
        SlutKastVaerdi = Kast1 + Kast2;

        P1 += SlutKastVaerdi;
        if (P1 >39) {
          P1 -= 39;
        }
                println(Spillere);

        println("P1=" + P1);
        println(SlutKastVaerdi);
 
        //println(elter[P1]);
      } else {
        if (key == ' ') {
          int Kast1 = int(random(1, 7));
          int Kast2 = int(random(1, 7));
          SlutKastVaerdi = Kast1 + Kast2;

          P2 += SlutKastVaerdi;
          if (P2 >39) {
            P2 -= 39;
          }
        }
      }
    }
  }
}
