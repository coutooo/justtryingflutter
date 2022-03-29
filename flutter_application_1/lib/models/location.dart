import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1,'Brigadeiros de Chocolate', "lib/assets/images/brigadeiros.jpg", [
        LocationFact('Ingredientes:',
            'Tacho, Colher de pau, Taças, Prato de servir, Leite condensado 1 lata, Chocolate 3 c. de sopa, manteiga 1 c. de sopa, Chocolate 1 emb. c. de sopa.'),
        LocationFact('Preparação:',
            'Num tacho leve a lume médio a manteiga e o leite condensado. Vá mexendo até misturar bem. De seguida, acrescente o chocolate em pó, aos poucos, envolvendo tudo muito bem. Mexa sempre, durante 10 minutos ou, até que o chocolate comece a descolar-se do fundo do tacho. Unte uma taça com manteiga. Verta o chocolate para a taça e deixe arrefecer. Com as mãos, molde pequenas bolinhas. Passe pelo granulado de chocolate, até que o brigadeiro fique bem coberto.'),
      ]),
            Location(2, 'Bacalhau com Natas', "lib/assets/images/bacalhaucnatas.jpg", [
        LocationFact('Ingredientes:',
            'batata 500 g, bacalhau 400 g, azeite 100 ml, azeite (para fritar) 750 ml, louro 2 folha, alho picado 5 dente, cebola 2 unid., natas 250 ml, bechamel 500 ml, sal 1 c. de sopa, noz-moscada 1 c. de sopa, limão (gotas) 1 q.b., queijo mozzarella ralado100 g'),
        LocationFact('Preparação:',
            'Pré-aqueça o forno(200 ºC), corte as batatas em cubos e frite em azeite, coloque o bacalhau num tacho com uma folha de louro e cubra-o com água, leve-o a cozinhar em lume alto, quando levantar fervura baixe o lume e cozinhe 5 minutos, retire o bacalhau da água e deixe arrefecer. Retire a pele e as espinhas e desfie-o em lascas. Num tacho, coloque 100 ml de azeite e deixe refogar as cebolas, os alhos e uma folha de louro. Adicione o bacalhau, mexa e deixe refogar um pouco, junte as batatas e envolva bem. Depois, acrescente o molho bechamel e as natas e tempere com o sal, a pimenta, a noz-moscada e as gotas do limão. Mexa bem, retire do lume e reserve. Pincele um tabuleiro de forno com o restante azeite. Espalhe bem o preparado de bacalhau no tabuleiro e polvilhe com o queijo mozzarella, leve o bacalhau com natas ao forno a gratinar entre 15 e 20 minutos.'),
      ]),
      Location(3, 'Carne de Porco à Alentejana', "lib/assets/images/carneporcoalentejana.jpg", [
        LocationFact('Ingredientes:',
            '800 g de carne de porco sem osso, 800 g de batatas, 400 g de amêijoas, 60 g de pickles, 4 dentes de alho, 300 ml de vinho branco, 50 ml de azeite, 3 colheres (sopa) de massa de pimentão, Azeitonas pretas q.b., Coentros picados q. b., Sal e pimenta q.b., Óleo para fritar.'),
        LocationFact('Preparação:',
            'Corte a carne em cubos e tempere-a com os dentes de alho picados, o vinho branco, a massa de pimentão, sal e pimenta. Deixe marinar, durante 20 minutos, e depois escorra, Descasque as batatas, corte-as em cubos e leve-os a fritar em óleo quente. Retire e escorra, sobre papel absorvente. Aqueça o azeite num tacho, junte a carne e deixe saltear. Adicione as amêijoas, regue com a marinada e deixe cozinhar, até a carne ficar douradinha, mas com molho. Se necessário, regue com um pouco de água. Junte, depois, as batatas, os pickles e azeitonas pretas e envolva. Polvilhe com coentros picados e sirva de seguida.'),
      ]),
    ];
  }
  static Location fetchByID(int locationID) {
    // NOTE: this will replaced by a proper API call
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return locations[0]; // ta mal
  }
}