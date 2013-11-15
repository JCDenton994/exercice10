part of contact_dwt_app;

class Header extends ui.VerticalPanel {
  ui.Button _create;
  
  Header(ContactApp contactApp) {
    DomainSession session = contactApp.session;
    Contacts contacts = contactApp.contacts;

    spacing = 16;

    var title = new ui.Label('Contacts');
    title.addStyleName("title");
    add(title);
    
    var hPanel1 = new ui.HorizontalPanel();
    hPanel1.spacing = 8;
    add(hPanel1);
    
    var hPanel2 = new ui.HorizontalPanel();
    hPanel2.spacing = 8;
    add(hPanel2);
    
    var hPanel3 = new ui.HorizontalPanel();
    hPanel3.spacing = 8;
    add(hPanel3);
    
    var hPanel4 = new ui.HorizontalPanel();
    hPanel4.spacing = 8;
    add(hPanel4);
    
    var hPanel5 = new ui.HorizontalPanel();
    hPanel5.spacing = 8;
    add(hPanel5);

    
    var IDlabel = new ui.Label('IDContact :');
    var newIDContact = new ui.TextBox();
    newIDContact.addStyleName('contact-input');
    var Namelabel = new ui.Label('Last Name :');
    var newName = new ui.TextBox();
    newName.addStyleName('contact-input');
    var Pnamelabel = new ui.Label('First Name :');
    var newPname = new ui.TextBox();
    newPname.addStyleName('contact-input');
    var Emaillabel = new ui.Label('Email :');
    var newEmail = new ui.TextBox();
    newEmail.addStyleName('contact-input');
    var Phonelabel = new ui.Label('Phone :');
    var newPhone = new ui.TextBox();
    newPhone.addStyleName('contact-input');
    
    _create = new ui.Button(
        'Create', new event.ClickHandlerAdapter((event.ClickEvent e) {
            var title = newIDContact.text.trim();
            if (title != '') {
              var contact = new Contact(contacts.concept);
              contact.idcontact = title;
              new AddAction(session, contacts, contact).doit();
              newIDContact.text = '';
            }
        }));
    hPanel1.add(IDlabel);
    hPanel1.add(newIDContact);
    hPanel2.add(Namelabel);
    hPanel2.add(newName);
    hPanel3.add(Pnamelabel);
    hPanel3.add(newPname);
    hPanel4.add(Emaillabel);
    hPanel4.add(newEmail);
    hPanel5.add(Phonelabel);
    hPanel5.add(newPhone);
    add(_create);
  }
}

  
  