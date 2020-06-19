// import 'dart:convert';
// import 'package:intl/intl.dart';

// class WorldTime {
//   String location;
//   String time;
//   String flag;
//   String url;

//   WorldTime({ this.location, this.flag, this.url});

//   Future<void> getTime() async{

//     try{
      
//       Response response = await get('http://worldtimeapi.org/api/timezone');
//       Map data = jsonDecode(response.body);

//       String datetime = data['datetime'];
//       String offset = data['utc_offset'].toString(1,3);
//       //print(datetime);
//       //print(offset);

//       DateTime now = DateTime.parse(datetime);
//       now = now.add(Duration(hours: int.parse(offset)));

//       time = DateFormat.jm().format(now);

//     }
//     catch (e) {
//       print('caught error : $e');
//       time = 'could not get time date';
//     }
//   }
// }
