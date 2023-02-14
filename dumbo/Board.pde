public class Board {
  ArrayList<Felt> Felter = new ArrayList<Felt>();


  public void MataBoard()
  {
    Felter.add(new Start(4000)); //1
    Felter.add(new Gade("1", 0, 1000, 75));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("2", 0, 1250, 100));
    Felter.add(new Skat(4000)); // 5
    Felter.add(new Faerge("3", 0, 4000, 500));
    Felter.add(new Gade("4", 0, 1250, 100));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("5", 0, 1250, 100));
    Felter.add(new Gade("6", 0, 1250, 100)); //10
    Felter.add(new Helle("Faengsel"));
    Felter.add(new Gade("7", 0, 1250, 100));
    Felter.add(new Sodavand("Squash", 0, 3000, 100*SlutKastVaerdi));
    Felter.add(new Gade("8", 0, 1250, 100));
    Felter.add(new Gade("9", 0, 1250, 100)); //15
    Felter.add(new Faerge("10", 0, 4000, 500));
    Felter.add(new Gade("11", 0, 1250, 100));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("12", 0, 1250, 100));
    Felter.add(new Gade("13", 0, 1250, 100)); //20
    Felter.add(new Helle("Parkering"));
    Felter.add(new Gade("14", 0, 1250, 100));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("15", 0, 1250, 100));
    Felter.add(new Gade("16", 0, 1250, 100)); //25
    Felter.add(new Faerge("17", 0, 4000, 500));
    Felter.add(new Gade("18", 0, 1250, 100));
    Felter.add(new Gade("19", 0, 1250, 100));
    Felter.add(new Sodavand("CocaCola", 0, 3000, 100*SlutKastVaerdi));
    Felter.add(new Gade("20", 0, 1250, 100)); //30
    Felter.add(new Helle("jo")); // her skal vi lave et fængsel
    Felter.add(new Gade("21", 0, 1250, 100));
    Felter.add(new Gade("22", 0, 1250, 100));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("23", 0, 1250, 100)); //35
    Felter.add(new Faerge("24", 0, 4000, 500));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("25", 0, 1250, 100));
    Felter.add(new Skat(4000));
    Felter.add(new Gade("26", 0, 1250, 100)); //40
  }
}
