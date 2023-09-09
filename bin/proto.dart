class UserBase {
  String? id;
  String? nm;
  String? logo;

  UserBase({this.id, this.nm, this.logo});

  UserBase.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    nm = json['Nm'];
    logo = json['Logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id != null) {
      data['Id'] = id;
    }
    if (nm != null) {
      data['Nm'] = nm;
    }
    if (logo != null) {
      data['Logo'] = logo;
    }
    return data;
  }
}

class Photo {
  String? key;
  bool? real;

  Photo({this.key, this.real});

  Photo.fromJson(Map<String, dynamic> json) {
    key = json['Key'];
    real = json['Real'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (key != null) {
      data['Key'] = key;
    }
    if (real != null) {
      data['Real'] = real;
    }
    return data;
  }
}

class Shot {
  String? key;
  bool? certified;

  Shot({this.key, this.certified});

  Shot.fromJson(Map<String, dynamic> json) {
    key = json['Key'];
    certified = json['Certified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (key != null) {
      data['Key'] = key;
    }
    if (certified != null) {
      data['Certified'] = certified;
    }
    return data;
  }
}

class Memo {
  String? userId;
  bool? isMeet;
  int? like;
  String? memoName;
  List<String>? photoKey;

  Memo({this.userId, this.isMeet, this.like, this.memoName, this.photoKey});

  Memo.fromJson(Map<String, dynamic> json) {
    userId = json['UserId'];
    isMeet = json['IsMeet'];
    like = json['Like'];
    memoName = json['MemoName'];
    photoKey = json['PhotoKey']?.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (userId != null) {
      data['UserId'] = userId;
    }
    if (isMeet != null) {
      data['IsMeet'] = isMeet;
    }
    if (like != null) {
      data['Like'] = like;
    }
    if (memoName != null) {
      data['MemoName'] = memoName;
    }
    if (photoKey != null) {
      data['PhotoKey'] = photoKey;
    }
    return data;
  }
}

class User {
  String? id;
  String? nm;
  String? logo;
  int? sex;
  int? height;
  int? weight;
  DateTime? birthdate;
  bool? certified;
  String? nowDemands;
  bool? nowHavePlace;
  DateTime? lastTime;
  String? gpsName;
  DateTime? regTime;
  String? style;
  String? degree;
  String? career;
  String? income;
  List<String>? labels;
  String? logoBig;
  List<Photo>? photo;
  int? demands;
  String? intro;
  String? school;
  String? company;
  String? hp;
  String? pwd;
  List<Shot>? shot;
  String? wechat;
  List<double>? gps;
  DateTime? vipTime;
  DateTime? banTime;
  List<String>? blackHp;
  List<String>? blackWechat;
  List<String>? blackId;
  int? showHeightMin;
  int? showHeightMax;
  int? showWeightMin;
  int? showWeightMax;
  int? showAgeMin;
  int? showAgeMax;
  int? showMaxDist;
  bool? showMeet;
  bool? showNotLike;
  List<Memo>? memo;
  double? bestScore;
  DateTime? createdAt;
  DateTime? updatedAt;

