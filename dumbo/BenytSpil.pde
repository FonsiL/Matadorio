public class benytspil {

  public void main() {
    Board Matadorio = new Board();
    Matadorio.MataBoard();
    Spillere[0] = new Spiller("Niels", K1, P1);
    Spillere[1] = new Spiller("Kristian", K2, P2);
    // int Runder;
    // for (Matadorio.Runder=0; Matadorio.Runder<40; Matadorio.Runder++){
    // Spiller sp= Matadorio.Spiller.get(Matadorio.SpillersTur % Matadorio.Spiller.size());




    if (SpillersTur == 1) {
      if (keyPressed && key == ' ') {
        int Kast1 = int(random(1, 7));
        int Kast2 = int(random(1, 7));
        SlutKastVaerdi = Kast1 + Kast2;

        P1 += SlutKastVaerdi;
        if (P1 >39) {
          P1 -= 39;
        }


        // println(SlutKastVaerdi);

        // println("Felter = " + Matadorio.Felter.size());

        println(Spillere[0]);



        if (Buying==true) {
          SpillersTur =2;
        }
      }
      if (Buying == true) {
        Felt felt = Matadorio.Felter.get(P1);

        felt.landet(SpillersTur);
      }
    } else {
      if (keyPressed && key == ' ' ) {
        int Kast1 = int(random(1, 7));
        int Kast2 = int(random(1, 7));
        SlutKastVaerdi = Kast1 + Kast2;

        P2 += SlutKastVaerdi;
        if (P2 >39) {
          P2 -= 39;
          K2 += 4000;
        }

        println(Spillere[1]);

Buying = true;



        if (Buying==false) {
          SpillersTur =1;
        }
      }
      if (Buying == true) {
        Felt felt = Matadorio.Felter.get(P2);
        felt.landet(SpillersTur);
      }
    }
  }
}
