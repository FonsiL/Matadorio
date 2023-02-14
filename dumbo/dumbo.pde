int SlutKastVaerdi;
boolean Buying = false;
int SpillersTur = 1;
int P1 = 0;
int P2 = 0;
int K1 = 30000;
int K2 = 30000;

int Runder;

int a=1;

//ArrayList<Spiller> Spillere = new ArrayList<Spiller>();
Spiller[] Spillere =new Spiller[2];
benytspil spil = new benytspil();

void setup() {

  // println(Felter);
}

void draw() {
spil.main();
println(Buying);
 // println(Spillere.length);
  // println(Felter.get(P1));
  // println(Felter.get(P1).getEjer());
}



 
