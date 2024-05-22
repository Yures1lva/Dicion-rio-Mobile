class HomeController {
  int? value = 0;

  void changeChip(bool selected, int index) {
    value = selected ? index : null;
  }
}
