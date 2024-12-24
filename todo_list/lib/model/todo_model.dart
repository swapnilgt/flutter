class ToDo {
  final String name;
  final DateTime createdAt;

  ToDo({
    required this.name,
    required this.createdAt,
  });

  @override
  String toString() {
    return 'Todo(name: $name, createdAt: $createdAt)';
  }
}
