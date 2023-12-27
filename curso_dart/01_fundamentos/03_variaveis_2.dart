void main() {
  var a = 2;
  var b = 4.56;
  var texto = 'O valor da soma é: ';

  print(a is int); // verificação se a variável é do tipo int
  print(a.runtimeType); // tipo da variável
  print(
      texto + (a + b).toString()); // texto concatenado com a soma das variáveis
}
