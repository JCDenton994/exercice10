 
// test/contact/dwt/contact_dwt_gen.dart 
 
import "package:dartling/dartling.dart"; 
 
import "package:contact_dwt/contact_dwt.dart"; 
 
genCode() { 
  var repo = new Repo(); 
 
  var contactDomain = new Domain("Contact"); 
 
  Model contactDwtModel = 
      fromJsonToModel(contactDwtModelJson, contactDomain, "Dwt"); 
 
  repo.domains.add(contactDomain); 
 
  repo.gen("contact_dwt"); 
} 
 
initContactData(ContactRepo contactRepo) { 
   var contactModels = 
       contactRepo.getDomainModels(ContactRepo.contactDomainCode); 
 
   var contactDwtEntries = 
       contactModels.getModelEntries(ContactRepo.contactDwtModelCode); 
   initContactDwt(contactDwtEntries); 
   contactDwtEntries.display(); 
   contactDwtEntries.displayJson(); 
} 
 
void main() { 
  genCode(); 
 
  var contactRepo = new ContactRepo(); 
  initContactData(contactRepo); 
} 
 