  User(
      {this.id,
      this.nm,
      this.logo,
      this.sex,
      this.height,
      this.weight,
      this.birthdate,
      this.certified,
      this.nowDemands,
      this.nowHavePlace,
      this.lastTime,
      this.gpsName,
      this.regTime,
      this.style,
      this.degree,
      this.career,
      this.income,
      this.labels,
      this.logoBig,
      this.photo,
      this.demands,
      this.intro,
      this.school,
      this.company,
      this.hp,
      this.pwd,
      this.shot,
      this.wechat,
      this.gps,
      this.vipTime,
      this.banTime,
      this.blackHp,
      this.blackWechat,
      this.blackId,
      this.showHeightMin,
      this.showHeightMax,
      this.showWeightMin,
      this.showWeightMax,
      this.showAgeMin,
      this.showAgeMax,
      this.showMaxDist,
      this.showMeet,
      this.showNotLike,
      this.memo,
      this.bestScore,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    nm = json['Nm'];
    logo = json['Logo'];
    sex = json['Sex'];
    height = json['Height'];
    weight = json['Weight'];
    birthdate =
        json['Birthdate'] != null ? DateTime.tryParse(json['Birthdate']) : null;
    certified = json['Certified'];
    nowDemands = json['NowDemands'];
    nowHavePlace = json['NowHavePlace'];
    lastTime =
        json['LastTime'] != null ? DateTime.tryParse(json['LastTime']) : null;
    gpsName = json['GpsName'];
    regTime =
        json['RegTime'] != null ? DateTime.tryParse(json['RegTime']) : null;
    style = json['Style'];
    degree = json['Degree'];
    career = json['Career'];
    income = json['Income'];
    labels = json['Labels']?.cast<String>();
    logoBig = json['LogoBig'];
    if (json['Photo'] != null) {
      photo = <Photo>[];
      json['Photo'].forEach((v) {
        photo!.add(Photo.fromJson(v));
      });
    }
    demands = json['Demands'];
    intro = json['Intro'];
    school = json['School'];
    company = json['Company'];
    hp = json['Hp'];
    pwd = json['Pwd'];
    if (json['Shot'] != null) {
      shot = <Shot>[];
      json['Shot'].forEach((v) {
        shot!.add(Shot.fromJson(v));
      });
    }
    wechat = json['Wechat'];
    gps = json['Gps']?.cast<double>();
    vipTime =
        json['VipTime'] != null ? DateTime.tryParse(json['VipTime']) : null;
    banTime =
        json['BanTime'] != null ? DateTime.tryParse(json['BanTime']) : null;
    blackHp = json['BlackHp']?.cast<String>();
    blackWechat = json['BlackWechat']?.cast<String>();
    blackId = json['BlackId']?.cast<String>();
    showHeightMin = json['ShowHeightMin'];
    showHeightMax = json['ShowHeightMax'];
    showWeightMin = json['ShowWeightMin'];
    showWeightMax = json['ShowWeightMax'];
    showAgeMin = json['ShowAgeMin'];
    showAgeMax = json['ShowAgeMax'];
    showMaxDist = json['ShowMaxDist'];
    showMeet = json['ShowMeet'];
    showNotLike = json['ShowNotLike'];
    if (json['Memo'] != null) {
      memo = <Memo>[];
      json['Memo'].forEach((v) {
        memo!.add(Memo.fromJson(v));
      });
    }
    bestScore = json['BestScore'];
    createdAt = json['created_at'] != null
        ? DateTime.tryParse(json['created_at'])
        : null;
    updatedAt = json['updated_at'] != null
        ? DateTime.tryParse(json['updated_at'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id != null) {
      data['Id'] = id;
    }
    if (nm != null) {
      data['Nm'] = nm;
    }
    if (logo != null) {
      data['Logo'] = logo;
    }
    if (sex != null) {
      data['Sex'] = sex;
    }
    if (height != null) {
      data['Height'] = height;
    }
    if (weight != null) {
      data['Weight'] = weight;
    }
    if (birthdate != null) {
      data['Birthdate'] = birthdate!.toIso8601String();
    }
    if (certified != null) {
      data['Certified'] = certified;
    }
    if (nowDemands != null) {
      data['NowDemands'] = nowDemands;
    }
    if (nowHavePlace != null) {
      data['NowHavePlace'] = nowHavePlace;
    }
    if (lastTime != null) {
      data['LastTime'] = lastTime!.toIso8601String();
    }
    if (gpsName != null) {
      data['GpsName'] = gpsName;
    }
    if (regTime != null) {
      data['RegTime'] = regTime!.toIso8601String();
    }
    if (style != null) {
      data['Style'] = style;
    }
    if (degree != null) {
      data['Degree'] = degree;
    }
    if (career != null) {
      data['Career'] = career;
    }
    if (income != null) {
      data['Income'] = income;
    }
    if (labels != null) {
      data['Labels'] = labels;
    }
    if (logoBig != null) {
      data['LogoBig'] = logoBig;
    }
    if (photo != null) {
      data['Photo'] = photo!.map((v) => v.toJson()).toList();
    }
    if (demands != null) {
      data['Demands'] = demands;
    }
    if (intro != null) {
      data['Intro'] = intro;
    }
    if (school != null) {
      data['School'] = school;
    }
    if (company != null) {
      data['Company'] = company;
    }
    if (hp != null) {
      data['Hp'] = hp;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (shot != null) {
      data['Shot'] = shot!.map((v) => v.toJson()).toList();
    }
    if (wechat != null) {
      data['Wechat'] = wechat;
    }
    if (gps != null) {
      data['Gps'] = gps;
    }
    if (vipTime != null) {
      data['VipTime'] = vipTime!.toIso8601String();
    }
    if (banTime != null) {
      data['BanTime'] = banTime!.toIso8601String();
    }
    if (blackHp != null) {
      data['BlackHp'] = blackHp;
    }
    if (blackWechat != null) {
      data['BlackWechat'] = blackWechat;
    }
    if (blackId != null) {
      data['BlackId'] = blackId;
    }
    if (showHeightMin != null) {
      data['ShowHeightMin'] = showHeightMin;
    }
    if (showHeightMax != null) {
      data['ShowHeightMax'] = showHeightMax;
    }
    if (showWeightMin != null) {
      data['ShowWeightMin'] = showWeightMin;
    }
    if (showWeightMax != null) {
      data['ShowWeightMax'] = showWeightMax;
    }
    if (showAgeMin != null) {
      data['ShowAgeMin'] = showAgeMin;
    }
    if (showAgeMax != null) {
      data['ShowAgeMax'] = showAgeMax;
    }
    if (showMaxDist != null) {
      data['ShowMaxDist'] = showMaxDist;
    }
    if (showMeet != null) {
      data['ShowMeet'] = showMeet;
    }
    if (showNotLike != null) {
      data['ShowNotLike'] = showNotLike;
    }
    if (memo != null) {
      data['Memo'] = memo!.map((v) => v.toJson()).toList();
    }
    if (bestScore != null) {
      data['BestScore'] = bestScore;
    }
    if (createdAt != null) {
      data['created_at'] = createdAt!.toIso8601String();
    }
    if (updatedAt != null) {
      data['updated_at'] = updatedAt!.toIso8601String();
    }
    return data;
  }
}

class UserSummer {
  String? id;
  String? nm;
  String? logo;
  int? sex;
  int? height;
  int? weight;
  DateTime? birthdate;
  bool? certified;
  String? nowDemands;
  bool? nowHavePlace;
  DateTime? lastTime;
  String? gpsName;
  double? dist;
  bool? online;
  bool? isMeet;
  int? like;

  UserSummer(
      {this.id,
      this.nm,
      this.logo,
      this.sex,
      this.height,
      this.weight,
      this.birthdate,
      this.certified,
      this.nowDemands,
      this.nowHavePlace,
      this.lastTime,
      this.gpsName,
      this.dist,
      this.online,
      this.isMeet,
      this.like});

  UserSummer.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    nm = json['Nm'];
    logo = json['Logo'];
    sex = json['Sex'];
    height = json['Height'];
    weight = json['Weight'];
    birthdate =
        json['Birthdate'] != null ? DateTime.tryParse(json['Birthdate']) : null;
    certified = json['Certified'];
    nowDemands = json['NowDemands'];
    nowHavePlace = json['NowHavePlace'];
    lastTime =
        json['LastTime'] != null ? DateTime.tryParse(json['LastTime']) : null;
    gpsName = json['GpsName'];
    dist = json['Dist'];
    online = json['Online'];
    isMeet = json['IsMeet'];
    like = json['Like'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id != null) {
      data['Id'] = id;
    }
    if (nm != null) {
      data['Nm'] = nm;
    }
    if (logo != null) {
      data['Logo'] = logo;
    }
    if (sex != null) {
      data['Sex'] = sex;
    }
    if (height != null) {
      data['Height'] = height;
    }
    if (weight != null) {
      data['Weight'] = weight;
    }
    if (birthdate != null) {
      data['Birthdate'] = birthdate!.toIso8601String();
    }
    if (certified != null) {
      data['Certified'] = certified;
    }
    if (nowDemands != null) {
      data['NowDemands'] = nowDemands;
    }
    if (nowHavePlace != null) {
      data['NowHavePlace'] = nowHavePlace;
    }
    if (lastTime != null) {
      data['LastTime'] = lastTime!.toIso8601String();
    }
    if (gpsName != null) {
      data['GpsName'] = gpsName;
    }
    if (dist != null) {
      data['Dist'] = dist;
    }
    if (online != null) {
      data['Online'] = online;
    }
    if (isMeet != null) {
      data['IsMeet'] = isMeet;
    }
    if (like != null) {
      data['Like'] = like;
    }
    return data;
  }
}

class UserDetail {
  String? id;
  String? nm;
  String? logo;
  int? sex;
  int? height;
  int? weight;
  DateTime? birthdate;
  bool? certified;
  String? nowDemands;
  bool? nowHavePlace;
  DateTime? lastTime;
  String? gpsName;
  DateTime? regTime;
  String? style;
  String? degree;
  String? career;
  String? income;
  List<String>? labels;
  String? logoBig;
  List<Photo>? photo;
  int? demands;
  String? intro;
  String? school;
  String? company;
  double? dist;
  bool? online;
  Memo? memo;

  UserDetail(
      {this.id,
      this.nm,
      this.logo,
      this.sex,
      this.height,
      this.weight,
      this.birthdate,
      this.certified,
      this.nowDemands,
      this.nowHavePlace,
      this.lastTime,
      this.gpsName,
      this.regTime,
      this.style,
      this.degree,
      this.career,
      this.income,
      this.labels,
      this.logoBig,
      this.photo,
      this.demands,
      this.intro,
      this.school,
      this.company,
      this.dist,
      this.online,
      this.memo});

  UserDetail.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    nm = json['Nm'];
    logo = json['Logo'];
    sex = json['Sex'];
    height = json['Height'];
    weight = json['Weight'];
    birthdate =
        json['Birthdate'] != null ? DateTime.tryParse(json['Birthdate']) : null;
    certified = json['Certified'];
    nowDemands = json['NowDemands'];
    nowHavePlace = json['NowHavePlace'];
    lastTime =
        json['LastTime'] != null ? DateTime.tryParse(json['LastTime']) : null;
    gpsName = json['GpsName'];
    regTime =
        json['RegTime'] != null ? DateTime.tryParse(json['RegTime']) : null;
    style = json['Style'];
    degree = json['Degree'];
    career = json['Career'];
    income = json['Income'];
    labels = json['Labels']?.cast<String>();
    logoBig = json['LogoBig'];
    if (json['Photo'] != null) {
      photo = <Photo>[];
      json['Photo'].forEach((v) {
        photo!.add(Photo.fromJson(v));
      });
    }
    demands = json['Demands'];
    intro = json['Intro'];
    school = json['School'];
    company = json['Company'];
    dist = json['Dist'];
    online = json['Online'];
    memo = json['Memo'] != null ? Memo.fromJson(json['Memo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id != null) {
      data['Id'] = id;
    }
    if (nm != null) {
      data['Nm'] = nm;
    }
    if (logo != null) {
      data['Logo'] = logo;
    }
    if (sex != null) {
      data['Sex'] = sex;
    }
    if (height != null) {
      data['Height'] = height;
    }
    if (weight != null) {
      data['Weight'] = weight;
    }
    if (birthdate != null) {
      data['Birthdate'] = birthdate!.toIso8601String();
    }
    if (certified != null) {
      data['Certified'] = certified;
    }
    if (nowDemands != null) {
      data['NowDemands'] = nowDemands;
    }
    if (nowHavePlace != null) {
      data['NowHavePlace'] = nowHavePlace;
    }
    if (lastTime != null) {
      data['LastTime'] = lastTime!.toIso8601String();
    }
    if (gpsName != null) {
      data['GpsName'] = gpsName;
    }
    if (regTime != null) {
      data['RegTime'] = regTime!.toIso8601String();
    }
    if (style != null) {
      data['Style'] = style;
    }
    if (degree != null) {
      data['Degree'] = degree;
    }
    if (career != null) {
      data['Career'] = career;
    }
    if (income != null) {
      data['Income'] = income;
    }
    if (labels != null) {
      data['Labels'] = labels;
    }
    if (logoBig != null) {
      data['LogoBig'] = logoBig;
    }
    if (photo != null) {
      data['Photo'] = photo!.map((v) => v.toJson()).toList();
    }
    if (demands != null) {
      data['Demands'] = demands;
    }
    if (intro != null) {
      data['Intro'] = intro;
    }
    if (school != null) {
      data['School'] = school;
    }
    if (company != null) {
      data['Company'] = company;
    }
    if (dist != null) {
      data['Dist'] = dist;
    }
    if (online != null) {
      data['Online'] = online;
    }
    if (memo != null) {
      data['Memo'] = memo!.toJson();
    }
    return data;
  }
}

class ReqHead {
  String? iD;
  String? pwd;

  ReqHead({this.iD, this.pwd});

  ReqHead.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    return data;
  }
}

class RetHead {
  String? err;
  String? errDesc;

