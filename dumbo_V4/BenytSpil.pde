public class benytspil {

  int tur(int feltNr/*,double KontoBalance*/) {
    int Kast1 = int(random(1, 7));
    int Kast2 = int(random(1, 7));
    SlutKastVaerdi = Kast1 + Kast2;

    feltNr += SlutKastVaerdi;
    if (feltNr >39) {
      feltNr-=39;
     // KontoBalance +=4000;
      
    }

    
    return feltNr;
  }
      Board Matadorio = new Board();

  public void main() {
    Matadorio.MataBoard();

    if (keyPressed && key == ' ') {
      if (SpillersTur == 1) {
        if (slå == 0) {
          Spillere[0].FeltNr = tur(Spillere[0].FeltNr);
          slå = 1;
          println("Spiller 1");
        }

        Felt felt = Matadorio.Felter.get(Spillere[0].FeltNr);
        felt.landet(Spillere[0]);

        SpillersTur=2;
      } else if (SpillersTur == 2) {
        if (slå == 0) {
          Spillere[1].FeltNr = tur(Spillere[1].FeltNr);
          slå = 1;
          println("Spiller 2");
        }
        Felt felt = Matadorio.Felter.get(Spillere[1].FeltNr);

        felt.landet(Spillere[1]);
        SpillersTur=1;
      }
    }
  }
  public void test(){
      if (SpillersTur==1) {
    Felt feltkøb = Matadorio.Felter.get(Spillere[0].FeltNr);
    feltkøb.køb(Spillere[0]);
  } else {
    Felt feltkøb = Matadorio.Felter.get(Spillere[1].FeltNr);
    feltkøb.køb(Spillere[1]);
  }
  }
}
