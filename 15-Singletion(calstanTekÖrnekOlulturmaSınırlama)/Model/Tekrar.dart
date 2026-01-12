class SingletionPro {
  static SingletionPro singletionPro = SingletionPro._('a');
  String apikey;
  SingletionPro._(this.apikey) {}
}

class SingletionLazyPro {
  static SingletionLazyPro? _instance;
  //  SingletionLazyPro._init('admin2');
  static SingletionLazyPro get instance {
    if (_instance == null)
      return SingletionLazyPro._init('admin');
    else {
      return _instance!;
    }
  }

  String apikey;
  SingletionLazyPro._init(this.apikey);
}
