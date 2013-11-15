                                                                                                    part of contact_dwt; 
 
// lib/contact/dwt/init.dart 
 
initContactDwt(var entries) { 
  _initContacts(entries); 
} 
 
_initContacts(var entries) { 
  Contact contact = new Contact(entries.contacts.concept); 
  contact.idcontact = "1";
  contact.name = "Échantillon";
  contact.pname = "Jean";
  contact.phone = "555-555-5555";  
  contact.email = "jean.echantillon@gmail.com";  
  entries.contacts.add(contact); 
 
  contact = new Contact(entries.contacts.concept); 
  contact.idcontact = "2";
  contact.name = "Doe"; 
  contact.pname = "John"; 
  contact.phone = "555-555-5556";  
  contact.email = "john.doe@gmail.com"; 
  entries.contacts.add(contact); 
 
  contact = new Contact(entries.contacts.concept);
  contact.idcontact = "3";
  contact.name = "Échantillon";
  contact.pname = "Jeanne";  
  contact.phone = "555-555-5557";  
  contact.email = "jeanne.echantillon@gmail.com";
  entries.contacts.add(contact);   
 
} 
 
