import '../../domain/models/models.dart';

//current user for application session
User? _currentUser;
User? get currentUser => _currentUser;
void setCurrentUser(User? user) {
  _currentUser = user;
}
