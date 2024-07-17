extension TitleCase on String {
  String toTitleCase() {
    if (isEmpty) return this;

    return split(" ").map((e) {
      if (e.isEmpty) return e;
      return e[0].toUpperCase() + e.substring(1).toLowerCase();
    }).join();
  }
}
