class Felt {
  String FeltNavn;
}

class Helle extends Felt {
  String HelleNavn;
  double Gevinst;
  Helle(String HelleNavn, double Gevinst) {
    this.HelleNavn = HelleNavn;
    this.Gevinst = Gevinst;
  }
    String toString() {
    return infoString("");
  }
  String infoString(String indryk) {
    StringBuilder str = new StringBuilder();
    str.append(indryk+"HelleFelt " + "\n");
    str.append(indryk+"HelleNavn- " + HelleNavn + "\n");
    str.append(indryk+"Gevinst- " + Gevinst + "\n" + "\n");
    
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
    str.append(indryk+"Prøv Lykken- " + "\n");
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

class Fængsel extends Felt {
  String FængselsNavn;
  // float
}

class Sodavand extends Felt {
  String SodavandNavn;
  boolean Ejer;
  double Pris;
  double Grundleje;
  Sodavand(String SodavandNavn, boolean Ejer, double Pris, double Grundleje) {
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


class Færge extends Felt {
  String FærgeNavn;
  boolean Ejer;
  double Pris;
  double Grundleje;
  Færge(String FærgeNavn, boolean Ejer, double Pris, double Grundleje) {
    this.FærgeNavn= FærgeNavn;
    this.Ejer = Ejer;
    this.Pris = Pris;
    this.Grundleje = Grundleje;
  }
  String toString() {
    return infoString("");
  }
  String infoString(String indryk) {
    StringBuilder str = new StringBuilder();
    str.append(indryk+"Færge- " + "\n");
    str.append(indryk+"FærgeNavn- " + FærgeNavn + "\n");
    str.append(indryk+"Ejer- " + Ejer + "\n");
    str.append(indryk+"Pris- " + Pris + "\n");
    str.append(indryk+"Grundleje- " + Grundleje + "\n" + "\n");
    return str.toString();
  }
}


class Gade extends Felt {
  String GadeNavn;
  boolean Ejer;
  double Pris;
  double Grundleje;
  Gade(String GadeNavn, boolean Ejer, double Pris, double Grundleje) {
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
