import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Garante que a inicialização do Flutter esteja concluída
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Inicializa o Firebase
  runApp(const MyApp()); // Executa o aplicativo MyApp
}

// Função de autenticação com o Google
Future<User?> signInWithGoogle(BuildContext context) async {
  try {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId:
          '695867178364-27assmkgmtgaid3givg3fjcvqh0rb2iq', // Coloque seu clientId aqui
    );
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
      // O usuário cancelou o login, então retornamos null
      return null;
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Tenta realizar o login no Firebase com as credenciais obtidas
    final UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    // Caso o login seja bem-sucedido, navega para a tela principal
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => HomeScreen(user: userCredential.user!)),
    );

    return userCredential.user;
  } catch (e) {
    // Trate os erros adequadamente aqui
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Erro ao fazer login: $e')));
    return null;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Investimentos',
      theme: ThemeData(
        primaryColor: const Color(0xFF512DA8), // Roxo mais escuro
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login com Google')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
                height: 20), // Espaço entre o logo e o botão de login
            ElevatedButton(
              onPressed: () async {
                await signInWithGoogle(context); // Chama a função de login
              },
              child: const Text('Login com Google'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final User user;

  const HomeScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Exibe a foto de perfil
            CircleAvatar(
              backgroundImage: NetworkImage(user.photoURL ?? ''),
              radius: 50,
            ),
            // Exibe o nome e o e-mail do usuário
            Text('Bem-vindo, ${user.displayName ?? "Usuário"}'),
            Text('E-mail: ${user.email ?? "Não disponível"}'),
            const SizedBox(
                height: 20), // Espaço entre as informações e o botão de logout
            // Botão de logout
            ElevatedButton(
              onPressed: () async {
                // Realiza o logout do Firebase
                await FirebaseAuth.instance.signOut();
                // Retorna para a tela de login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
