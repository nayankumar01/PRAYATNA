import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class apipage extends StatelessWidget {
  const apipage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('API reply'),
      ),
          body: Center(
            child: ElevatedButton(
        onPressed: () async{
          String url='http://13.48.136.54:8000/api/api-code/';
          Map<String, String> data={
            'key1':'value1',
            'key2': 'value',
          };
          Map<String,String> headers={
            'Authorization':'Bearer d7057c9f-2537-4048-b8fb-17fa40e7c985',
          };
          http.Response response=await http.post(
            Uri.parse(url),
            headers: headers,
            body: data,
          );
          if(response.statusCode ==200){
            print('api_code');
            print('Response bode: ${response.body}');

          }else{
            print('Post request failed ');
          }
    },
              child: Text('Send POST Request'),
    ),
          )
    );
  }
}
