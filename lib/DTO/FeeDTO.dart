class FeeWidgetDTO {
  FeeWidgetDTO(this.label, this.secondaryLabel, this.thirdLabel, this.id,
      {this.paid, this.description = ""});
  String label;
  String secondaryLabel;
  String thirdLabel;
  int id;
  bool paid;
  String description;
}
