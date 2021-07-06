import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
            RandomWords(),


    );
  }
}
class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}


class _RandomWordsState extends State<RandomWords> {
  final _suggestions =<WordPair>[];
  final _saved = <WordPair>{};
  final _biggerFont = const TextStyle(fontSize: 15);
  var count=0;
  @override
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Warning'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('You must select exactly 4 favorites.'),

              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('okay'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains( pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved? Icons.favorite: Icons.favorite_border,
        color: alreadySaved? Colors.red: null,

      ),
      onTap: (){
        setState(() {
          if(alreadySaved){
            _saved.remove(pair);
            count--;
          }
          else{
            _saved.add( pair);
            count++;
          }
        }
        );
        if(count!=4)
        {
           _showMyDialog();
        }
      },
    );
  }
  Widget _buildSuggestions(){

    return ListView.builder(
        itemBuilder:(BuildContext _context, int i){
          if(i.isOdd){
            return Divider();
          }
          final int index =i~/2;
          if(index>= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        }
    );
  }
  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(

        builder: (BuildContext context) {
          final tiles = _saved.map(
                (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(context: context, tiles: tiles).toList()
              : <Widget>[];

          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }
  
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title: Center(
             child: Text(
               "Startup Name Generator",
               style: TextStyle(
                 fontSize:20,

               ),
             ),
           ),
           actions: [
             IconButton(icon: Icon(Icons.list), onPressed:  _pushSaved),
           ],
         ),
         body: _buildSuggestions(),
         floatingActionButton: Column(
mainAxisAlignment: MainAxisAlignment.end,
           //crossAxisAlignment: CrossAxisAlignment.,
           children: [

             Row(
               children: [
                 SizedBox(
                 width: 15,
                 ),

                 FloatingActionButton(
                   onPressed: (){},
                   child: Icon(Icons.arrow_forward),
                   backgroundColor: Colors.blue,

                 ),
                 SizedBox(
                   width: MediaQuery.of(context).size.width*0.88,
                 ),
                 FloatingActionButton(
                   onPressed: (){},
                   child: Icon(Icons.settings),
                   backgroundColor: Colors.blue,

                 ),
               ],
             )

           ],
         ),



       ),
     );

  }
}
