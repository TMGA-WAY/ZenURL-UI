class LinkInformation {
  final String shortUrl;
  final String longUrl;
  final String qr;
  final int clicks;
  final bool status;
  final DateTime date;

  LinkInformation({
    required this.shortUrl,
    required this.longUrl,
    required this.qr,
    required this.clicks,
    required this.status,
    required this.date,
  });
}
