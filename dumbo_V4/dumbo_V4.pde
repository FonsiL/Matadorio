int SlutKastVaerdi;
int SpillersTur = 1;
int slå=0;

boolean kørSpillet=true;


Spiller[] Spillere =new Spiller[2];
benytspil spil = new benytspil();

public void setup() {
  Spillere[0] = new Spiller("Frederik ", 30000);
  Spillere[1] = new Spiller("Kristian ", 30000);
}

public void draw() {
  if (Spillere[0].KontoBalance <= 0) {
    println(Spillere[0].SpillerNavn + " er gået bankerot" + '\n' + Spillere[1].SpillerNavn + "Spiller 2 har vundet spillet");
    kørSpillet=false;
  } else  if (Spillere[1].KontoBalance <= 0) {
    println(Spillere[1].SpillerNavn + " er gået bankerot" + '\n' + Spillere[0].SpillerNavn + " har vundet spillet");
    kørSpillet=false;
  }
}

void keyPressed() {
  if (kørSpillet==true) {
    if (key == ' ') {
      spil.main();

      println(Spillere[0].SpillerNavn + Spillere[0].KontoBalance);
      println(Spillere[1].SpillerNavn + Spillere[1].KontoBalance);
      println(Spillere[0].SpillerNavn + " feltnr " + Spillere[0].FeltNr);
      println(Spillere[1].SpillerNavn + " feltnr " + Spillere[1].FeltNr + '\n' + '\n');

      slå =0;
    }

    if (key == 'y' || key == 'Y') {
      spil.test();
    }
  }
}
