import 'package:flutter/material.dart';
import 'package:netexa_machinetask/common_wigets/business_kpi_widget.dart';
import 'package:netexa_machinetask/common_wigets/drawer_list_tile.dart';
import 'package:netexa_machinetask/common_wigets/revenue_card.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xFFF3EAEA),
      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite, color: Color(0xFFE1EBFB))),
            DrawerListTile(
              icon: Icons.dashboard,
              title: 'Dashboard',
            ),
            DrawerListTile(icon: Icons.payments, title: 'Transfer'),
            DrawerListTile(icon: Icons.analytics, title: 'Analysis'),
            DrawerListTile(icon: Icons.payments, title: 'Icome'),
            DrawerListTile(icon: Icons.pie_chart_outline, title: 'Activites'),
            DrawerListTile(icon: Icons.shopping_cart, title: 'Cart'),
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                height: 500,
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 8,
                  separatorBuilder: (context, index) => const SizedBox(height: 10),
                  itemBuilder: (context, index) => const RevenueCard(
                    percentage: '15',
                    upOrDown: Icons.arrow_upward,
                    number: '100',
                    status: 'Trail Assigned',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 600,
                width: double.infinity,
               
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(

                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.start,
                    children: [
                      const Text('Business kpi',
                      style: TextStyle(fontSize: 18,color: Color.fromARGB(207, 58, 25, 23)),
                      
                      ),
                      Container(
                        height: 300,
                        width: 210,
                       // color: Colors.grey,
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 6,
                           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 25,
                            
                             
                            ),
                          itemBuilder: (context, index) => 
                            BusinessKpiWidget(index: index),
                          
                        ),
                      ),

                       Center(
                         child: Text('All properties',
                         style: TextStyle(
                          color: const Color.fromARGB(255, 21, 102, 167),
                          fontSize: 13
                         ),
                         ),
                       ),

                        SizedBox(height: 10),

                       Center(
                         child: Container(
                          width: 180,
                          height: 180,
                          color: Colors.green,
                          child: SfCircularChart(
                            
                          ),
                         ),
                         
                       )
                    ],
                  ),
                ),
              ),

              
              
             
            ],
          ),
        ),
      )),
    );
  }
}

