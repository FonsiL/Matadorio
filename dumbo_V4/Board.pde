public class Board {
  ArrayList<Felt> Felter = new ArrayList<Felt>();


  public void MataBoard()
  {
    Felter.add(new Start(4000)); //1
    Felter.add(new Gade("Rødovrevej", 0, 1200, 50));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("Hvidovrevej", 0, 1200, 50));
    Felter.add(new Skat(4000)); // 5
    Felter.add(new Faerge("gammel færge", 0, 4000, 500));
    Felter.add(new Gade("Roskildevej", 0, 2000, 100));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("Valby Langgade", 0, 2000, 100));
    Felter.add(new Gade("Allégade", 0, 2400, 150)); //10
    Felter.add(new Helle("Faengsel"));
    Felter.add(new Gade("Frederiksberg Álle", 0, 2800, 200));
    Felter.add(new Sodavand("Squash", 0, 3000, 100*SlutKastVaerdi));
    Felter.add(new Gade("Bülowsvej", 0, 2800, 200));
    Felter.add(new Gade("Gl. Kongevej", 0, 3200, 250)); //15
    Felter.add(new Faerge("oldtids færge", 0, 4000, 500));
    Felter.add(new Gade("Bernstorffsvej", 0, 3600, 300));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("Hellerupvej", 0, 3600, 300));
    Felter.add(new Gade("Strandvejen", 0, 4000, 350)); //20
    Felter.add(new Helle("Parkering"));
    Felter.add(new Gade("Trianglen", 0, 4400, 350));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("Østergade", 0, 4400, 350));
    Felter.add(new Gade("Grønningen", 0, 4800, 400)); //25
    Felter.add(new Faerge("nyfærge", 0, 4000, 500));
    Felter.add(new Gade("Bredgade", 0, 5200, 450));
    Felter.add(new Gade("Kgs. Nytorv", 0, 5200, 450));
    Felter.add(new Sodavand("CocaCola", 0, 3000, 100*SlutKastVaerdi));
    Felter.add(new Gade("Østergade", 0, 5600, 500)); //30
    Felter.add(new Helle("jo")); // her skal vi lave et fængsel
    Felter.add(new Gade("Amagertorv", 0, 6000, 550));
    Felter.add(new Gade("Vimmelskaffet", 0, 6000, 550));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("Nygade", 0, 6400, 600)); //35
    Felter.add(new Faerge("fremtids færge", 0, 4000, 500));
    Felter.add(new Lykken(int(random(1, 4))));
    Felter.add(new Gade("Frederiksberggade", 0, 7000, 700));
    Felter.add(new Skat(4000));
    Felter.add(new Gade("Rådhuspladsen", 0, 8000, 1000)); //40
  }
}
