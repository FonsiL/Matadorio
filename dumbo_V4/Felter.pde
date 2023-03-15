public class Felt {
  String FeltNavn;
  void landet(Spiller spillere) {
  }
  void køb(Spiller spillere) {
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
  void landet(Spiller spillere) {
    println("Helle: " + HelleNavn);
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
  void landet(Spiller spillere) {
    println("Skat" + '\n' + "Du skal betale " + Straf);
    if (SpillersTur == 1) {
      Spillere[0].KontoBalance -= 4000;
    } else {
      Spillere[1].KontoBalance -= 4000;
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
  void landet(Spiller spillere) {
    println("Lykken");
    if (Kort==1) {
      if (SpillersTur == 1) {
        Spillere[0].KontoBalance+=250;
      } else {
        Spillere[1].KontoBalance+= 250;
      }
      println("Tillykke du har vundet '250kr' i lotto");
    } else if (Kort == 2) {
      if (SpillersTur == 1) {
        Spillere[0].KontoBalance+=500;
      } else {
        Spillere[1].KontoBalance+= 500;
      }
      println("Tillykke du har vundet '500kr' i lotto");
    } else if (Kort == 3) {
      if (SpillersTur == 1) {
        Spillere[0].KontoBalance+= 1000;
      } else {
        Spillere[1].KontoBalance+= 1000;
      }
<<<<<<< HEAD
      println("Tillykke du har vundet '1000kr' i lotto");
=======
      println("Tillykke du har vundet '2000 kr' i lotto");
>>>>>>> 02e00d67b86ebe16c4a0dca17e956cf83636ffa8
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
  void landet (Spiller spillere) {
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
  void landet(Spiller spillere) {
    println(SodavandNavn);
    if (Ejer ==0) {
      println( SodavandNavn + " kan købes til " + Pris + " ved tryk på 'Y'");
      println("Hvis " + SodavandNavn + " ikke ønskes at købes er det næste spillers tur");
            println("Grundlejen er lig, det man slog for at lande på den, ganget med 100." );

    }
    if (Ejer == 1 ) {
      if (SpillersTur == 1) {
        println("Du ejer denne Sodavandsfabrik");
      } else {
        println(Spillere[1].SpillerNavn + "skal betale" + Grundleje);
        Spillere[1].KontoBalance -= Grundleje;
        Spillere[0].KontoBalance += Grundleje;
      }
    } else if (Ejer == 2 ) {
      if (SpillersTur == 1) {
        println(Spillere[0].SpillerNavn + "skal betale" + Grundleje);
        Spillere[0].KontoBalance -= Grundleje;
        Spillere[1].KontoBalance += Grundleje;
      } else {
        println("Du ejer denne Sodavandsfabrik");
      }
    }
  }


  void køb(Spiller spillere) {
    if (Ejer == 0) {
      if (SpillersTur == 1) {
        if (Spillere[0].KontoBalance >= Pris) {

          if (key == 'y' || key == 'Y') {
            Spillere[0].KontoBalance -= Pris;
            Ejer = 1;
            println("Du har købt "+ SodavandNavn + '\n');
          }
        } else {
          println("Du har ikke tilstrækkelig mængde penge til denne Sodavandsfabrik");
        }
      } else {
        if (Spillere[1].KontoBalance >= Pris) {
          if (key == 'y' || key == 'Y') {
            Spillere[1].KontoBalance -= Pris;
            Ejer = 2;
            println("Du har købt "+ SodavandNavn + '\n');
          }
        } else {
          println("Du har ikke tilstrækkelig mængde penge til denne Sodavandsfabrik");
        }
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
  void landet(Spiller spillere) {
    println("Færge " + FaergeNavn);
    if (Ejer ==0) {

      println(FaergeNavn + " kan købes til " + Pris + " ved tryk på 'Y'");
      println("Hvis " + FaergeNavn + " ikke ønskes at købes er det næste spillers tur");
            println("Grundlejen er lig " + Grundleje);

    }
    if (Ejer == 1 ) {
      if (SpillersTur == 1) {
        println("Du ejer denne færge");
      } else {
        println(Spillere[1].SpillerNavn + "skal betale" + Grundleje);
        Spillere[1].KontoBalance -= Grundleje;
        Spillere[0].KontoBalance += Grundleje;
      }
    } else if (Ejer == 2 ) {
      if (SpillersTur == 1) {
        println(Spillere[0].SpillerNavn + "skal betale" + Grundleje);
        Spillere[0].KontoBalance -= Grundleje;
        Spillere[1].KontoBalance += Grundleje;
      } else {
        println("Du ejer denne færge");
      }
    }
  }

  void køb(Spiller spillere) {
    if (Ejer == 0) {
      if (SpillersTur == 1) {
        if (Spillere[0].KontoBalance >= Pris) {


          if (key == 'y' || key == 'Y') {
            Spillere[0].KontoBalance -= Pris;
            Ejer = 1;
            println("Du har købt "+ FaergeNavn + '\n');
          }
        } else {
          println("Du har ikke tilstrækkelig mængde penge til denne færge");
        }
      } else {
        if (Spillere[1].KontoBalance >= Pris) {


          if (key == 'y' || key == 'Y') {
            Spillere[1].KontoBalance -= Pris;
            Ejer = 2;
            println("Du har købt "+ FaergeNavn + '\n');
          }
        } else {
          println("Du har ikke tilstrækkelig mængde penge til denne færge");
        }
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
  void landet(Spiller spillere) {
    println("gade: " + GadeNavn);
    if (Ejer ==0) {

      println(GadeNavn + " kan købes til " + Pris + " ved tryk på 'y'");
      println("Hvis " + GadeNavn + " ikke ønskes at købes så er det næste spiller tur");
      println("Grundlejen er lig " + Grundleje);
    }
    if (Ejer == 1 ) {
      if (SpillersTur == 1) {
        println("Du ejer denne gade");
      } else {
        println(GadeNavn + " er ejet af " + Spillere[0].SpillerNavn);
        println(Spillere[1].SpillerNavn + "skal betale" + Grundleje);
        Spillere[1].KontoBalance -= Grundleje;
        Spillere[0].KontoBalance += Grundleje;
      }
    } else if (Ejer == 2 ) {
      if (SpillersTur == 1) {
        println(GadeNavn + " er ejet af " + Spillere[1].SpillerNavn);
        println(Spillere[0].SpillerNavn + "skal betale" + Grundleje);
        Spillere[0].KontoBalance -= Grundleje;
        Spillere[1].KontoBalance += Grundleje;
      } else {
        println("Du ejer denne gade");
      }
    }
  }

  void køb(Spiller spillere) {
    if (Ejer == 0) {
      if (SpillersTur == 2) {
        if (Spillere[0].KontoBalance >= Pris) {
          if (key == 121 || key == 'Y') {
            Spillere[0].KontoBalance -= Pris;
            Ejer = 1;
            println("Du har købt "+ GadeNavn + '\n');
          }
        } else {
          println("Du har ikke tilstrækkelig mængde penge til denne gade");
        }
      } else {
        if (Spillere[1].KontoBalance >= Pris) {
          if (key == 'y' || key == 'Y') {
            Spillere[1].KontoBalance -= Pris;
            Ejer = 2;
            println("Du har købt "+ GadeNavn + '\n');
          }
        } else {
          println("Du har ikke tilstrækkelig mængde penge til denne gade");
        }
      }
    }
  }
}
