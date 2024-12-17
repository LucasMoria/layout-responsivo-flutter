import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Site Completo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Site Flutter'),
        centerTitle: true,
      ),
      drawer: ResponsiveDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BannerSection(),
            AboutSection(),
            ServicesSection(),
            ContactSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}

/// Drawer responsivo para navegação em dispositivos móveis
class ResponsiveDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Navegação',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Início'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Sobre'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Serviços'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Contato'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

/// Banner principal
class BannerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://source.unsplash.com/random/1200x400?nature',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          'Bem-vindo ao Meu Site Flutter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.black45,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

/// Seção Sobre
class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Sobre Nós',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Somos uma empresa focada em soluções modernas para a web utilizando Flutter. '
            'Nosso objetivo é entregar aplicações rápidas, bonitas e responsivas.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

/// Seção de Serviços
class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade50,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        children: [
          Text(
            'Nossos Serviços',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: [
              ServiceCard(
                icon: Icons.web,
                title: 'Desenvolvimento Web',
                description: 'Criamos sites modernos e responsivos.',
              ),
              ServiceCard(
                icon: Icons.phone_android,
                title: 'Apps Mobile',
                description: 'Aplicativos para Android e iOS.',
              ),
              ServiceCard(
                icon: Icons.design_services,
                title: 'UI/UX Design',
                description: 'Interfaces bonitas e funcionais.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  ServiceCard({required this.icon, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 5)],
      ),
      child: Column(
        children: [
          Icon(icon, size: 50, color: Colors.blue),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(description, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

/// Seção de Contato
class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Contato',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('Entre em contato conosco pelo email: contato@exemplo.com'),
        ],
      ),
    );
  }
}

/// Rodapé
class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          '© 2024 Meu Site Flutter - Todos os direitos reservados.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
