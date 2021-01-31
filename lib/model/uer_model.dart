class User{
    int id;
    String name;
    String phone;
    String age;
    String qsn4Answer;
    String qsn5Answer;
    String qsn6Answer;
    String qsn11Answer;
    String qsn12Answer;
    String qsn13Answer;
    String qsn15Answer;
    String qsn16Answer;
    String qsn17Answer;
    String qsn20Answer;
    String qsn25Answer;
    String qsn26Answer;
    String qsn28Answer;
    String qsn29Answer;
    String qsn32Answer;
    int groupValue33 ;
    String qsn34Answer;
    String qsn35Answer;
    int groupValue37;
    int groupValue38;
    String qsn39Answer;
    String qsn40Answer;
    String qsn41Answer;

    User(
        this.id,
      this.name,
      this.phone,
      this.age,
      this.qsn4Answer,
      this.qsn5Answer,
      this.qsn6Answer,
      this.qsn11Answer,
      this.qsn12Answer,
      this.qsn13Answer,
      this.qsn15Answer,
      this.qsn16Answer,
      this.qsn17Answer,
      this.qsn20Answer,
      this.qsn25Answer,
      this.qsn26Answer,
      this.qsn28Answer,
      this.qsn29Answer,
      this.qsn32Answer,
      this.groupValue33,
      this.qsn34Answer,
      this.qsn35Answer,
      this.groupValue37,
      this.groupValue38,
      this.qsn39Answer,
      this.qsn40Answer,
      this.qsn41Answer);

    Map<String, dynamic> toMap() {
        var map = <String, dynamic>{
            'name': name,
            'phone': phone,
            'age': age,
            'qsn4Answer': qsn4Answer,
            'qsn5Answer': qsn5Answer,
            'qsn6Answer': qsn6Answer,
            'qsn11Answer': qsn11Answer,
            'qsn12Answer': qsn12Answer,
            'qsn13Answer': qsn13Answer,
            'qsn15Answer': qsn15Answer,
            'qsn16Answer': qsn16Answer,
            'qsn17Answer': qsn17Answer,
            'qsn20Answer': qsn20Answer,
            'qsn25Answer': qsn25Answer,
            'qsn26Answer': qsn26Answer,
            'qsn28Answer': qsn28Answer,
            'qsn29Answer': qsn29Answer,
            'qsn32Answer': qsn32Answer,
            'groupValue33': groupValue33,
            'qsn34Answer': qsn34Answer,
            'qsn35Answer': qsn35Answer,
            'groupValue37': groupValue37,
            'groupValue38': groupValue38,
            'qsn39Answer': qsn39Answer,
            'qsn40Answer': qsn40Answer,
            'qsn41Answer': qsn41Answer,
        };
        return map;
    }

    User.fromMap(Map<String, dynamic> map) {
        name = map['name'];
        phone = map['phone'];
        age = map['age'];
        qsn4Answer = map['qsn4Answer'];
        qsn5Answer = map['qsn5Answer'];
        qsn6Answer = map['qsn6Answer'];
        qsn11Answer = map['qsn11Answer'];
        qsn12Answer = map['qsn12Answer'];
        qsn13Answer = map['qsn13Answer'];
        qsn15Answer = map['qsn15Answer'];
        qsn16Answer = map['qsn16Answer'];
        qsn17Answer = map['qsn17Answer'];
        qsn20Answer = map['qsn20Answer'];
        qsn25Answer = map['qsn25Answer'];
        qsn26Answer = map['qsn26Answer'];
        qsn28Answer = map['qsn28Answer'];
        qsn29Answer = map['qsn29Answer'];
        qsn32Answer = map['qsn32Answer'];
        groupValue33 = map['groupValue33'];
        qsn34Answer = map['qsn34Answer'];
        qsn35Answer = map['qsn35Answer'];
        groupValue37 = map['groupValue37'];
        groupValue38 = map['groupValue38'];
        qsn39Answer = map['qsn39Answer'];
        qsn40Answer = map['qsn40Answer'];
        qsn41Answer = map['qsn41Answer'];
    }
}