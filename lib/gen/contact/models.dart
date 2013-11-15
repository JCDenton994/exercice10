part of contact_dwt; 
 
// lib/gen/contact/models.dart 
 
class ContactModels extends DomainModels { 
 
  ContactModels(Domain domain) : super(domain) { 
    add(fromJsonToDwtEntries()); 
  } 
 
  DwtEntries fromJsonToDwtEntries() { 
    return new DwtEntries(fromJsonToModel( 
      contactDwtModelJson, 
      domain, 
      ContactRepo.contactDwtModelCode)); 
  } 
 
} 
 
