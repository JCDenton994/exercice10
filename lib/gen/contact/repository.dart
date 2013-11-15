part of contact_dwt; 
 
// lib/gen/contact/repository.dart 
 
class ContactRepo extends Repo { 
 
  static final contactDomainCode = "Contact"; 
  static final contactDwtModelCode = "Dwt"; 
 
  ContactRepo([String code="ContactRepo"]) : super(code) { 
    _initContactDomain(); 
  } 
 
  _initContactDomain() { 
    var contactDomain = new Domain(contactDomainCode); 
    domains.add(contactDomain); 
    add(new ContactModels(contactDomain)); 
  } 
 
} 
 
