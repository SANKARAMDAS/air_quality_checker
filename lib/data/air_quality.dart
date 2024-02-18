class AirQuality {
  int aqi;
  String cityName;
  String? message;
  String? emojiRef;

  AirQuality({
    required this.aqi,
    required this.cityName,
    this.emojiRef,
    this.message,
  });

  //Names constructor for creating an AirQuality instance from a Map
  factory AirQuality.fromJson(Map<String, dynamic> json) {
    return AirQuality(
      aqi: json['data']['aqi'] as int,
      cityName: json['data']['city']['name'] as String,
    );
  }

  //Overriding the toString method to provide a custom string representation of the AirQuality object+69+-
  @override
  String toString() {
    return 'AirQuality(aqi: $aqi, cityName: $cityName, message: $message, emojiRef: $emojiRef)';
  }
}
