void main(List<String> args) {
  Empleado empleado1 = Empleado(
      nombre: 'Isabella Pascualli',
      puesto: 'analista programador',
      salario: 22000.00);

  Empleado empleado2 = Empleado(
      nombre: 'Michael Ronda', puesto: 'product manager', salario: 30000.00);

  Empleado empleado3 = Empleado(
      nombre: 'Gastón Bernasconi',
      puesto: 'analista de datos',
      salario: 28000.00);

  List<Empleado> empleados = [empleado1, empleado2, empleado3];

  final double salarioTotal = calcularSalarioTotal(empleados);
  print('salario total $salarioTotal');

  final double salarioPromedio = calcularSalarioPomedio(empleados);
  print('salario promedio $salarioPromedio');
}

class Empleado {
  late String nombre;
  late String puesto;
  late double salario;

  Empleado(
      {required this.nombre, required this.puesto, required this.salario}) {}
}

double calcularSalarioTotal(List<Empleado> empleados) {
  final double salarioTotal =
      empleados.fold(0, (sum, item) => sum + item.salario);

  return salarioTotal;
}

double calcularSalarioPomedio(List<Empleado> empleados) {
  return calcularSalarioTotal(empleados) / empleados.length;
}
