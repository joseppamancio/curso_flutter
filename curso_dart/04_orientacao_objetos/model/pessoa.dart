class Pessoa {
  String? nome;
  int? idade;
  double? altura;
  double? peso;

  // Construtor
  Pessoa({this.nome, this.idade, this.altura, this.peso});

  // Métodos
  void dormir() {
    print("$nome está dormindo!");
  }
}
