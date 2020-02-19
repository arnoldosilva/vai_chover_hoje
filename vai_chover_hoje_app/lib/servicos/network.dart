import 'package:http/http.dart' as http;
import 'dart:convert';
import 'constantes.dart';

class WeatherData{

Future<dynamic>getWeatherData(double latitude, double longitude) async{
  String url ='https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$openWeatherKey';  
  http.Response response = await http.get(url);
  String data = response.body;

      if (response.statusCode == 200) {  
        var decodedData = jsonDecode(data);
        return decodedData;  
      } else {
        print('erro ao coletar dados da localização junto a API');
        print(response.statusCode);
      }

  return null;
}


}




 
    
    