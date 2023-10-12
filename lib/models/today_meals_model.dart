class TodaysMeals {
  String name;
  String iconPath;
  String date;
  String time;
  bool notifsEnabled;

  TodaysMeals({
    required this.name,
    required this.iconPath,
    required this.date,
    required this.time,
    required this.notifsEnabled
  });

  static List<TodaysMeals> getTodaysMeals() {
    List<TodaysMeals> meals = [];

    meals.add(TodaysMeals(
      name: 'Salmon Nigiri',
      iconPath: 'assets/icons/salmon-nigiri.svg',
      date: 'Today',
      time: '7am',
      notifsEnabled: true
    ));

    meals.add(TodaysMeals(
      name: 'Lowfat Milk',
      iconPath: 'assets/icons/milk.svg',
      date: 'Today',
      time: '7am',
      notifsEnabled: false
    ));

    return meals;
  }
}