import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var anaRenk = const Color(0xFF185E91);
  var faButtonRenk = const Color(0xFF1064BC);
  var okRenk = const Color(0xFFD2D2D2);
  bool aramaYapiliyorMu = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: anaRenk,
        title: Row(
          children: <Widget>[
            const Text("sahibinden.com"),
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: GestureDetector(
                onTap: (){
                  print("message.png'ye tıklandı!!!");
                },
                child: SizedBox(
                  width:30,height: 30,
                  child: Image.asset("icons/message.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15),
              child: GestureDetector(
                onTap: (){
                  print("insan2.png'ye tıklandı!!!");
                },
                child: SizedBox(
                  width:30,height: 30,
                  child: Image.asset("icons/insan2.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15),
              child: GestureDetector(
                onTap: (){
                  print("carcam.png'ye tıklandı!!!");
                },
                child: SizedBox(
                  width:35,height: 35,
                  child: Image.asset("icons/carcam.png"),
                ),
              ),
            ),

          ],
        ),
      ),
      body: new ListView(
        children: [
          ListTile(
            title: aramaYapiliyorMu ?
            TextField(decoration: const InputDecoration(hintText: "Ara"),onChanged: (aramaSonucu){
            },) :
            TextField(decoration: const InputDecoration(hintText: "Kelime veya İlan No. ile ara"),onChanged: (aramaSonucu){
            },),
            leading: (
                aramaYapiliyorMu ?
                IconButton(onPressed: (){
                  setState(() {aramaYapiliyorMu = false;});
                }, icon: const Icon(Icons.clear)):
                IconButton(onPressed: (){
                  setState(() {aramaYapiliyorMu = true;});
                }, icon: const Icon(Icons.search))
            ),
            trailing:
            IconButton(onPressed: (){
              setState(() {});
            }, icon: Icon(Icons.mic_none)),
          ),
          const Spacer(),
          ListTile(
            leading: SizedBox(width: 25,height: 25,
                child: Image.asset("icons/emlak.png")),
            title: const Text("Emlak",style: TextStyle(fontSize: 16,color: Colors.black),),
            subtitle: const Text("Konut, İş Yeri, Arsa, Konut Projeleri, Bina, Devre Mülk, Turistik Tesis",
              style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
            onTap:(){
              setState(() {

              });
            } ,
            trailing: Icon(Icons.keyboard_arrow_right,color: okRenk,) ,
          ),
          ListTile(
            leading: SizedBox(width: 25,height: 25,
                child: Image.asset("icons/vasita.png")),
            title: const Text("Vasıta",style: TextStyle(fontSize: 16,color: Colors.black),),
            subtitle: const Text("Otomobil, Arazi, SUV & Pickup, Motosiklet, Minivan & Panelvan, Ticari Araçlar, Elektrikli Araçlar",
              style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
            onTap:(){
              setState(() {

              });
            } ,
            trailing: Icon(Icons.keyboard_arrow_right,color: okRenk,) ,
          ),
          ListTile(
            leading: SizedBox(width: 25,height: 25,
                child: Image.asset("icons/Yedek.png")),
            title: const Text("Yedek Parça,Aksesuar,Donanım", style: TextStyle(fontSize: 16,color: Colors.black),),
            subtitle: const Text("Otomotoiv Ekipmanları, Motosiklet Ekipmanları, Deniz Aracı Ekipmanları",
              style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
            onTap:(){
              setState(() {

              });
            } ,
            trailing: Icon(Icons.keyboard_arrow_right,color: okRenk,) ,
          ),
          ListTile(
            leading: SizedBox(width: 25,height: 25,
                child: Image.asset("icons/ikinciel.png")),
            title: const Text("İkinci El ve Sıfır Alışveriş", style: TextStyle(fontSize: 16,color: Colors.black),),
            subtitle: const Text("Bilgisayar, Cep Telefonu, Fotoğraf & Kamera, Ev Dekorasyon,Ev Elektroniği,"
                "Elektrikli Ev Aletleri,Giyim & Aksesuar, Saat, Anne & Bebek, Kişisel BAkım & Kozmetik, Hobi & Oyuncak",
              style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
            onTap:(){
              setState(() {

              });
            } ,
            trailing: Icon(Icons.keyboard_arrow_right,color: okRenk,) ,
          ),
          ListTile(
            leading: SizedBox(width: 25,height: 25,
                child: Image.asset("icons/ismakinesi.png")),
            title: const Text("İş Makineleri & Sanayi", style: TextStyle(fontSize: 16,color: Colors.black),),
            subtitle: const Text("İş Makineleri, Tarım Makineleri, Sanayi, Elektrik & Enerji",
              style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
            onTap:(){
              setState(() {

              });
            } ,
            trailing: Icon(Icons.keyboard_arrow_right,color: okRenk,) ,
          ),
          ListTile(
            leading: SizedBox(width: 25,height: 25,
                child: Image.asset("icons/usta.png")),
            title: const Text("Ustalar ve Hizmetler", style: TextStyle(fontSize: 16,color: Colors.black),),
            subtitle: const Text("Ev Tadilat & Dekorasyon, Nakliye, Araç Servis & Bakım, Tamirat & Teknik Servis,"
                "Düğün & Etkinlik",
              style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
            onTap:(){
              setState(() {
              });
            } ,
            trailing: Icon(Icons.keyboard_arrow_right,color: okRenk,) ,
          ),
          ListTile(
            leading: SizedBox(width: 25,height: 25,
                child: Image.asset("icons/ozelders.png")),
            title: const Text("Özel Ders Verenler", style: TextStyle(fontSize: 16,color: Colors.black),),
            subtitle: const Text("Lise & Üniversite, İlkokul & Ortaokul, Yabancı Dil, Bilgisayar,"
                "Direksiyon, Spor, Sanat, Dans, Müzik & Enstrüman, Tiyataro & Oyunculuk",
              style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
            onTap:(){
              setState(() {

              });
            } ,
            trailing: Icon(Icons.keyboard_arrow_right,color: okRenk,) ,
          ),
          ListTile(
            leading: SizedBox(width: 25,height: 25,
                child: Image.asset("icons/isilani.png")),
            title: const Text("İş İlanları", style: TextStyle(fontSize: 16,color: Colors.black),),
            subtitle: const Text("Avukatlık & Hukuki Danışmanlık, Eğitim, Eğlence ve Aktiviteler, Güzellik ve Bakım,"
                "IT ve Yazılım Geliştirme, İnsan Kaynakları",
              style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
            onTap:(){
              setState(() {

              });
            } ,
            trailing: Icon(Icons.keyboard_arrow_right,color: okRenk,) ,
          ),
          ListTile(
            leading: SizedBox(width: 25,height: 25,
                child: Image.asset("icons/yardimci.png")),
            title: const Text("Yardımcı Arayanlar", style: TextStyle(fontSize: 16,color: Colors.black),),
            subtitle: const Text("Bebek & Çocuk Bakıcısı, Yaşlı & Hasta Bakıcısı, Temizlikçi & Ev İşlerine Yardımcı",
              style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
            onTap:(){
              setState(() {

              });
            } ,
            trailing: Icon(Icons.keyboard_arrow_right,color: okRenk,) ,
          ),
          ListTile(
            leading: SizedBox(width: 25,height: 25,
                child: Image.asset("icons/hayvan.png")),
            title: const Text("Hayvanlar Alemi",style: TextStyle(fontSize: 16,color: Colors.black),),
            subtitle: const Text("Evcil Hayvanlar, Akvaryum Balıkları, Aksesuarlar, Bakım Ürünleri, Yem & Mama,"
                "Kümes Hayvanları, Büyükbaş Hayvanlar, Küçükbaş Hayvanlar, Deniz Canlıları, Sürüngenler, Böcekler",
              style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
            onTap:(){
              setState(() {

              });
            } ,
            trailing: Icon(Icons.keyboard_arrow_right,color: okRenk,) ,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 20,
              child: ListTile(
                tileColor: anaRenk,
              ),
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/sahibinden.png")),
              title: const Text("Anasayfa",style: TextStyle(fontSize: 16,color: Colors.white),),
              tileColor: anaRenk,
              trailing:  const Icon(Icons.keyboard_arrow_right,color: Colors.white,) ,
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/insan2.png")),
              title: const Text("Bana Özel",style: TextStyle(fontSize: 16,color: Colors.white),),
              tileColor: anaRenk,
              trailing:  const Icon(Icons.keyboard_arrow_right,color: Colors.white,) ,
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/ekleme.png")),
              title: const Text("İlan Ver",style: TextStyle(fontSize: 16,color: Colors.white),),
              tileColor: anaRenk,
              trailing:  const Icon(Icons.keyboard_arrow_right,color: Colors.white,) ,
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/360.png")),
              title: const Text("Servisler",style: TextStyle(fontSize: 16,color: Colors.white),),
              tileColor: anaRenk,
              trailing:  const Icon(Icons.keyboard_arrow_right,color: Colors.white,) ,
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/emlak.png")),
              title: const Text("Emlak",style: TextStyle(fontSize: 16,color: Colors.black),),
              subtitle: const Text("Konut, İş Yeri, Arsa, Konut Projeleri, Bina, Devre Mülk, Turistik Tesis",
                style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/vasita.png")),
              title: const Text("Vasıta",style: TextStyle(fontSize: 16,color: Colors.black),),
              subtitle: const Text("Otomobil, Arazi, SUV & Pickup, Motosiklet, Minivan & Panelvan, Ticari Araçlar, Elektrikli Araçlar",
                style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/Yedek.png")),
              title: const Text("Yedek Parça,Aksesuar,Donanım", style: TextStyle(fontSize: 16,color: Colors.black),),
              subtitle: const Text("Otomotoiv Ekipmanları, Motosiklet Ekipmanları, Deniz Aracı Ekipmanları",
                style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/ikinciel.png")),
              title: const Text("İkinci El ve Sıfır Alışveriş", style: TextStyle(fontSize: 16,color: Colors.black),),
              subtitle: const Text("Bilgisayar, Cep Telefonu, Fotoğraf & Kamera, Ev Dekorasyon,Ev Elektroniği,"
                  "Elektrikli Ev Aletleri,Giyim & Aksesuar, Saat, Anne & Bebek, Kişisel BAkım & Kozmetik, Hobi & Oyuncak",
                style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/ismakinesi.png")),
              title: const Text("İş Makineleri & Sanayi", style: TextStyle(fontSize: 16,color: Colors.black),),
              subtitle: const Text("İş Makineleri, Tarım Makineleri, Sanayi, Elektrik & Enerji",
                style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/usta.png")),
              title: const Text("Ustalar ve Hizmetler", style: TextStyle(fontSize: 16,color: Colors.black),),
              subtitle: const Text("Ev Tadilat & Dekorasyon, Nakliye, Araç Servis & Bakım, Tamirat & Teknik Servis,"
                  "Düğün & Etkinlik",
                style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/ozelders.png")),
              title: const Text("Özel Ders Verenler", style: TextStyle(fontSize: 16,color: Colors.black),),
              subtitle: const Text("Lise & Üniversite, İlkokul & Ortaokul, Yabancı Dil, Bilgisayar,"
                  "Direksiyon, Spor, Sanat, Dans, Müzik & Enstrüman, Tiyataro & Oyunculuk",
                style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/isilani.png")),
              title: const Text("İş İlanları", style: TextStyle(fontSize: 16,color: Colors.black),),
              subtitle: const Text("Avukatlık & Hukuki Danışmanlık, Eğitim, Eğlence ve Aktiviteler, Güzellik ve Bakım,"
                  "IT ve Yazılım Geliştirme, İnsan Kaynakları",
                style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/yardimci.png")),
              title: const Text("Yardımcı Arayanlar", style: TextStyle(fontSize: 16,color: Colors.black),),
              subtitle: const Text("Bebek & Çocuk Bakıcısı, Yaşlı & Hasta Bakıcısı, Temizlikçi & Ev İşlerine Yardımcı",
                style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
              onTap:(){
                setState(() {

                });
              } ,
            ),
            ListTile(
              leading: SizedBox(width: 25,height: 25,
                  child: Image.asset("icons/hayvan.png")),
              title: const Text("Hayvanlar Alemi",style: TextStyle(fontSize: 16,color: Colors.black),),
              subtitle: const Text("Evcil Hayvanlar, Akvaryum Balıkları, Aksesuarlar, Bakım Ürünleri, Yem & Mama,"
                  "Kümes Hayvanları, Büyükbaş Hayvanlar, Küçükbaş Hayvanlar, Deniz Canlıları, Sürüngenler, Böcekler",
                style: TextStyle(fontSize: 14,color: Colors.black26),maxLines: 1,overflow: TextOverflow.ellipsis,),
              onTap:(){
                setState(() {

                });
              } ,
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        backgroundColor: faButtonRenk,
        children: [
          SpeedDialChild(
            child: Icon(Icons.home),
            label:'İlan verebilirsiniz!',
          ),
        ],
      ),
    );
  }
}
