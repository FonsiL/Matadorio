public class Board {
  ArrayList<Felt> Felter = new ArrayList<Felt>();


  public void MataBoard()
  {
    Felter.add(new Start(4000)); //1
    Felter.add(new Gade("1", 0, 1200, 50));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("2", 0, 1200, 50));
    Felter.add(new Skat(4000)); // 5
    Felter.add(new Faerge("3", 0, 4000, 500));
    Felter.add(new Gade("4", 0, 2000, 100));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("5", 0, 2000, 100));
    Felter.add(new Gade("6", 0, 2400, 150)); //10
    Felter.add(new Helle("Faengsel"));
    Felter.add(new Gade("7", 0, 2800, 200));
    Felter.add(new Sodavand("Squash", 0, 3000, 100*SlutKastVaerdi));
    Felter.add(new Gade("8", 0, 2800, 200));
    Felter.add(new Gade("9", 0, 3200, 250)); //15
    Felter.add(new Faerge("10", 0, 4000, 500));
    Felter.add(new Gade("11", 0, 3600, 300));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("12", 0, 3600, 300));
    Felter.add(new Gade("13", 0, 4000, 350)); //20
    Felter.add(new Helle("Parkering"));
    Felter.add(new Gade("14", 0, 4400, 350));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("15", 0, 4400, 350));
    Felter.add(new Gade("16", 0, 4800, 400)); //25
    Felter.add(new Faerge("17", 0, 4000, 500));
    Felter.add(new Gade("Grønningen", 0, 5200, 450));
    Felter.add(new Gade("Bredgade", 0, 5200, 450));
    Felter.add(new Sodavand("CocaCola", 0, 3000, 100*SlutKastVaerdi));
    Felter.add(new Gade("Kgs. Nytorv", 0, 5600, 500)); //30
    Felter.add(new Helle("jo")); // her skal vi lave et fængsel
    Felter.add(new Gade("Østergade", 0, 6000, 550));
    Felter.add(new Gade("Amagertorv", 0, 6000, 550));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("Vimmelskaffet", 0, 6400, 600)); //35
    Felter.add(new Faerge("Nygade", 0, 4000, 500));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("Frederiksberggade", 0, 7000, 700));
    Felter.add(new Skat(4000));
    Felter.add(new Gade("Rådhuspladsen", 0, 8000, 1000)); //40
  }
}
