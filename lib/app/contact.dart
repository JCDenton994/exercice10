part of contact_dwt_app;

class ContactList extends ui.HorizontalPanel {
  ui.CheckBox _completed;
  ui.Label _contactlist;
  ui.Label _namelist;
  ui.Label _pnamelist;
  ui.Label _emaillist;
  ui.Label _phonelist;
  
  

  ContactList(ContactApp contactApp, Contact contact) {
    
    DomainSession session = contactApp.session;
    Contacts contacts = contactApp.contacts;

    spacing = 8;

    _contactlist = new ui.Label(contact.idcontact);
    _contactlist.addStyleName('contactlist');
    add(_contactlist);
    _namelist = new ui.Label(contact.name);
    _namelist.addStyleName('contactlist');
    add(_namelist);
    _pnamelist = new ui.Label(contact.pname);
    _pnamelist.addStyleName('contactlist');
    add(_pnamelist);
    _emaillist = new ui.Label(contact.email);
    _emaillist.addStyleName('contactlist');
    add(_emaillist);
    _phonelist = new ui.Label(contact.phone);
    _phonelist.addStyleName('contactlist');
    add(_phonelist);

    ui.Button remove = new ui.Button(
        'X', new event.ClickHandlerAdapter((event.ClickEvent e) {
          new RemoveAction(session, contacts, contact).doit();
        }));
    remove.addStyleName('contact-button');
    add(remove);
  }

  String get title => _contactlist.text;
}