part of 'helpers.dart';

void navigate( BuildContext context, Widget page ) {
  Navigator.of(context).popUntil((route) => route.isFirst);
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => page));
}

void showLoadingDialog( BuildContext context, String title ) {

  final screenSize = MediaQuery.of(context).size;
  double alertFontSize = 18.0; 

  if ( screenSize.width > 425 ) {
    alertFontSize = ( screenSize.width > 768 ) ? 25.0 : 20.0;
  }

  showDialog(
    context: context, 
    builder: (context) => AlertDialog(
      title: Text(
        title,
        style: TextStyle( fontSize: alertFontSize ),
      ),
      content: Container(
        height: 100.0,
        width: 100.0,
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.blue,
            strokeWidth: 1.5,
          ),
        ),
      ),
    ),
  );
}

void showErrorSnackBar( BuildContext context, String message ) {

  final screenSize = MediaQuery.of(context).size;
  double errorFontSize = 14.0; 
  double iconsSize = 24.0;

  if ( screenSize.width > 425 ) {
    errorFontSize = ( screenSize.width > 768 ) ? 18.0 : 24.0;
    iconsSize = ( screenSize.width > 768 ) ? 32.0 : 28.0;
  }

  Navigator.of(context).pop();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          Icon(Icons.error, size: iconsSize, color: Colors.red),
          SizedBox( width: 10.0 ),
          Flexible(
            child: Text(
              message,
              style: TextStyle( fontSize: errorFontSize ),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      )
    )
  );
}