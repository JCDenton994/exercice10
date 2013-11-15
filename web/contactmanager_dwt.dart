 
// web/contact/dwt/contact_dwt_web.dart 
 
import "dart:html"; 
import "package:dartling/dartling.dart"; 
import "package:dartling_default_app/dartling_default_app.dart"; 
import "package:contact_dwt/contact_dwt.dart"; 
import "package:contact_dwt/contact_dwt_app.dart"; 


void main() { 
  var repo = new ContactRepo(); 
  var domain = repo.getDomainModels('Contact');
  new ContactApp(domain);
} 
 
