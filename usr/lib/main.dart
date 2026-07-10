import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mecanismos Contables',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mecanismos Contables de Crédito'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          CreditMechanismCard(
            title: 'Crédito Comercial',
            description: 'Financiamiento a corto plazo entre empresas para la compra de bienes o servicios.',
            icon: Icons.business,
          ),
          CreditMechanismCard(
            title: 'Crédito Bancario',
            description: 'Préstamos otorgados por instituciones financieras con tasas de interés y plazos definidos.',
            icon: Icons.account_balance,
          ),
          CreditMechanismCard(
            title: 'Arrendamiento Financiero (Leasing)',
            description: 'Contrato donde el arrendador cede el uso de un bien a cambio de rentas periódicas, con opción de compra.',
            icon: Icons.car_rental,
          ),
          CreditMechanismCard(
            title: 'Factoraje (Factoring)',
            description: 'Venta de cuentas por cobrar a una entidad financiera para obtener liquidez inmediata.',
            icon: Icons.receipt_long,
          ),
        ],
      ),
    );
  }
}

class CreditMechanismCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const CreditMechanismCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 32, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

