  int AntalSpillere;


class Spiller {
  String SpillerNavn;
  double KontoBalance;
  int FeltNr;
  Spiller(String SpillerNavn, double KontoBalance, int FeltNr) {
   this.SpillerNavn = SpillerNavn;
   this.KontoBalance = KontoBalance;
   this.FeltNr = FeltNr;
  }
    String toString() {
    return infoString("");
  }
  String infoString(String indryk) {
    StringBuilder str = new StringBuilder();
    str.append(indryk+"Spiller- " + "\n");
    str.append(indryk+"SpillerNavn- " + SpillerNavn + "\n");
    str.append(indryk+"KontoBalance- " + KontoBalance + "\n");
    str.append(indryk+"FeltNr- " + FeltNr + "\n" + "\n");
    return str.toString();
  }
}