  RetHead({this.err, this.errDesc});

  RetHead.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class ReqLogin {
  String? iD;
  String? pwd;
  bool? isReg;
  User? user;

  ReqLogin({this.iD, this.pwd, this.isReg, this.user});

  ReqLogin.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    isReg = json['IsReg'];
    user = json['User'] != null ? User.fromJson(json['User']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (isReg != null) {
      data['IsReg'] = isReg;
    }
    if (user != null) {
      data['User'] = user!.toJson();
    }
    return data;
  }
}

class RetLogin {
  String? err;
  String? errDesc;
  User? user;

  RetLogin({this.err, this.errDesc, this.user});

  RetLogin.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
    user = json['User'] != null ? User.fromJson(json['User']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    if (user != null) {
      data['User'] = user!.toJson();
    }
    return data;
  }
}

class ReqGetMe {
  String? iD;
  String? pwd;

  ReqGetMe({this.iD, this.pwd});

  ReqGetMe.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    return data;
  }
}

class RetGetMe {
  String? err;
  String? errDesc;
  User? user;

  RetGetMe({this.err, this.errDesc, this.user});

  RetGetMe.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
    user = json['User'] != null ? User.fromJson(json['User']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    if (user != null) {
      data['User'] = user!.toJson();
    }
    return data;
  }
}

class ReqSetMe {
  String? iD;
  String? pwd;
  User? user;
  List<String>? field;

