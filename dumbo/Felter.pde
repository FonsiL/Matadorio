public class Felt {
  String FeltNavn;
  void landet(int SpillersTur) {
  }
  
}

public class Helle extends Felt {
  String HelleNavn;
  Helle(String HelleNavn) {
    this.HelleNavn = HelleNavn;
  }
  String toString() {
    return infoString("");
  }
  String infoString(String indryk) {
    StringBuilder str = new StringBuilder();
    str.append(indryk+"HelleFelt " + "\n");
    str.append(indryk+"HelleNavn- " + HelleNavn + "\n" + "\n");

    return str.toString();
  }
  void landet(int SpillersTur) {
  }
}

public class Skat extends Felt {
  double Straf;
  Skat(double Straf) {
    this.Straf = Straf;
  }
  String toString() {
    return infoString("");
  }
  String infoString(String indryk) {
    StringBuilder str = new StringBuilder();
    str.append(indryk+"Skat- " + "\n");
    str.append(indryk+"Straf- " + Straf + "\n" + "\n");
    return str.toString();
  }
  void landet(int SpillersTur) {
    if (SpillersTur == 1) {
      K1 -= 4000;
    } else {
      K2 -= 4000;
    }
  }
}

public class Lykken extends Felt {
  int Kort;
  Lykken(int Kort) {
    this.Kort = Kort;
  }
  String toString() {
    return infoString("");
  }
  String infoString(String indryk) {
    StringBuilder str = new StringBuilder();
    str.append(indryk+"Proev Lykken- " + "\n");
    str.append(indryk+"Kort- " + Kort + "\n" + "\n");
    return str.toString();
  }
  void landet(int SpillersTur) {
    println("Lykken");
    if (Kort==1) {
      if (SpillersTur == 1) {
        K1+=500;
      } else {
        K2+= 500;
      }
      println("Tillykke du har vundet '500kr' i lotto");
    } else if (Kort == 2) {
      if (SpillersTur == 1) {
        K1+=1000;
      } else {
        K2+= 1000;
      }
      println("Tillykke du har vundet '1000kr' i lotto");
    } else if (Kort == 3) {
      if (SpillersTur == 1) {
        K1+=2000;
      } else {
        K2+= 2000;
      }
      println("Tillykke du har vundet '2000kr' i lotto");
    }
  }
}

public class Start extends Felt {
  double Gevinst;
  Start(double Gevinst) {
    this.Gevinst = Gevinst;
  }
  String toString() {
    return infoString("");
  }
  String infoString(String indryk) {
    StringBuilder str = new StringBuilder();
    str.append(indryk+"Start- " + "\n");
    str.append(indryk+"Gevinst- " + Gevinst + "\n" + "\n");
    return str.toString();
  }
  void landet (int SpillersTur) {
    println("Start");
  }
}
/*
public class Faengsel extends Felt {
  String FaengselsNavn;
  Start(String FaengselsNavn){
    this.FaengselsNavn=FaengselsNavn;
  }
  // float
  void landet(){
  }
}
*/
public class Sodavand extends Felt {
  String SodavandNavn;
  int Ejer;
  double Pris;
  double Grundleje;
  Sodavand(String SodavandNavn, int Ejer, double Pris, double Grundleje) {
    this.SodavandNavn= SodavandNavn;
    this.Ejer = Ejer;
    this.Pris = Pris;
    this.Grundleje = Grundleje;
  }
  String toString() {
    return infoString("");
  }
  String infoString(String indryk) {
    StringBuilder str = new StringBuilder();
    str.append(indryk+"Sodavand- " + "\n");
    str.append(indryk+"SodavandNavn- " + SodavandNavn + "\n");
    str.append(indryk+"Ejer- " + Ejer + "\n");
    str.append(indryk+"Pris- " + Pris + "\n");
    str.append(indryk+"Grundleje- " + Grundleje + "\n" + "\n");
    return str.toString();
  }
  void landet(int SpillersTur) {
    println(SodavandNavn);
    if (Ejer == 0) {
      if (SpillersTur == 1) {
        if (K1 >= Pris) {
if (Buying == false){
          Buying = true;
          }          println("Denne " + SodavandNavn + " kan købes til " + Pris + "ved tryk på 'Y'");
          println("Hvis " + SodavandNavn + " ikke ønskes at købes trykkes på 'N'");
          if (key == 'y' || key == 'Y') {
            K1 -= Pris;
            Ejer = 1;
            Buying = false;
            println("hej");
          } else if (key == 'n' || key == 'N') {
            Buying = false;
          }
        } else {
          println("Du har ikke tilstrækkelig mængde penge til denne Sodavandsfabrik");
        }
      } else {
        if (K2 >= Pris) {
          if (Buying == false){
          Buying = true;
          }
          println("Denne " + SodavandNavn + " kan købes til " + Pris + "ved tryk på 'Y'");
          println("Hvis " + SodavandNavn + " ikke ønskes at købes trykkes på 'N'");
          if (key == 'y' || key == 'Y') {
            K2 -= Pris;
            Ejer = 2;
                        println("hej");
            Buying = false;
          } else if (key == 'n' || key == 'N') {
            Buying = false;
          }
        } else {
          println("Du har ikke tilstrækkelig mængde penge til denne Sodavandsfabrik");
        }
      }
    } else if (Ejer == 1 ) {
      if (SpillersTur == 1) {
        println("Du ejer denne Sodavandsfabrik");
      } else {
       // println(SpillerNavn[1] + "skal betale" + Grundleje);
        K2 -= Grundleje;
        K1 += Grundleje;
      }
    } else if (Ejer == 2 ) {
      if (SpillersTur == 1) {
       // println(SpillerNavn[0] + "skal betale" + Grundleje);
        K1 -= Grundleje;
        K2 += Grundleje;
      } else {
        println("Du ejer denne Sodavandsfabrik");
      }
    }
  }
}



