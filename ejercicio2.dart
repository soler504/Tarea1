void main(List<String> args) {
  List<int> numeros = [1, 4, 10, 4, 2, 6, 2, 3, 4, 5, 5, 9, 11, 10];
  numeros.sort();

  List<int> nuevaLista = numeros.toSet().toList();
  nuevaLista.sort();
  
  print('vieja lista: $numeros');
  print('nueva lista: $nuevaLista');
}
