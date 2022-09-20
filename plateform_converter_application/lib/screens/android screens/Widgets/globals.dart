class Global {
  static bool isIos = false;
}

///Contact List Modal Class...
class ContactDetails {
  String name = "";
  String message = "";
  ContactDetails({required this.name, required this.message});
}

///Contact LIst..
List<ContactDetails> ContactList = [
  ContactDetails(name: "Google", message: "Flutter is great"),
  ContactDetails(name: "Jethalal", message: "Babuchak!!"),
  ContactDetails(name: "Champak Chacha", message: "Bapuji!!"),
  ContactDetails(name: "Bhide", message: "Akmev Secretory!!"),
  ContactDetails(name: "Tapu", message: "Tapu Sena"),
  ContactDetails(name: "Sonu", message: "Tapu Sena"),
  ContactDetails(name: "Goli", message: "Tapu Sena"),
  ContactDetails(name: "Pinku", message: "Tapu Sena"),
  ContactDetails(name: "Sodhi", message: "Sant Shreey Kal!!"),
  ContactDetails(name: "Babitaji", message: "Beautiful!!"),
  ContactDetails(name: "Daya Bhabhi", message: "Gujaratan"),
  ContactDetails(name: "Abdul", message: "Shoda King"),
  ContactDetails(name: "Ayair", message: "Scientist"),
];
