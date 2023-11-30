void main(List<String> args) {
/*
  //HATALI İŞLEM
  //const sabitlere yalnızca const  
  //sabitler atanabilir.
   int x = 2;
   int y = 3;
  const int sonuc = x + y;
  */
  //DOĞRU İŞLEM
  //const sabitlere yalnızca const  
  //sabitler atanabilir.
   const int x = 2;
   const int y = 3;
  const int sonuc = x + y;

  //DOĞRU İŞLEM
  //final sabitlere değişken tipler   
  //atanabilir.
    int a= 2;
    int b = 3;
  final int sonuc1 = x + y;

  /*
  //YANLIŞ İŞLEM
  //Değişkenler const olmadığı
  //için atanamaz
  int c = 2;
  int y = 3;
  const List<int> liste = [x, y];
  */

    //DOĞRU İŞLEM
  
  const int c = 2;
  const int d = 3;
  const List<int> liste = [c, d];

  

}