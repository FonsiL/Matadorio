//Matador spil

class Matador {
  ArrayList[] Spillere;
  int spillersTur;
}

class Spiller {
  String SpillerNavn;
  double KontoBalance;
  int FeltNr;
}

void setup() {
  ArrayList<Felt> Felter = new ArrayList<Felt>();
  Felter.add(new Start(4000)); //1
  Felter.add(new Gade("FredreiksGade", false, 1000, 75));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Skat(4000)); // 5
  Felter.add(new Færge("FredreiksGade", false, 4000, 500));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100)); //10
  Felter.add(new Helle("Fængsel", 0));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Sodavand("Squash", false, 3000, 100));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100)); //15
  Felter.add(new Færge("FredreiksGade", false, 4000, 500));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100)); //20
  Felter.add(new Helle("Parkering", 4000));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100)); //25
  Felter.add(new Færge("FredreiksGade", false, 4000, 500));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Sodavand("CocaCola", false, 3000, 100));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100)); //30

  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100)); //35
  Felter.add(new Færge("FredreiksGade", false, 4000, 500));
  Felter.add(new Lykken(int(random(1, 4))));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100));
  Felter.add(new Skat(4000));
  Felter.add(new Gade("FredreiksGade", false, 1250, 100)); //40

  println(Felter);
}

void draw() {
}


/*

 String infoString(String indryk) {
 StringBuilder str = new StringBuilder();
 str.append(indryk+"class" + "/n");
 str.append(indryk+"variabel" + variabel + "/n");
 
 return str.toString();
 }
 */
