class DateTimeUtil {
  static DateTime parse(String data) {
    DateTime date = new DateTime.now();

    List<String> strDateTime = data.split("T");
    List<String> strDate = strDateTime[0].split("-");
    List<String> strTime = strDateTime[1].split(":");

    date = new DateTime(
        int.parse(strDate[0]),
        int.parse(strDate[1]),
        int.parse(strDate[2]),
        int.parse(strTime[0]),
        int.parse(strTime[1]),
        int.parse(strTime[2]),
        0);

    return date;
  }

  ///
  ///parse date from format dd-MM-yyyy HH:mm
  ///
  static DateTime parseFromddMMyyyyHHmm(String data) {
    DateTime date = new DateTime.now();

    List<String> strDateTime = data.split(" ");
    List<String> strDate = strDateTime[0].split("-");
    List<String> strTime = strDateTime[1].split(":");

    date = new DateTime(int.parse(strDate[2]), int.parse(strDate[1]),
        int.parse(strDate[0]), int.parse(strTime[0]), int.parse(strTime[1]), 0);

    return date;
  }

  static Duration dateDiffWithNow(DateTime date) {
    Duration difference = DateTime.now().difference(date);
    return difference;
  }

  static String getDiffDateString(DateTime date,
      {String titleHour = "hour",
      String titleMinutes = "minute",
      String titleSeconds = "second",
      String titleDay = "day",
      String titleAgo = "ago",
      String singularSuffic = "s"}) {
    Duration duration = DateTimeUtil.dateDiffWithNow(date);
    if (duration.inHours >= 24) {
      return "${duration.inDays} $titleDay${(duration.inDays > 1 ? singularSuffic : "")} $titleAgo";
    } else if (duration.inMinutes >= 60) {
      return "${duration.inHours} $titleHour${(duration.inHours > 1 ? singularSuffic : "")} $titleAgo";
    } else if (duration.inSeconds >= 60) {
      return "${duration.inMinutes} $titleMinutes${(duration.inMinutes > 1 ? singularSuffic : "")} $titleAgo";
    } else {
      return "${duration.inSeconds} $titleSeconds${(duration.inSeconds > 1 ? singularSuffic : "")} $titleAgo";
    }
  }
}
