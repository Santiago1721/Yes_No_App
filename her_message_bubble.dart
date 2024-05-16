import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
    const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,  //esta funcion pone los mensajes de uno de los participantes hacia la izquierda
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),  //establece el borde circular de los mensajes de este participante
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), //aqui se establece el alto y largo del tamaño para el mensaje
            child: Text('Mensaje numero 1 de Messi', style: TextStyle(color: Colors.white),),
            
             //
          ),
        ),

        const SizedBox(height: 5,),  //esto da un espacio entre cada mensaje enviado, para que no se peguen verticalmente 

        const _ImageBubble(),  //esta funcion llama a que despues de cada mensaje enviado por este usuario, se ponga una imagen, la cual
        //esta especificada en la clase de mas abajo

        SizedBox(height: 10)

      
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size); //aqui te imprime el tamaño de tu dispositivo
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network('https://yesno.wtf/assets/no/31-cc391a4c0332a4ce5b4d4666f64a7b4a.gif', 
      width: size.width * 0.7,  //aqui le indicas que porcentaje de anchura quieres que ocupe la imagen en la pantalla
      height: 200, //especificas altura
      fit: BoxFit.cover,
      loadingBuilder:(context, child, loadingProgress) {
         if( loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Text('Escribiendo'),
            );
      }, 
      ));
  }
}