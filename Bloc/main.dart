import 'package:bloc_ile_listeleme/KisiDetaySayfa.dart';
import 'package:bloc_ile_listeleme/KisiKayitSayfa.dart';
import 'package:bloc_ile_listeleme/KisilerCubit.dart';
import 'package:bloc_ile_listeleme/KisilerDaoRepository.dart';
import 'package:bloc_ile_listeleme/KisilerDurum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => KisilerCubit(KisilerDaoRepository())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Anasayfa(),
      ),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  void initState() {
    super.initState();
    context.read<KisilerCubit>().kisileriAlveTetikle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: BlocBuilder<KisilerCubit,KisilerDurum>(
        builder: (context,kisilerDurum){

          if(kisilerDurum is KisilerYuklendi){
            var kisiListesi = kisilerDurum.kisiListesi;

            return ListView.builder(
              itemCount: kisiListesi.length,
              itemBuilder: (context,indeks){
                var kisi = kisiListesi[indeks];

                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => KisiDetaySayfa(kisi:kisi ,)));
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 50,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${kisi.kisi_ad} - ${kisi.kisi_tel}"),
                            IconButton(
                              icon: Icon(Icons.delete,color: Colors.black54,),
                              onPressed: (){
                                context.read<KisilerCubit>().kisiSilveTetikle(int.parse(kisi.kisi_id));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );

          }else{
            return Center();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => KisiKayitSayfa()));
        },
        tooltip: "Kişi Ekle",
        child: Icon(Icons.add),
      ),
    );
  }
}
