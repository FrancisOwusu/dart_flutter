Future<String> _loadRemoteData() async {
  final response = await (http.get(Uri.parse('https://oreil.ly/ndCPN')));
  if (response.statusCode == 200) {
    print('response statusCode is 200');
    return response.body;
  } else {
    print('Http Error: ${response.statusCode}!');
    throw Exception('Invalid data source.');
  }
}
