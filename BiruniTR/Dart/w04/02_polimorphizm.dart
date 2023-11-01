void main(List<String> args) {}

void communicate(MessageService messageService) {
  //....
  messageService.SendMessage();
}

void isYaptir(Canli c) {
  // Çok biçimlilik(polimorfizm) yapısının en net açıklanmış hali

  isYaptir(Insan());
  isYaptir(Canli());
  isYaptir(Kus());
  isYaptir(Balik());

  communicate(SMSServie());
  communicate(EmailService());
}
//overloading olmasaydı şu şekil tek tek yapacaktık:
//void isYaptir(Insan i) {}
//void isYaptir2(Balık b) {}
//void isYaptir3(Kus k) {}

class Canli {
  void hareketEt() {
    print("Canlı Hareket Etti");
  }
}

class Kus extends Canli {
  @override
  void hareketEt() {
    print("Kuş uçmaya başladı");
  }
}

class Balik extends Canli {
  @override
  void hareketEt() {
    print("Balık yüzmeye başladı");
  }
}

class Insan extends Canli {
  @override
  void hareketEt() {
    print("İnsan yürümeye başladı");
  }
}

//Örnek
abstract class MessageService {
  void SendMessage();
  void ReadMessage();
}

class SMSServie implements MessageService {
  @override
  void ReadMessage() {
    print("Sms message read!");
  }

  @override
  void SendMessage() {
    print("Sms message sent!");
  }
}

class EmailService implements MessageService {
  @override
  void ReadMessage() {
    print("Email message read!");
  }

  @override
  void SendMessage() {
    print("Email message sent!");
  }
}
