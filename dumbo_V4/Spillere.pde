  int AntalSpillere;


public class Spiller {
  String SpillerNavn;
  double KontoBalance;
  int FeltNr;
  public Spiller(String SpillerNavn, double KontoBalance) {
   this.SpillerNavn = SpillerNavn;
   this.KontoBalance = KontoBalance;
   FeltNr = 0;
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