  ReqSetMe({this.iD, this.pwd, this.user, this.field});

  ReqSetMe.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    user = json['User'] != null ? User.fromJson(json['User']) : null;
    field = json['Field']?.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (user != null) {
      data['User'] = user!.toJson();
    }
    if (field != null) {
      data['Field'] = field;
    }
    return data;
  }
}

class RetSetMe {
  String? err;
  String? errDesc;

  RetSetMe({this.err, this.errDesc});

  RetSetMe.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class ReqNear {
  String? iD;
  String? pwd;
  List<double>? gps;
  String? type;
  int? skip;
  int? limit;
  bool? showCertified;
  bool? showHavePlace;
  bool? showOnline;
  bool? showNoContact;

  ReqNear(
      {this.iD,
      this.pwd,
      this.gps,
      this.type,
      this.skip,
      this.limit,
      this.showCertified,
      this.showHavePlace,
      this.showOnline,
      this.showNoContact});

  ReqNear.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    gps = json['Gps']?.cast<double>();
    type = json['Type'];
    skip = json['Skip'];
    limit = json['Limit'];
    showCertified = json['ShowCertified'];
    showHavePlace = json['ShowHavePlace'];
    showOnline = json['ShowOnline'];
    showNoContact = json['ShowNoContact'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (gps != null) {
      data['Gps'] = gps;
    }
    if (type != null) {
      data['Type'] = type;
    }
    if (skip != null) {
      data['Skip'] = skip;
    }
    if (limit != null) {
      data['Limit'] = limit;
    }
    if (showCertified != null) {
      data['ShowCertified'] = showCertified;
    }
    if (showHavePlace != null) {
      data['ShowHavePlace'] = showHavePlace;
    }
    if (showOnline != null) {
      data['ShowOnline'] = showOnline;
    }
    if (showNoContact != null) {
      data['ShowNoContact'] = showNoContact;
    }
    return data;
  }
}

class RetNear {
  String? err;
  String? errDesc;
  List<UserSummer>? userSummer;

