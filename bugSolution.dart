```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData['key']);
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Proper Exception Handling
    print('An error occurred: $e');
    // Option 1: Rethrow the exception to be handled by a higher-level function.
    rethrow; 
    // Option 2: Log more detailed information.  For production, a proper logging library should be used (e.g. StackTrace). 
    //print(StackTrace.current); 
  }
}
```