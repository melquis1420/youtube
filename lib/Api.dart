import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyA4BpaiMBtgnbZTRiagc0HWhxaEtFpFOI8";
const ID_CANAL = "UCplT2lzN6MHlVHHLt6so39A";
const URL_BASE= "https://www.googleapis.com/youtube/v3/";

class Api{
  pesquisar(String pesquisa)async{

    http.Response response = await http.get(
        URL_BASE + "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$CHAVE_YOUTUBE_API"
        //channelId recupera do canal expecífico
            "&channelId=$ID_CANAL"
            "&q$pesquisa"
    );

    if(response.statusCode == 200){
      print("resultado" + response.body);

    }else{

    }

  }
}