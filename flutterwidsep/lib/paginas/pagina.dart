import 'package:flutter/material.dart';

class Pagina extends StatelessWidget {
  const Pagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terminos y Condiciones de uso"),
      ),
      body: Column(children: [
        Text("Contrato"),
        Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna nisi, imperdiet quis arcu at, consequat tempus mauris. Vestibulum sed lacinia odio, quis aliquet lacus. Proin at placerat quam. Integer id lorem sollicitudin, hendrerit augue ac, gravida est. Maecenas purus lectus, feugiat sed vulputate a, faucibus at tortor. Integer vitae consectetur dolor, ut sollicitudin nulla. Donec fringilla porta justo, in vestibulum neque ultricies vitae. Nulla sagittis dui nisl, eu gravida quam vestibulum sit amet. Pellentesque at vulputate justo. Quisque sagittis quis turpis in pellentesque. Duis faucibus commodo velit, ut consequat enim venenatis at. Praesent eu lacus quis magna vestibulum sollicitudin. Nullam dictum cursus risus vitae sollicitudin. Ut ullamcorper eu nibh a pretium. Nullam tincidunt varius magna quis maximus."),
        Text(
            "Proin vulputate ipsum ante, et laoreet augue semper ac. Nulla facilisis venenatis est, non accumsan nunc sollicitudin vel. Duis malesuada ex id eros viverra cursus. Aliquam lacinia nulla nec justo elementum gravida. Nunc scelerisque, mauris vitae rhoncus dignissim, augue diam commodo dui, eget lobortis ante lacus at sapien. Cras pulvinar lorem et lacus fermentum, commodo bibendum dolor hendrerit. Suspendisse libero dolor, efficitur vitae malesuada nec, mattis ut neque. Donec in ullamcorper mauris. Donec dapibus commodo velit at venenatis. Phasellus non porta lacus. Vestibulum in tellus efficitur, placerat erat ac, luctus nunc. Nulla sagittis libero non lorem tempor, quis fringilla augue gravida. Vestibulum et sollicitudin ligula, sit amet sollicitudin ligula. Donec euismod tempus facilisis. Sed vel laoreet lorem, id dictum lacus. Ut accumsan neque non ante vulputate dignissim.")
      ]),
    );
  }
}
