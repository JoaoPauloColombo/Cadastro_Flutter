import 'package:cadastro_flutter/models/user_model.dart';
import 'package:flutter/material.dart';

class ShowUsersScreen extends StatelessWidget {
  const ShowUsersScreen({
    super.key,
    required this.users,
  });

  final List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Dados dos Usuários")),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: users.length, // Adicionando o itemCount correto
                itemBuilder: (context, i) {
                  return Container(
                    height: 130,
                    child: Card(
                      elevation: 10,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                              onTap: () {
                                // Ação ao tocar na imagem
                              },
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/man.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(75.0),
                                  ),
                                  boxShadow: const [
                                    BoxShadow(blurRadius: 7.0, color: Colors.black)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(30.0),
                            child: Chip(
                              label: Text({users[i].name} ,'${users[i].telefone}' ),
                              elevation: 10,
                              
                            ),
                            
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

          // Text(users[0].name),
          // Text(users[0].email),
          // Text(users[0].telefone.toString()),
          // Text(users[0].endereco),
          // Text(users[0].genero),