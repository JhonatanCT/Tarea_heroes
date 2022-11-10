import 'package:super_hero/Helpers/exportsClass.dart';

class ScreenDetailHero extends StatelessWidget {
  const ScreenDetailHero({super.key});

  @override
  Widget build(BuildContext context) {
    final hereoRecibido =
        ModalRoute.of(context)?.settings.arguments as HeroFinal;

    final imgHeroe = hereoRecibido.images!.imgMD;
    final appheroe= hereoRecibido.appearance!.gender;
    final appheroe4= hereoRecibido.appearance!.height;
    final appheroe3= hereoRecibido.appearance!.weight;
    final appheroe2= hereoRecibido.appearance!.race;
    final appheroe5= hereoRecibido.appearance!.eyeColor;
    final appheroe6= hereoRecibido.appearance!.hairColor;

    final bio1= hereoRecibido.biography!.fullName;
    final bio2= hereoRecibido.biography!.firstAppearance;
    final bio3= hereoRecibido.biography!.placeOfBirth;
    
    
    // ignore: avoid_print
    print(hereoRecibido.work?.occupation);

    return Scaffold(
        appBar: AppBar(
          title: Text(hereoRecibido.name.toString()),
        ),
      body: Center(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ListTile(
        leading: Column(
          children: [
            FadeInImage(
                width: 350,             
                image: NetworkImage(imgHeroe!),
            placeholder: const AssetImage("images/SpinnerImg.gif"),
      ),
          ],
        ),
        title: const Text("")),
               const Text(""),
               Text("Gender: ${appheroe!}"),
               const Text(""),
               Text("Race: ${appheroe2!}"),
               const Text(""),
               Text("eyerColor: ${appheroe5!}"),
               const Text(""),
               Text("height: ${appheroe4!}"),
               const Text(""),
               Text("weight: ${appheroe3!}"),
               const Text(""),               
               Text("HairColor: ${appheroe6!}"),
               const Text(""),
               Text("FullName: ${bio1!}"),
               const Text(""),
               Text("firstAppearance: ${bio2!}"),
               const Text(""),
               Text("PlaceOfBirth: ${bio3!}"),
            ],
        ),
      ),
    );
  }
}