public class Faerge extends Felt {
  String FaergeNavn;
  int Ejer;
  double Pris;
  double Grundleje;
  Faerge(String FaergeNavn, int Ejer, double Pris, double Grundleje) {
    this.FaergeNavn= FaergeNavn;
    this.Ejer = Ejer;
    this.Pris = Pris;
    this.Grundleje = Grundleje;
  }
  String toString() {
    return infoString("");
  }
  String infoString(String indryk) {
    StringBuilder str = new StringBuilder();
    str.append(indryk+"Faerge- " + "\n");
    str.append(indryk+"FaergeNavn- " + FaergeNavn + "\n");
    str.append(indryk+"Ejer- " + Ejer + "\n");
    str.append(indryk+"Pris- " + Pris + "\n");
    str.append(indryk+"Grundleje- " + Grundleje + "\n" + "\n");
    return str.toString();
  }
  void landet(int SpillersTur) {
    println(FaergeNavn);
    if (Ejer == 0) {
      if (SpillersTur == 1) {
        if (K1 >= Pris) {
          Buying = true;
          println("Denne " + FaergeNavn + " kan købes til " + Pris + "ved tryk på 'Y'");
          println("Hvis " + FaergeNavn + " ikke ønskes at købes trykkes på 'N'");
          if (key == 'y' || key == 'Y') {
                        println("hej");
            K1 -= Pris;
            Ejer = 1;
            Buying = false;
          } else if (key == 'n' || key == 'N') {
            Buying = false;
          }
        } else {
          println("Du har ikke tilstrækkelig mængde penge til denne færge");
        }
      } else {
        if (K2 >= Pris) {
          Buying = true;
          println("Denne " + FaergeNavn + " kan købes til " + Pris + "ved tryk på 'Y'");
          println("Hvis " + FaergeNavn + " ikke ønskes at købes trykkes på 'N'");
          if (key == 'y' || key == 'Y') {
            K2 -= Pris;
            Ejer = 2;
            Buying = false;
                        println("hej");
          } else if (key == 'n' || key == 'N') {
            Buying = false;
          }
        } else {
          println("Du har ikke tilstrækkelig mængde penge til denne færge");
        }
      }
    } else if (Ejer == 1 ) {
      if (SpillersTur == 1) {
        println("Du ejer denne færge");
      } else {
        println("skal betale" + Grundleje);
        K2 -= Grundleje;
        K1 += Grundleje;
      }
    } else if (Ejer == 2 ) {
      if (SpillersTur == 1) {
        println("skal betale" + Grundleje);
        K1 -= Grundleje;
        K2 += Grundleje;
      } else {
        println("Du ejer denne færge");
      }
    }
  }
}


public class Gade extends Felt {
  String GadeNavn;
  int Ejer;
  double Pris;
  double Grundleje;
  Gade(String GadeNavn, int Ejer, double Pris, double Grundleje) {
    this.GadeNavn= GadeNavn;
    this.Ejer = Ejer;
    this.Pris = Pris;
    this.Grundleje = Grundleje;
  }
  String toString() {
    return infoString("");
  }
  String infoString(String indryk) {
    StringBuilder str = new StringBuilder();
    str.append(indryk+"Gade- " + "\n");
    str.append(indryk+"GadeNavn- " + GadeNavn + "\n");
    str.append(indryk+"Ejer- " + Ejer + "\n");
    str.append(indryk+"Pris- " + Pris + "\n");
    str.append(indryk+"Grundleje- " + Grundleje + "\n" + "\n");
    return str.toString();
  }
  void landet(int SpillersTur) {
    println(GadeNavn);
    if (Ejer == 0) {
      if (SpillersTur == 1) {
        if (K1 >= Pris) {
          Buying = true;
          println("Denne " + GadeNavn + " kan købes til " + Pris + "ved tryk på 'Y'");
          println("Hvis " + GadeNavn + " ikke ønskes at købes trykkes på 'N'");
          if (key == 121 || key == 'Y') {
            K1 -= Pris;
            Ejer = 1;
                        println("hej");
            Buying = false;
          } else if (key == 'n' || key == 'N') {
            Buying = false;
          }
        } else {
          println("Du har ikke tilstrækkelig mængde penge til denne gade");
        }
      } else {
        if (K2 >= Pris) {
          Buying = true;
          println("Denne " + GadeNavn + " kan købes til " + Pris + "ved tryk på 'Y'");
          println("Hvis " + GadeNavn + " ikke ønskes at købes trykkes på 'N'");
          if (key == 121 || key == 'Y') {
            K2 -= Pris;
            Ejer = 2;
                        println("hej");
            Buying = false;
          } else if (key == 'n' || key == 'N') {
            Buying = false;
          }
        } else {
          println("Du har ikke tilstrækkelig mængde penge til denne gade");
        }
      }
    } else if (Ejer == 1 ) {
      if (SpillersTur == 1) {
        println("Du ejer denne gade");
      } else {
      //  println(SpillerNavn[1] + "skal betale" + Grundleje);
        K2 -= Grundleje;
        K1 += Grundleje;
      }
    } else if (Ejer == 2 ) {
      if (SpillersTur == 1) {
        println("skal betale" + Grundleje);
        K1 -= Grundleje;
        K2 += Grundleje;
      } else {
        println("Du ejer denne gade");
      }
    }
  }
}
