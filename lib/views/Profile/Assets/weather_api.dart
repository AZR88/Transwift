import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';

// ignore: camel_case_types
class weather extends StatefulWidget {
  const weather({super.key});

  @override
  State<weather> createState() => _HomePageState();
}

// ignore: constant_identifier_names
const OpenWheather_API_KEY = "18a84ead74934938e5e16a8057689088";

class _HomePageState extends State<weather> {
  final WeatherFactory _wf = WeatherFactory(OpenWheather_API_KEY);

  Future<Weather> _fetchWeather() async {
    return await _wf.currentWeatherByCityName("Jember");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Weather>(
      future: _fetchWeather(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else if (!snapshot.hasData) {
          return const Center(
            child: Text('No data available'),
          );
        }

        final weather = snapshot.data!;

        return _buildUI(weather);
      },
    );
  }

  Widget _buildUI(Weather weather) {
    return Center(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.8,
        height: MediaQuery.sizeOf(context).height * 0.48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2, color: Colors.blue)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_locationHeader(weather), _jam(weather)],
              ),
            ),
            _dateTimeInfo(weather),
            _weatherIcon(weather),
            _suhu(weather),
            _inpo(weather),
          ],
        ),
      ),
    );
  }

  Widget _locationHeader(Weather weather) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            weather.areaName ?? "",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }

  Widget _jam(Weather weather) {
    DateTime now = weather.date!;
    return Text(
      DateFormat("h:mm a").format(now),
      style: const TextStyle(fontSize: 35),
    );
  }

  Widget _dateTimeInfo(Weather weather) {
    DateTime now = weather.date!;
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                DateFormat("EEEE").format(now),
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                " ${DateFormat("d.M.y").format(now)}",
                style: const TextStyle(fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _weatherIcon(Weather weather) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.1,
            width: MediaQuery.sizeOf(context).width * 0.7,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "http://openweathermap.org/img/wn/${weather.weatherIcon}@4x.png"),
              ),
            ),
          ),
          Text(
            weather.weatherDescription ?? "",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  Widget _suhu(Weather weather) {
    return Center(
      child: Text(
        "${weather.temperature?.celsius?.toStringAsFixed(0)}° C",
        style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _inpo(Weather weather) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.15,
        width: MediaQuery.sizeOf(context).width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.blue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Max : ${weather.tempMax?.celsius?.toStringAsFixed(0)}° C",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Min : ${weather.tempMin?.celsius?.toStringAsFixed(0)}° C",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Kelembaban : ${weather.humidity?.toStringAsFixed(0)} %",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Angin : ${weather.windSpeed?.toStringAsFixed(0)} m/s",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
