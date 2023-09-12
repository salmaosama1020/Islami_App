import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/home/quran/item_sura_details.dart';
import 'package:islami_project/mytheme.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suradetailsArgs;
    if (verses.isEmpty) {
      loadfile(args.index);
    }
    return Stack(
      children: [
      Image.asset('assets/images/background.png', width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,),
    Scaffold(
    appBar: AppBar(
    title: Text('${args.name}' ,style: Theme.of(context).textTheme.titleLarge),
    ),

      body: verses.length==0?
          Center(child: CircularProgressIndicator())
      : 
      Container(
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height*0.06,
          horizontal: MediaQuery.of(context).size.width*0.05
        ),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: mytheme.whitecolor,
          borderRadius: BorderRadius.circular(24)
        ),
        child: ListView.separated(separatorBuilder: (context,index){
          return Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          );
        },itemBuilder: ((context, index) {
          return ItemSuraDetails(cont: verses[index] , index: index,);
        }),
        itemCount:verses.length ,

    ),
      )
      ,)]);

  }

  void loadfile(index) async{
      String cont = await rootBundle.loadString('assets/file/${index+1}.txt');
      List<String> lines = cont.split('\n');

      verses = lines ;
      setState(() {

      });
  }
}
class suradetailsArgs {
   String name ;
   int index;

   suradetailsArgs({required this.name , required this.index});
}
