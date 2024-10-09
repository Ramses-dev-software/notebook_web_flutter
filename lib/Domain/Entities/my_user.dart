final class MyUser {
  final int userId;
  final String username;
  final String email;
  final String password;
  
  const MyUser({
    required this.userId,
    required this.username,
    required this.email,
    required this.password    
  });

  Map<String, dynamic> toDocument() => 
    {
      'userId': userId,
      'username': username,
      'email': email,
      'password': password
    };

  static MyUser fromDocument(Map<String, dynamic> document) =>
    MyUser(
      userId: document['userId'], 
      username: document['username'], 
      email: document['email'], 
      password: document['password']
    ); 
}