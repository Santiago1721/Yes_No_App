import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;// esta funcion establece que se deben de tomar los colores por defecto
    //establecidos en la pestaña app_theme

    final OutlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(60)  //esta funcion establece un redondedo al widget de enviar mensajes.
    );
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder,
        focusedBorder: OutlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon (Icons.send_outlined),  //icono de envio de mensaje
          onPressed: (){

          },
         
        
      ),
      )
    );
   


  }
}