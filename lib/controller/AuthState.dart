abstract class AuthState{}

class AuthInitialState extends AuthState{}
class AuthLoadingState extends AuthState{}
class AuthLoggedInState extends AuthState{}
class AuthLoggedOutState extends AuthState{}