  RetNear({this.err, this.errDesc, this.userSummer});

  RetNear.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
    if (json['UserSummer'] != null) {
      userSummer = <UserSummer>[];
      json['UserSummer'].forEach((v) {
        userSummer!.add(UserSummer.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    if (userSummer != null) {
      data['UserSummer'] = userSummer!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ReqDetail {
  String? iD;
  String? pwd;
  String? userId;

  ReqDetail({this.iD, this.pwd, this.userId});

  ReqDetail.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    userId = json['UserId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (userId != null) {
      data['UserId'] = userId;
    }
    return data;
  }
}

class RetDetail {
  String? err;
  String? errDesc;
  UserDetail? userDetail;

  RetDetail({this.err, this.errDesc, this.userDetail});

  RetDetail.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
    userDetail = json['UserDetail'] != null
        ? UserDetail.fromJson(json['UserDetail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    if (userDetail != null) {
      data['UserDetail'] = userDetail!.toJson();
    }
    return data;
  }
}

class ReqGetContact {
  String? iD;
  String? pwd;
  String? toId;

  ReqGetContact({this.iD, this.pwd, this.toId});

  ReqGetContact.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    toId = json['ToId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (toId != null) {
      data['ToId'] = toId;
    }
    return data;
  }
}

class RetGetContact {
  String? err;
  String? errDesc;
  String? wechat;

  RetGetContact({this.err, this.errDesc, this.wechat});

  RetGetContact.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
    wechat = json['Wechat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    if (wechat != null) {
      data['Wechat'] = wechat;
    }
    return data;
  }
}

class ReqBlack {
  String? iD;
  String? pwd;
  String? type;
  String? key;

  ReqBlack({this.iD, this.pwd, this.type, this.key});

  ReqBlack.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    type = json['Type'];
    key = json['Key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (type != null) {
      data['Type'] = type;
    }
    if (key != null) {
      data['Key'] = key;
    }
    return data;
  }
}

class RetBlack {
  String? err;
  String? errDesc;
  String? key;

  RetBlack({this.err, this.errDesc, this.key});

  RetBlack.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
    key = json['Key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    if (key != null) {
      data['Key'] = key;
    }
    return data;
  }
}

class ReqBlackId {
  String? iD;
  String? pwd;
  int? blackId;

