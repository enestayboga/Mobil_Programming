void main(List<String> args) {
/*   User user = User();
  user.kullaniciAdi = "enestayboga";
  user.sifre = "123";
  user.girisYap();
  //...
  AnonimUser anonimUser = AnonimUser();
  anonimUser.kullaniciAdi = "enestayboga";
  anonimUser.sifre = "123";
  anonimUser.girisYap();
  //...
  AdminUser adminUser = AdminUser();
  adminUser.kullaniciAdi = "enestayboga";
  adminUser.sifre = "123";
  adminUser.girisYap();
  //...
   */
  GucluAdminUser gucluAdminUser = GucluAdminUser();
  gucluAdminUser.kullaniciAdi = "enestayboga";
  gucluAdminUser.sifre = "123";
  gucluAdminUser.girisYap();
}

class User {
  User() {
    print("User() nesnesi oluştu...");
  }
  String? kullaniciAdi;
  String? sifre;

  void girisYap() {
    print("User kullanıcı doğrulandı.");
    print("User yetkiler alındı.");
    print("User giriş yaptı.");
  }

  void cikisYap() {
    print("User oturumu temizlendi.");
    print("User çıkış yaptı.");
  }
}

class AnonimUser extends User {
  AnonimUser() {
    print("AnonimUser() nesnesi oluştu...");
  }
  @override
  void girisYap() {
    print("AnonimUser kullanıcı doğrulandı.");
    print("AnonimUser yetkiler alındı.");
    print("AnonimUser giriş yaptı.");
  }

  @override
  void cikisYap() {
    print("AnonimUser oturumu temizlendi.");
    print("AnonimUser çıkış yaptı.");
  }
}

class AdminUser extends User {
  AdminUser() {
    print("AdminUser() nesnesi oluştu...");
  }
  @override
  void girisYap() {
    print("AdminUser kullanıcı doğrulandı.");
    print("AdminUser yetkiler alındı.");
    print("AdminUser giriş yaptı.");
  }

  @override
  void cikisYap() {
    print("AdminUser oturumu temizlendi.");
    print("AdminUser çıkış yaptı.");
  }
}

class GucluAdminUser extends AdminUser {
  GucluAdminUser() {
    print("GucluAdminUser() nesnesi oluştu...");
  }
  @override
  void girisYap() {
    print("GucluAdminUser kullanıcı doğrulandı.");
    print("GucluAdminUser yetkiler alındı.");
    print("GucluAdminUser giriş yaptı.");
  }

  @override
  void cikisYap() {
    print("GucluAdminUser oturumu temizlendi.");
    print("GucluAdminUser çıkış yaptı.");
  }
}
