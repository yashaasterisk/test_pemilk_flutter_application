import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://your-api-url.com'; // Ganti dengan URL REST_API_Pemilik_InapKita

  Future<List<dynamic>> fetchResepsionis() async {
    final response = await http.get(Uri.parse(' 0{baseUrl}/resepsionis'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load resepsionis');
    }
  }

  Future<List<dynamic>> fetchProperties() async {
    final response = await http.get(Uri.parse(' 0{baseUrl}/properties'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load properties');
    }
  }
  // Tambahkan method POST/PUT/DELETE sesuai kebutuhan
}
