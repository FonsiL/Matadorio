//Matador spil
/*
class Matador {
 ArrayList[] Spillere;
 int spillersTur;
 }
 */
int SlutKastVaerdi;
boolean Buying = false;
int SpillersTur = 1;
int P1 = 0;
int P2 = 0;
int K1 = 30000;
int K2 = 30000;

//ArrayList<Felt> Felter = new ArrayList<Felt>();
//ArrayList<Spiller> Spillere = new ArrayList<Spiller>();
  Spiller[] Spillere =new Spiller[2];

void setup() {

/*
  Felter.add(new Start(4000)); //1
  Felter.add(new Gade("1", 0, 1000, 75));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("2", 0, 1250, 100));
  Felter.add(new Skat(4000)); // 5
  Felter.add(new Faerge("3", 0, 4000, 500));
  Felter.add(new Gade("4", 0, 1250, 100));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("5", 0, 1250, 100));
  Felter.add(new Gade("6", 0, 1250, 100)); //10
  Felter.add(new Helle("Faengsel"));
  Felter.add(new Gade("7", 0, 1250, 100));
  Felter.add(new Sodavand("Squash", 0, 3000, 100));
  Felter.add(new Gade("8", 0, 1250, 100));
  Felter.add(new Gade("9", 0, 1250, 100)); //15
  Felter.add(new Faerge("10", 0, 4000, 500));
  Felter.add(new Gade("11", 0, 1250, 100));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("12", 0, 1250, 100));
  Felter.add(new Gade("13", 0, 1250, 100)); //20
  Felter.add(new Helle("Parkering"));
  Felter.add(new Gade("14", 0, 1250, 100));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("15", 0, 1250, 100));
  Felter.add(new Gade("16", 0, 1250, 100)); //25
  Felter.add(new Faerge("17", 0, 4000, 500));
  Felter.add(new Gade("18", 0, 1250, 100));
  Felter.add(new Gade("19", 0, 1250, 100));
  Felter.add(new Sodavand("CocaCola", 0, 3000, 100));
  Felter.add(new Gade("20", 0, 1250, 100)); //30

  Felter.add(new Gade("21", 0, 1250, 100));
  Felter.add(new Gade("22", 0, 1250, 100));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("23", 0, 1250, 100)); //35
  Felter.add(new Faerge("24", 0, 4000, 500));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("25", 0, 1250, 100));
  Felter.add(new Skat(4000));
  Felter.add(new Gade("26", 0, 1250, 100)); //40
*/
  // println(Felter);
}

void draw() {
  Spillere[0] = new Spiller("Niels", K1, P1);
  Spillere[1] = new Spiller("Kristian", K2, P2);
          println(Spillere[0]);
        println(Spillere.length);
       // println(Felter.get(P1));
       // println(Felter.get(P1).getEjer());

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
            K2 += 4000;
          }
        }
      }
    }
  }
} 
