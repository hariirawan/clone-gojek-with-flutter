class Navigation {
  final int id;
  final String name;
  final String icon;

  Navigation({this.id, this.name, this.icon});
}

final Navigation home =
    Navigation(id: 0, name: "Home", icon: 'images/home.png');
final Navigation orders =
    Navigation(id: 0, name: "Orders", icon: 'images/orders.png');
final Navigation chat =
    Navigation(id: 0, name: "Chat", icon: 'images/chat.png');
final Navigation inbox =
    Navigation(id: 0, name: "Inbox", icon: 'images/inbox.png');
final Navigation account =
    Navigation(id: 0, name: "Account", icon: 'images/account.png');

List<Navigation> menus = [home, orders, chat, inbox, account];
