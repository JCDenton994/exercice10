part of contact_dwt; 
 
// lib/gen/contact/dwt/contacts.dart 
 
abstract class ContactGen extends ConceptEntity<Contact> { 
 
  ContactGen(Concept concept) : super.of(concept); 
 
  String get idcontact => getAttribute("idcontact"); 
  set idcontact(String a) => setAttribute("idcontact", a); 
  
  String get name => getAttribute("name"); 
  set name(String a) => setAttribute("name", a); 
  
  String get pname => getAttribute("pname"); 
  set pname(String a) => setAttribute("pname", a); 
  
  String get phone => getAttribute("phone"); 
  set phone(String a) => setAttribute("phone", a); 
  
  String get email => getAttribute("email"); 
  set email(String a) => setAttribute("email", a); 
  
  Contact newEntity() => new Contact(concept); 
  Contacts newEntities() => new Contacts(concept); 
  
} 
 
abstract class ContactsGen extends Entities<Contact> { 
 
  ContactsGen(Concept concept) : super.of(concept); 
 
  Contacts newEntities() => new Contacts(concept); 
  Contact newEntity() => new Contact(concept); 
  
} 
 
