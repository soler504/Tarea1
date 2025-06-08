void main(List<String> args) {
  imprimirSecuenciafibonacci(15);
}

void imprimirSecuenciafibonacci(int valor){
  int numero1 = 0;
  int numero2 = 1;
  List<int> secuenciaFibonacci = [];

  for (int i = 0; i < valor; i++) {
    secuenciaFibonacci.add(numero1);
    print(secuenciaFibonacci[i]);

    int siguiente = numero1 + numero2;
    numero1 = numero2;
    numero2 = siguiente;
  }
}
