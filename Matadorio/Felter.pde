public class Felt {
  String FeltNavn;
}

class Helle extends Felt {
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
}

class Skat extends Felt {
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
}

class Lykken extends Felt {
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
}

class Start extends Felt {
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
}

class Faengsel extends Felt {
  String FaengselsNavn;
  // float
}

class Sodavand extends Felt {
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
}


class Faerge extends Felt {
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
}


class Gade extends Felt {
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
}
