public class benytspill {

  public void main() {
    Board Matadorio = new Board();

    Spillere[0] = new Spiller("Niels", K1, P1);
    Spillere[1] = new Spiller("Kristian", K2, P2);

    if (SpillersTur == 1) {
      if (keyPressed && key == ' ') {
        int Kast1 = int(random(1, 7));
        int Kast2 = int(random(1, 7));
        SlutKastVaerdi = Kast1 + Kast2;

        P1 += SlutKastVaerdi;
        if (P1 >39) {
          P1 -= 39;
        }


        println(SlutKastVaerdi);
        println("P1=" + P1);

        Felt felt = spil.Felter.get(FeltNr);

        felt.landet(Matadorio);

        SpillersTur =2;
      }
    } else {
      if (keyPressed && key == ' ') {
        int Kast1 = int(random(1, 7));
        int Kast2 = int(random(1, 7));
        SlutKastVaerdi = Kast1 + Kast2;

        P2 += SlutKastVaerdi;
        if (P2 >39) {
          P2 -= 39;
          K2 += 4000;
        }

        Felt felt = spil.Felter.get(FeltNr);

        felt.landet(Matadorio);

        SpillersTur =1;
      }
    }
  }
}
