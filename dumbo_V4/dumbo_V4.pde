int SlutKastVaerdi;
int SpillersTur = 1;
int slå=0;

boolean kørSpillet=true;


Spiller[] Spillere =new Spiller[2];
benytspil spil = new benytspil();

public void setup() {
  Spillere[0] = new Spiller("Spiller 1 ", 30000);
  Spillere[1] = new Spiller("Spiller 2 ", 30000);
  
  println("For at spille spillet Matador: \nTryk på Spacebar for at slå terningen, der er to terninger der begge bliver sået på samme tid. \nDer er to spillere, spiller 1 og spiller 2.\nMan vinder når at den anden spiller har opgivet, eller når at de går bankerot, ved at deres konto rammer 0.\n");

}

public void draw() {
  if (Spillere[0].KontoBalance <= 0) {
    println(Spillere[0].SpillerNavn + " er gået bankerot" + '\n' + Spillere[1].SpillerNavn + " har vundet." + '\n');
    kørSpillet=false;
    noLoop();
  } else  if (Spillere[1].KontoBalance <= 0) {
    println(Spillere[1].SpillerNavn + " er gået bankerot" + '\n' + Spillere[0].SpillerNavn + " har vundet." + '\n');
    kørSpillet=false;
    noLoop();
  }
}

void keyPressed() {
  if (kørSpillet==true) {
    
    if (key == 'y' || key == 'Y') {
      spil.test();
    }
    
    if (key == ' ') {
      spil.main();

      println(Spillere[0].SpillerNavn + Spillere[0].KontoBalance);
      println(Spillere[1].SpillerNavn + Spillere[1].KontoBalance);
      println(Spillere[0].SpillerNavn + " feltnr " + Spillere[0].FeltNr);
      println(Spillere[1].SpillerNavn + " feltnr " + Spillere[1].FeltNr + '\n');

      slå =0;
    }
  }
}
