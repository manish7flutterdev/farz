import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class EventController extends GetxController{

  var pastEvents=[].obs;
  var liveEvents=[].obs;
  var upcomingEvents=[].obs;

  fetchAll() async{
   if(await fetchPastEvents()==true){
      if(await fetchLiveEvents()==true){
        if(await fetchUpcomingEvents()==true){
          return true;
        }
      }
   }
  }

  
  fetchPastEvents() async{
    var response = await http.get(Uri.parse('https://farzacademy.com/farz-poll/api/past-events'));
    if(response.statusCode==200){
      var parse = jsonDecode(response.body);
      pastEvents.value = parse['past_events'];
      return true;
    }
  }

  fetchLiveEvents() async{
    var response = await http.get(Uri.parse('https://farzacademy.com/farz-poll/api/live-events'));
    if(response.statusCode==200){
      var parse = jsonDecode(response.body);
      liveEvents.value = parse['live_events'];
      return true;
    }
  }

  fetchUpcomingEvents() async{
    var response = await http.get(Uri.parse('https://farzacademy.com/farz-poll/api/upcoming-events'));
    if(response.statusCode==200){
      var parse = jsonDecode(response.body);
      upcomingEvents.value = parse['upcoming_events'];
      return true;
    }
  }
}