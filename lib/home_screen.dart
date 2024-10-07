import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(//untuk ngecustom scrollview
            scrollDirection: Axis.horizontal,
            slivers: [//hal yg bisa ngebuat sesuatu di scroll/digerakkan
              SliverToBoxAdapter(//jembatan antara sliver dengan widget yg biasa sama widget yg luar biasa di gabung 
                  child: Container( //biar bisa berguna/digerakkan maka di masukkin ke slivertoboxadapter
                width: 50,
                height: 50,
                color: Colors.amber,
              )),
             const SliverPadding(padding: EdgeInsets.all(10)),
              SliverToBoxAdapter(
                  child: Container(
                width: 50,
                height: 50,
                color: Colors.pink,
              )),
             const SliverPadding(padding: EdgeInsets.all(10)),
             //sliverpadding itu untuk padding di sliver nya
              SliverToBoxAdapter(
                child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
              ),
              
           const SliverPadding(padding: EdgeInsets.all(10)),
              SliverToBoxAdapter(
                child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
              ),
           const SliverPadding(padding: EdgeInsets.all(10)),
              SliverToBoxAdapter(
                child: Container(
                width: 50,
                height: 50,
                color: Colors.indigo,
              ),
              ),
            const SliverPadding(padding: EdgeInsets.all(10)),
              SliverToBoxAdapter(
                child: Container(
                width: 50,
                height: 50,
                color: Colors.indigo,
              ),
              ),
            const  SliverPadding(padding: EdgeInsets.all(10)),
              SliverToBoxAdapter(
                child: Container(
                width: 50,
                height: 50,
                color: Colors.indigo,
              ),
              ),
            const SliverPadding(padding: EdgeInsets.all(10)),
              SliverToBoxAdapter(
                child: Container(
                width: 50,
                height: 50,
                color: Colors.indigo,
              ),
              ),
            const  SliverPadding(padding: EdgeInsets.all(10)),
              SliverToBoxAdapter(
                child: Container(
                width: 50,
                height: 50,
                color: Colors.indigo,
              ),
              ),
            const  SliverPadding(padding: EdgeInsets.all(10)),
              SliverToBoxAdapter(
                child: Container(
                width: 50,
                height: 50,
                color: Colors.indigo,
              ),
              ),
            const SliverPadding(padding: EdgeInsets.all(10)),
              SliverToBoxAdapter(
                child: Container(
                width: 50,
                height: 50,
                color: Colors.indigo,
              ),
              ),
              
            const SliverPadding(padding: EdgeInsets.all(10)),
              SliverToBoxAdapter(
                child: Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              ),
            ],
          ),
      ),
    );
  }
}