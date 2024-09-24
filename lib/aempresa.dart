import 'package:flutter/material.dart';

class AEmpresa extends StatefulWidget {
  const AEmpresa({super.key});

  @override
  State<AEmpresa> createState() => _AEmpresaState();
}

class _AEmpresaState extends State<AEmpresa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'Empresa',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('lib/images/detalhe_empresa.png'),
                Text('Sobre a Empresa', style: TextStyle(color: Colors.orange),),
              ],
            ),
            Text(
              "A XYZ Consultoria é uma empresa especializada em oferecer soluções estratégicas para negócios de todos os portes e setores. Fundada com o objetivo de ajudar empresas a otimizar seus processos, aumentar a eficiência operacional e alcançar resultados sustentáveis, a XYZ conta com uma equipe de consultores altamente qualificados e com vasta experiência no mercado.\n\n"
              "A empresa atua em diversas áreas, como planejamento estratégico, gestão financeira, melhoria de processos e transformação digital. Seus consultores trabalham em estreita colaboração com os clientes, entendendo suas necessidades específicas e oferecendo soluções personalizadas que atendam aos objetivos de curto, médio e longo prazo.\n\n"
              "Com uma abordagem focada em resultados, a XYZ Consultoria se destaca por sua capacidade de identificar oportunidades de melhoria, implementar mudanças eficazes e acompanhar a evolução dos projetos, garantindo que as empresas estejam preparadas para os desafios do mercado atual.\n\n"
              "Seja para startups que buscam crescer de forma estruturada ou para grandes corporações que precisam se adaptar às constantes mudanças, a XYZ Consultoria é o parceiro ideal para transformar desafios em oportunidades de crescimento e sucesso.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}