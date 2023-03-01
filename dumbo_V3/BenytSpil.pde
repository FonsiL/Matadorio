public class benytspil {

  int tur(int feltNr) {
      int Kast1 = int(random(1, 7));
      int Kast2 = int(random(1, 7));
      SlutKastVaerdi = Kast1 + Kast2;

      feltNr += SlutKastVaerdi;
      if (feltNr >39) {
      }
    
    println("tur kører" + feltNr);
    return feltNr;
  }

  public void main() {
    Board Matadorio = new Board();
    Matadorio.MataBoard();
    Spillere[0] = new Spiller("Niels", 30000, 0);
    Spillere[1] = new Spiller("Kristian", 30000, 0);
    if (keyPressed && key == ' ') {
      if (SpillersTur == 1) {
        Spillere[0].FeltNr = tur(Spillere[0].FeltNr);
        println("test " + Spillere[0].FeltNr);
        Felt felt = Matadorio.Felter.get(Spillere[0].FeltNr);
        felt.landet(Spillere[0]);

        SpillersTur=2;
      } else if (SpillersTur == 2) {
        Spillere[0].FeltNr = tur(Spillere[0].FeltNr);
        Felt felt = Matadorio.Felter.get(Spillere[1].FeltNr);
        felt.landet(Spillere[1]);
        SpillersTur=1;
      }
    }
  }
}
