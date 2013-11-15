 
// web/contact/dwt/contact_dwt_web.dart 
 
import "dart:html"; 
 
import "package:dartling/dartling.dart"; 
import "package:dartling_default_app/dartling_default_app.dart"; 
 
import "package:contact_dwt/contact_dwt.dart"; 
 
initContactData(ContactRepo contactRepo) { 
   var contactModels = 
       contactRepo.getDomainModels(ContactRepo.contactDomainCode); 
 
   var contactDwtEntries = 
       contactModels.getModelEntries(ContactRepo.contactDwtModelCode); 
   initContactDwt(contactDwtEntries); 
   contactDwtEntries.display(); 
   contactDwtEntries.displayJson(); 
} 
 
showContactData(ContactRepo contactRepo) { 
   var mainView = new View(document, "main"); 
   mainView.repo = contactRepo; 
   new RepoMainSection(mainView); 
} 
 
void main() { 
  var contactRepo = new ContactRepo(); 
  initContactData(contactRepo); 
  showContactData(contactRepo); 
} 
 
