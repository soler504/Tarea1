void main(List<String> args) {
  Libro nuevoLibro = Libro(
      titulo: 'Orgullo y prejuicio', autor: 'anónimo', anioPublicacion: 1813);

  Libro nuevoLibro2 = Libro(
      titulo: 'Doña barbara', autor: 'Rómulo Gallegos', anioPublicacion: 1929);

  Libro nuevoLibro3 = Libro(
      titulo: 'Cien años de soledad',
      autor: 'Gabriel García Márquez',
      anioPublicacion: 1967);

  Libro nuevoLibro4 = Libro(
      titulo: 'Blanca Olmedo',
      autor: 'Lucila Gamero de Medina',
      anioPublicacion: 1908);

  Libro nuevoLibro5 = Libro(
      titulo: 'El coronel no tiene quien le escriba',
      autor: 'Gabriel García Márquez',
      anioPublicacion: 1961);

  Biblioteca biblioteca = Biblioteca();
  biblioteca.agregarLibros(
      [nuevoLibro, nuevoLibro2, nuevoLibro3, nuevoLibro4, nuevoLibro5]);
  biblioteca.buscarPorAutor('Gabriel García Márquez');
  biblioteca.eliminarLibro(2);
  biblioteca.ordenarPorAnioPublicacion();
}

class Libro {
  late String titulo;
  late String autor;
  late int anioPublicacion;

  Libro(
      {required this.titulo,
      required this.autor,
      required this.anioPublicacion}) {}

  @override
  String toString(){
    return '(titulo: $titulo, autor: $autor, anioPublicacion: $anioPublicacion)';
  }
}

class Biblioteca {
  List<Libro> libros = [];

  void agregarLibros(List<Libro> nuevolibro) {
    libros.addAll(nuevolibro);
    print('libros agregados \n');
  }

  void eliminarLibro(int index) {
    libros.removeAt(index);
    print('libro eliminado \n');
  }

  void buscarPorAutor(String autor) {
    List<Libro> librosPorAutor = libros.where((x) => x.autor == autor).toList();
    print('libros del autor $autor: $librosPorAutor \n');
  }

  void ordenarPorAnioPublicacion() {
    libros.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    print('libros ordenados por año de publicación: $libros \n');
  }
}
