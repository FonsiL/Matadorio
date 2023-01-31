//Matador spil
void setup(){
  ArrayList<Felt> Felter = new ArrayList<Felt>();
  Felter.add(new Start(4000));
  
  
  println(Felter[0]);
}

void draw(){
  
}



class Matador {
  
  ArrayList[] Spillere;
  int spillersTur;
}


class Spiller {
  String SpillerNavn;
  double KontoBalance;
  int FeltNr;
}

class Felt {
  String FeltNavn;
}

class Helle extends Felt {
  double Gevinst = 4000;
}

class Start extends Felt {
  double Gevinst = 4000;
}

class Færge extends Felt {
  boolean Ejer = false;
  double Pris = 4000;
  double Grundleje = 500;
}

class Gade extends Felt {
  String GadeNavn;
  boolean Ejer = false;
  double Pris = 4000;
  double Grundleje = 500;
}
