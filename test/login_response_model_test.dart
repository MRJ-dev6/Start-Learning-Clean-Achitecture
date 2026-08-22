import 'package:flutter_test/flutter_test.dart';
import 'package:tut_app/data/response/response.dart';

void main() {
  group('AuthResponse parsing', () {
    test('parses numeric user id returned by login API', () {
      final json = {
        'status': 0,
        'message': 'user logged in successfully',
        'user': {
          'id': 123456,
          'name': 'Mohamed Alaa',
          'numOfNotifications': 12,
        },
        'contacts': {
          'number': '+201020304050',
          'email': 'user-con@gmail.com',
          'link': 'https://tut-app.com',
        },
      };

      final auth = AuthResponse.fromJson(json);

      expect(auth.status, 0);
      expect(auth.message, 'user logged in successfully');
      expect(auth.user, isNotNull);
      expect(auth.user?.id, 123456);
      expect(auth.user?.name, 'Mohamed Alaa');
      expect(auth.contacts?.email, 'user-con@gmail.com');
    });
  });
}
