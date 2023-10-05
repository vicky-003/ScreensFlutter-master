class Textdata {
  String title;
  String subtitle;
  String date;
  String description;
  bool isDescriptionVisible;


  Textdata(
      this.title,this.subtitle,this.date,this.description,this.isDescriptionVisible
      );

  Textdata copyWith({
    String? subtitle,
    String? title,
    String? date,
    String? description,
    bool? isDescriptionVisible,
  }) {
    return Textdata(
      subtitle ?? this.subtitle,
      title ?? this.title,
      title ?? this.date,
      description ?? this.description,
      isDescriptionVisible ?? this.isDescriptionVisible,
    );
  }

}