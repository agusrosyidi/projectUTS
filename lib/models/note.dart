// tambahkan disini nama field
class Note {
  int _id;
  String _title;
  String _description;
  String _telp;
  String _tanggal;
  String _alamat;
  String _email;
  String _date;
  int _priority;
  Note(this._title, this._date, this._telp, this._tanggal, this._alamat,
      this._email, this._priority,
      [this._description]);
  Note.withId(this._id, this._title, this._date, this._telp, this._tanggal,
      this._alamat, this._email, this._priority,
      [this._description]);
  //tambahkan di sini
  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get telp => _telp;
  String get tanggal => _tanggal;
  String get alamat => _alamat;
  String get email => _email;
  int get priority => _priority;
  String get date => _date;
  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  // tambahkan disini

  set telp(String newTelp) {
    if (newTelp.length <= 225) {
      this._telp = newTelp;
    }
  }

  set tanggal(String newTanggal) {
    if (newTanggal.length <= 225) {
      this._tanggal = newTanggal;
    }
  }

  set alamat(String newAlamat) {
    if (newAlamat.length <= 225) {
      this._alamat = newAlamat;
    }
  }

  set email(String newEmail) {
    if (newEmail.length <= 225) {
      this._email = newEmail;
    }
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    //tambahka di sini
    map['title'] = _title;
    map['description'] = _description;
    map['telp'] = _telp;
    map['tanggal'] = _tanggal;
    map['alamat'] = _alamat;
    map['email'] = _email;
    map['priority'] = _priority;
    map['date'] = _date;
    return map;
  }

  // Extract a Note object from a Map object
  Note.fromMapObject(Map<String, dynamic> map) {
    //tambahkan disini
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._telp = map['telp'];
    this._tanggal = map['tanggal'];
    this._alamat = map['alamat'];
    this._email = map['email'];
    this._priority = map['priority'];
    this._date = map['date'];
  }
}