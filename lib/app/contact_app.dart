part of contact_dwt_app;

class ContactApp {
  ContactModels domain;
  DomainSession session;
  Contacts contacts;
  
  ContactApp(this.domain) {
    session = domain.newSession();
    DwtEntries model = domain.getModelEntries('Dwt');
    contacts = model.contacts;
    
    var root = ui.RootPanel.get();
    var contactApp = new ui.VerticalPanel();
    contactApp.spacing = 8;
    root.add(contactApp);
    var header = new Header(this);
    contactApp.add(header);
    var contactlist = new ContactLists(this);
    contactApp.add(contactlist);
  }
  
  save() {
    window.localStorage['contacts'] =JSON.encode(contacts.toJson());
  }
}