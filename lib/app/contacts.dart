part of contact_dwt_app;

class ContactLists extends ui.VerticalPanel implements ActionReactionApi {
  ContactApp _contactApp;
    
  ContactLists(this._contactApp) {
    _contactApp.domain.startActionReaction(this);
    _load(_contactApp.contacts);
    addStyleName('contactlist');
  }

  _load(Contacts contacts) {
    String json = window.localStorage['contacts'];
    if (json != null) {
      contacts.fromJson(JSON.decode(json));
      for (Contact contact in contacts) {
        _add(contact);
      }
    }
  }

  _add(Contact contact) {
    var contactlist = new ContactList(_contactApp, contact);
    add(contactlist);

  }
  
  ContactList _find(Contact contact) {
    for (int i = 0; i < getWidgetCount(); i++) {
      ContactList contactlist = getWidgetAt(i);
      if (contactlist.title == contact.idcontact) {
        return contactlist;
      }
    }
  }
  
  _remove(Contact contact) {
    var contactlist = _find(contact);
    if (contactlist != null) {
      remove(contactlist);
    }
  }
  
  react(ActionApi action) {
    if (action is AddAction) {
      if (action.undone) {
        _remove((action as AddAction).entity);
      } else {
        _add((action as AddAction).entity);
      }
    } else if (action is RemoveAction) {
      if (action.undone) {
        _add((action as RemoveAction).entity);
      } else {
        _remove((action as RemoveAction).entity);
      }
    }
    _contactApp.save();
  }
}