  ReqBlackId({this.iD, this.pwd, this.blackId});

  ReqBlackId.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    blackId = json['BlackId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (blackId != null) {
      data['BlackId'] = blackId;
    }
    return data;
  }
}

class RetBlackId {
  String? err;
  String? errDesc;
  UserBase? userBase;

  RetBlackId({this.err, this.errDesc, this.userBase});

  RetBlackId.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
    userBase =
        json['UserBase'] != null ? UserBase.fromJson(json['UserBase']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    if (userBase != null) {
      data['UserBase'] = userBase!.toJson();
    }
    return data;
  }
}

class ReqBlackIdList {
  String? iD;
  String? pwd;

  ReqBlackIdList({this.iD, this.pwd});

  ReqBlackIdList.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    return data;
  }
}

class RetBlackIdList {
  String? err;
  String? errDesc;
  List<UserBase>? userBase;

  RetBlackIdList({this.err, this.errDesc, this.userBase});

  RetBlackIdList.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
    if (json['UserBase'] != null) {
      userBase = <UserBase>[];
      json['UserBase'].forEach((v) {
        userBase!.add(UserBase.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    if (userBase != null) {
      data['UserBase'] = userBase!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ReqLogout {
  String? iD;
  String? pwd;

  ReqLogout({this.iD, this.pwd});

  ReqLogout.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    return data;
  }
}

class RetLogout {
  String? err;
  String? errDesc;

  RetLogout({this.err, this.errDesc});

  RetLogout.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class UserReport {
  int? id;
  int? userId;
  String? subj;
  String? content;
  String? imgKey;

  UserReport({this.id, this.userId, this.subj, this.content, this.imgKey});

  UserReport.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    userId = json['UserId'];
    subj = json['Subj'];
    content = json['Content'];
    imgKey = json['ImgKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id != null) {
      data['Id'] = id;
    }
    if (userId != null) {
      data['UserId'] = userId;
    }
    if (subj != null) {
      data['Subj'] = subj;
    }
    if (content != null) {
      data['Content'] = content;
    }
    if (imgKey != null) {
      data['ImgKey'] = imgKey;
    }
    return data;
  }
}

class ReqReport {
  String? iD;
  String? pwd;
  UserReport? userReport;

  ReqReport({this.iD, this.pwd, this.userReport});

  ReqReport.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    userReport = json['UserReport'] != null
        ? UserReport.fromJson(json['UserReport'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (userReport != null) {
      data['UserReport'] = userReport!.toJson();
    }
    return data;
  }
}

class RetReport {
  String? err;
  String? errDesc;

  RetReport({this.err, this.errDesc});

  RetReport.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class ReqSetMemo {
  String? iD;
  String? pwd;
  Memo? memo;

  ReqSetMemo({this.iD, this.pwd, this.memo});

  ReqSetMemo.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    memo = json['Memo'] != null ? Memo.fromJson(json['Memo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (memo != null) {
      data['Memo'] = memo!.toJson();
    }
    return data;
  }
}

class RetSetMemo {
  String? err;
  String? errDesc;

  RetSetMemo({this.err, this.errDesc});

  RetSetMemo.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class ReqGetMemo {
  String? iD;
  String? pwd;
  int? userId;

  ReqGetMemo({this.iD, this.pwd, this.userId});

  ReqGetMemo.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    userId = json['UserId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (userId != null) {
      data['UserId'] = userId;
    }
    return data;
  }
}

class RetGetMemo {
  String? err;
  String? errDesc;
  Memo? memo;

  RetGetMemo({this.err, this.errDesc, this.memo});

  RetGetMemo.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
    memo = json['Memo'] != null ? Memo.fromJson(json['Memo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    if (memo != null) {
      data['Memo'] = memo!.toJson();
    }
    return data;
  }
}

class ReqGmBan {
  String? iD;
  String? pwd;
  int? banId;
  bool? ban;
  int? banDuration;
  String? cause;

  ReqGmBan(
      {this.iD, this.pwd, this.banId, this.ban, this.banDuration, this.cause});

  ReqGmBan.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    banId = json['BanId'];
    ban = json['Ban'];
    banDuration = json['BanDuration'];
    cause = json['Cause'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (banId != null) {
      data['BanId'] = banId;
    }
    if (ban != null) {
      data['Ban'] = ban;
    }
    if (banDuration != null) {
      data['BanDuration'] = banDuration;
    }
    if (cause != null) {
      data['Cause'] = cause;
    }
    return data;
  }
}

class RetGmBan {
  String? err;
  String? errDesc;

  RetGmBan({this.err, this.errDesc});

  RetGmBan.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class GmMsg {
  String? subj;
  String? content;
  DateTime? msgTime;

  GmMsg({this.subj, this.content, this.msgTime});

  GmMsg.fromJson(Map<String, dynamic> json) {
    subj = json['Subj'];
    content = json['Content'];
    msgTime =
        json['MsgTime'] != null ? DateTime.tryParse(json['MsgTime']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (subj != null) {
      data['Subj'] = subj;
    }
    if (content != null) {
      data['Content'] = content;
    }
    if (msgTime != null) {
      data['MsgTime'] = msgTime!.toIso8601String();
    }
    return data;
  }
}

class ReqGmMsg {
  String? iD;
  String? pwd;
  int? userId;
  GmMsg? gmMsg;

  ReqGmMsg({this.iD, this.pwd, this.userId, this.gmMsg});

  ReqGmMsg.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    userId = json['UserId'];
    gmMsg = json['GmMsg'] != null ? GmMsg.fromJson(json['GmMsg']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (userId != null) {
      data['UserId'] = userId;
    }
    if (gmMsg != null) {
      data['GmMsg'] = gmMsg!.toJson();
    }
    return data;
  }
}

class RetGmMsg {
  String? err;
  String? errDesc;

  RetGmMsg({this.err, this.errDesc});

  RetGmMsg.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class ReqGmMsgList {
  String? iD;
  String? pwd;
  DateTime? lastTime;

  ReqGmMsgList({this.iD, this.pwd, this.lastTime});

  ReqGmMsgList.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    lastTime =
        json['LastTime'] != null ? DateTime.tryParse(json['LastTime']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (lastTime != null) {
      data['LastTime'] = lastTime!.toIso8601String();
    }
    return data;
  }
}

class RetGmMsgList {
  String? err;
  String? errDesc;
  List<GmMsg>? gmMsg;

  RetGmMsgList({this.err, this.errDesc, this.gmMsg});

  RetGmMsgList.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
    if (json['GmMsg'] != null) {
      gmMsg = <GmMsg>[];
      json['GmMsg'].forEach((v) {
        gmMsg!.add(GmMsg.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    if (gmMsg != null) {
      data['GmMsg'] = gmMsg!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OssUrl {
  String? key;
  String? url;

  OssUrl({this.key, this.url});

  OssUrl.fromJson(Map<String, dynamic> json) {
    key = json['Key'];
    url = json['Url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (key != null) {
      data['Key'] = key;
    }
    if (url != null) {
      data['Url'] = url;
    }
    return data;
  }
}

class ReqOss {
  String? iD;
  String? pwd;
  String? regHp;
  String? regPwd;
  List<String>? ext;

  ReqOss({this.iD, this.pwd, this.regHp, this.regPwd, this.ext});

  ReqOss.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    pwd = json['Pwd'];
    regHp = json['RegHp'];
    regPwd = json['RegPwd'];
    ext = json['Ext']?.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD != null) {
      data['ID'] = iD;
    }
    if (pwd != null) {
      data['Pwd'] = pwd;
    }
    if (regHp != null) {
      data['RegHp'] = regHp;
    }
    if (regPwd != null) {
      data['RegPwd'] = regPwd;
    }
    if (ext != null) {
      data['Ext'] = ext;
    }
    return data;
  }
}

class RetOss {
  String? err;
  String? errDesc;
  List<OssUrl>? ossUrl;

  RetOss({this.err, this.errDesc, this.ossUrl});

  RetOss.fromJson(Map<String, dynamic> json) {
    err = json['Err'];
    errDesc = json['ErrDesc'];
    if (json['OssUrl'] != null) {
      ossUrl = <OssUrl>[];
      json['OssUrl'].forEach((v) {
        ossUrl!.add(OssUrl.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err != null) {
      data['Err'] = err;
    }
    if (errDesc != null) {
      data['ErrDesc'] = errDesc;
    }
    if (ossUrl != null) {
      data['OssUrl'] = ossUrl!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
