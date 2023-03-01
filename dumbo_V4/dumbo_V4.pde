int SlutKastVaerdi;
boolean Buying = false;
int SpillersTur = 1;

int Runder;

int slå=0;

int a=1;


Spiller[] Spillere =new Spiller[2];
benytspil spil = new benytspil();

void setup() {
  Spillere[0] = new Spiller("Niels", 30000);
  Spillere[1] = new Spiller("Kristian", 30000);
}

void draw() {
}

void keyPressed() {
  if (key == ' '){
  spil.main();
  println("Spiller 1 " + Spillere[0].KontoBalance);
  println("Spiller 2 " + Spillere[1].KontoBalance);
  println("Spiller 1 feltnr " + Spillere[0].FeltNr);
  println("Spiller 2 feltnr " + Spillere[1].FeltNr);
  
  slå =0;
  }
}

/*

 
 void yesno(answer){
 if answer = 0
 yesno(answer);
 if answer = 1
 then somthing
 if answer = 2 then something else
 }
 
 
 
 }
 */
