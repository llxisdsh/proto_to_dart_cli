class UserBase {
  late String id;
  late String nm;
  late String logo;

  UserBase({String? id, String? nm, String? logo})
      : id = id ?? '',
        nm = nm ?? '',
        logo = logo ?? '';

  UserBase.fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    nm = json['Nm'] ?? '';
    logo = json['Logo'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
    }
    if (nm.isNotEmpty) {
      data['Nm'] = nm;
    }
    if (logo.isNotEmpty) {
      data['Logo'] = logo;
    }
    return data;
  }
}

class Photo {
  late String key;
  late bool real;

  Photo({String? key, bool? real})
      : key = key ?? '',
        real = real ?? false;

  Photo.fromJson(Map<String, dynamic> json) {
    key = json['Key'] ?? '';
    real = json['Real'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (key.isNotEmpty) {
      data['Key'] = key;
    }
    if (real) {
      data['Real'] = real;
    }
    return data;
  }
}

class Shot {
  late String key;
  late bool certified;

  Shot({String? key, bool? certified})
      : key = key ?? '',
        certified = certified ?? false;

  Shot.fromJson(Map<String, dynamic> json) {
    key = json['Key'] ?? '';
    certified = json['Certified'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (key.isNotEmpty) {
      data['Key'] = key;
    }
    if (certified) {
      data['Certified'] = certified;
    }
    return data;
  }
}

class Memo {
  late String userId;
  late bool isMeet;
  late int like;
  late String memoName;
  late List<String> photoKey;

  Memo(
      {String? userId,
      bool? isMeet,
      int? like,
      String? memoName,
      List<String>? photoKey})
      : userId = userId ?? '',
        isMeet = isMeet ?? false,
        like = like ?? 0,
        memoName = memoName ?? '',
        photoKey = photoKey ?? [];

  Memo.fromJson(Map<String, dynamic> json) {
    userId = json['UserId'] ?? '';
    isMeet = json['IsMeet'] ?? false;
    like = json['Like'] ?? 0;
    memoName = json['MemoName'] ?? '';
    photoKey = json['PhotoKey']?.cast<String>() ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (userId.isNotEmpty) {
      data['UserId'] = userId;
    }
    if (isMeet) {
      data['IsMeet'] = isMeet;
    }
    if (like != 0) {
      data['Like'] = like;
    }
    if (memoName.isNotEmpty) {
      data['MemoName'] = memoName;
    }
    if (photoKey.isNotEmpty) {
      data['PhotoKey'] = photoKey;
    }
    return data;
  }
}

class User {
  late String id;
  late String nm;
  late String logo;
  late int sex;
  late int height;
  late int weight;
  late DateTime birthdate;
  late bool certified;
  late String nowDemands;
  late bool nowHavePlace;
  late DateTime lastTime;
  late String gpsName;
  late DateTime regTime;
  late String style;
  late String degree;
  late String career;
  late String income;
  late List<String> labels;
  late String logoBig;
  late List<Photo> photo;
  late int demands;
  late String intro;
  late String school;
  late String company;
  late String hp;
  late String pwd;
  late List<Shot> shot;
  late String wechat;
  late List<double> gps;
  late DateTime vipTime;
  late DateTime banTime;
  late List<String> blackHp;
  late List<String> blackWechat;
  late List<String> blackId;
  late int showHeightMin;
  late int showHeightMax;
  late int showWeightMin;
  late int showWeightMax;
  late int showAgeMin;
  late int showAgeMax;
  late int showMaxDist;
  late bool showMeet;
  late bool showNotLike;
  late List<Memo> memo;
  late double bestScore;
  late DateTime createdAt;
  late DateTime updatedAt;

  User(
      {String? id,
      String? nm,
      String? logo,
      int? sex,
      int? height,
      int? weight,
      DateTime? birthdate,
      bool? certified,
      String? nowDemands,
      bool? nowHavePlace,
      DateTime? lastTime,
      String? gpsName,
      DateTime? regTime,
      String? style,
      String? degree,
      String? career,
      String? income,
      List<String>? labels,
      String? logoBig,
      List<Photo>? photo,
      int? demands,
      String? intro,
      String? school,
      String? company,
      String? hp,
      String? pwd,
      List<Shot>? shot,
      String? wechat,
      List<double>? gps,
      DateTime? vipTime,
      DateTime? banTime,
      List<String>? blackHp,
      List<String>? blackWechat,
      List<String>? blackId,
      int? showHeightMin,
      int? showHeightMax,
      int? showWeightMin,
      int? showWeightMax,
      int? showAgeMin,
      int? showAgeMax,
      int? showMaxDist,
      bool? showMeet,
      bool? showNotLike,
      List<Memo>? memo,
      double? bestScore,
      DateTime? createdAt,
      DateTime? updatedAt})
      : id = id ?? '',
        nm = nm ?? '',
        logo = logo ?? '',
        sex = sex ?? 0,
        height = height ?? 0,
        weight = weight ?? 0,
        birthdate = birthdate ?? DateTime.utc(1),
        certified = certified ?? false,
        nowDemands = nowDemands ?? '',
        nowHavePlace = nowHavePlace ?? false,
        lastTime = lastTime ?? DateTime.utc(1),
        gpsName = gpsName ?? '',
        regTime = regTime ?? DateTime.utc(1),
        style = style ?? '',
        degree = degree ?? '',
        career = career ?? '',
        income = income ?? '',
        labels = labels ?? [],
        logoBig = logoBig ?? '',
        photo = photo ?? [],
        demands = demands ?? 0,
        intro = intro ?? '',
        school = school ?? '',
        company = company ?? '',
        hp = hp ?? '',
        pwd = pwd ?? '',
        shot = shot ?? [],
        wechat = wechat ?? '',
        gps = gps ?? [],
        vipTime = vipTime ?? DateTime.utc(1),
        banTime = banTime ?? DateTime.utc(1),
        blackHp = blackHp ?? [],
        blackWechat = blackWechat ?? [],
        blackId = blackId ?? [],
        showHeightMin = showHeightMin ?? 0,
        showHeightMax = showHeightMax ?? 0,
        showWeightMin = showWeightMin ?? 0,
        showWeightMax = showWeightMax ?? 0,
        showAgeMin = showAgeMin ?? 0,
        showAgeMax = showAgeMax ?? 0,
        showMaxDist = showMaxDist ?? 0,
        showMeet = showMeet ?? false,
        showNotLike = showNotLike ?? false,
        memo = memo ?? [],
        bestScore = bestScore ?? 0,
        createdAt = createdAt ?? DateTime.utc(1),
        updatedAt = updatedAt ?? DateTime.utc(1);

  User.fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    nm = json['Nm'] ?? '';
    logo = json['Logo'] ?? '';
    sex = json['Sex'] ?? 0;
    height = json['Height'] ?? 0;
    weight = json['Weight'] ?? 0;
    birthdate = json['Birthdate'] != null
        ? DateTime.parse(json['Birthdate'])
        : DateTime.utc(1);
    certified = json['Certified'] ?? false;
    nowDemands = json['NowDemands'] ?? '';
    nowHavePlace = json['NowHavePlace'] ?? false;
    lastTime = json['LastTime'] != null
        ? DateTime.parse(json['LastTime'])
        : DateTime.utc(1);
    gpsName = json['GpsName'] ?? '';
    regTime = json['RegTime'] != null
        ? DateTime.parse(json['RegTime'])
        : DateTime.utc(1);
    style = json['Style'] ?? '';
    degree = json['Degree'] ?? '';
    career = json['Career'] ?? '';
    income = json['Income'] ?? '';
    labels = json['Labels']?.cast<String>() ?? [];
    logoBig = json['LogoBig'] ?? '';
    photo = [];
    json['Photo']?.forEach((v) => photo.add(Photo.fromJson(v)));
    demands = json['Demands'] ?? 0;
    intro = json['Intro'] ?? '';
    school = json['School'] ?? '';
    company = json['Company'] ?? '';
    hp = json['Hp'] ?? '';
    pwd = json['Pwd'] ?? '';
    shot = [];
    json['Shot']?.forEach((v) => shot.add(Shot.fromJson(v)));
    wechat = json['Wechat'] ?? '';
    gps = json['Gps']?.cast<double>() ?? [];
    vipTime = json['VipTime'] != null
        ? DateTime.parse(json['VipTime'])
        : DateTime.utc(1);
    banTime = json['BanTime'] != null
        ? DateTime.parse(json['BanTime'])
        : DateTime.utc(1);
    blackHp = json['BlackHp']?.cast<String>() ?? [];
    blackWechat = json['BlackWechat']?.cast<String>() ?? [];
    blackId = json['BlackId']?.cast<String>() ?? [];
    showHeightMin = json['ShowHeightMin'] ?? 0;
    showHeightMax = json['ShowHeightMax'] ?? 0;
    showWeightMin = json['ShowWeightMin'] ?? 0;
    showWeightMax = json['ShowWeightMax'] ?? 0;
    showAgeMin = json['ShowAgeMin'] ?? 0;
    showAgeMax = json['ShowAgeMax'] ?? 0;
    showMaxDist = json['ShowMaxDist'] ?? 0;
    showMeet = json['ShowMeet'] ?? false;
    showNotLike = json['ShowNotLike'] ?? false;
    memo = [];
    json['Memo']?.forEach((v) => memo.add(Memo.fromJson(v)));
    bestScore = json['BestScore'] ?? 0;
    createdAt = json['created_at'] != null
        ? DateTime.parse(json['created_at'])
        : DateTime.utc(1);
    updatedAt = json['updated_at'] != null
        ? DateTime.parse(json['updated_at'])
        : DateTime.utc(1);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
    }
    if (nm.isNotEmpty) {
      data['Nm'] = nm;
    }
    if (logo.isNotEmpty) {
      data['Logo'] = logo;
    }
    if (sex != 0) {
      data['Sex'] = sex;
    }
    if (height != 0) {
      data['Height'] = height;
    }
    if (weight != 0) {
      data['Weight'] = weight;
    }
    if (birthdate != DateTime.utc(1)) {
      data['Birthdate'] = birthdate.toIso8601String();
    }
    if (certified) {
      data['Certified'] = certified;
    }
    if (nowDemands.isNotEmpty) {
      data['NowDemands'] = nowDemands;
    }
    if (nowHavePlace) {
      data['NowHavePlace'] = nowHavePlace;
    }
    if (lastTime != DateTime.utc(1)) {
      data['LastTime'] = lastTime.toIso8601String();
    }
    if (gpsName.isNotEmpty) {
      data['GpsName'] = gpsName;
    }
    if (regTime != DateTime.utc(1)) {
      data['RegTime'] = regTime.toIso8601String();
    }
    if (style.isNotEmpty) {
      data['Style'] = style;
    }
    if (degree.isNotEmpty) {
      data['Degree'] = degree;
    }
    if (career.isNotEmpty) {
      data['Career'] = career;
    }
    if (income.isNotEmpty) {
      data['Income'] = income;
    }
    if (labels.isNotEmpty) {
      data['Labels'] = labels;
    }
    if (logoBig.isNotEmpty) {
      data['LogoBig'] = logoBig;
    }
    if (photo.isNotEmpty) {
      data['Photo'] = photo.map((v) => v.toJson()).toList();
    }
    if (demands != 0) {
      data['Demands'] = demands;
    }
    if (intro.isNotEmpty) {
      data['Intro'] = intro;
    }
    if (school.isNotEmpty) {
      data['School'] = school;
    }
    if (company.isNotEmpty) {
      data['Company'] = company;
    }
    if (hp.isNotEmpty) {
      data['Hp'] = hp;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (shot.isNotEmpty) {
      data['Shot'] = shot.map((v) => v.toJson()).toList();
    }
    if (wechat.isNotEmpty) {
      data['Wechat'] = wechat;
    }
    if (gps.isNotEmpty) {
      data['Gps'] = gps;
    }
    if (vipTime != DateTime.utc(1)) {
      data['VipTime'] = vipTime.toIso8601String();
    }
    if (banTime != DateTime.utc(1)) {
      data['BanTime'] = banTime.toIso8601String();
    }
    if (blackHp.isNotEmpty) {
      data['BlackHp'] = blackHp;
    }
    if (blackWechat.isNotEmpty) {
      data['BlackWechat'] = blackWechat;
    }
    if (blackId.isNotEmpty) {
      data['BlackId'] = blackId;
    }
    if (showHeightMin != 0) {
      data['ShowHeightMin'] = showHeightMin;
    }
    if (showHeightMax != 0) {
      data['ShowHeightMax'] = showHeightMax;
    }
    if (showWeightMin != 0) {
      data['ShowWeightMin'] = showWeightMin;
    }
    if (showWeightMax != 0) {
      data['ShowWeightMax'] = showWeightMax;
    }
    if (showAgeMin != 0) {
      data['ShowAgeMin'] = showAgeMin;
    }
    if (showAgeMax != 0) {
      data['ShowAgeMax'] = showAgeMax;
    }
    if (showMaxDist != 0) {
      data['ShowMaxDist'] = showMaxDist;
    }
    if (showMeet) {
      data['ShowMeet'] = showMeet;
    }
    if (showNotLike) {
      data['ShowNotLike'] = showNotLike;
    }
    if (memo.isNotEmpty) {
      data['Memo'] = memo.map((v) => v.toJson()).toList();
    }
    if (bestScore != 0) {
      data['BestScore'] = bestScore;
    }
    if (createdAt != DateTime.utc(1)) {
      data['created_at'] = createdAt.toIso8601String();
    }
    if (updatedAt != DateTime.utc(1)) {
      data['updated_at'] = updatedAt.toIso8601String();
    }
    return data;
  }
}

class UserSummer {
  late String id;
  late String nm;
  late String logo;
  late int sex;
  late int height;
  late int weight;
  late DateTime birthdate;
  late bool certified;
  late String nowDemands;
  late bool nowHavePlace;
  late DateTime lastTime;
  late String gpsName;
  late double dist;
  late bool online;
  late bool isMeet;
  late int like;

  UserSummer(
      {String? id,
      String? nm,
      String? logo,
      int? sex,
      int? height,
      int? weight,
      DateTime? birthdate,
      bool? certified,
      String? nowDemands,
      bool? nowHavePlace,
      DateTime? lastTime,
      String? gpsName,
      double? dist,
      bool? online,
      bool? isMeet,
      int? like})
      : id = id ?? '',
        nm = nm ?? '',
        logo = logo ?? '',
        sex = sex ?? 0,
        height = height ?? 0,
        weight = weight ?? 0,
        birthdate = birthdate ?? DateTime.utc(1),
        certified = certified ?? false,
        nowDemands = nowDemands ?? '',
        nowHavePlace = nowHavePlace ?? false,
        lastTime = lastTime ?? DateTime.utc(1),
        gpsName = gpsName ?? '',
        dist = dist ?? 0,
        online = online ?? false,
        isMeet = isMeet ?? false,
        like = like ?? 0;

  UserSummer.fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    nm = json['Nm'] ?? '';
    logo = json['Logo'] ?? '';
    sex = json['Sex'] ?? 0;
    height = json['Height'] ?? 0;
    weight = json['Weight'] ?? 0;
    birthdate = json['Birthdate'] != null
        ? DateTime.parse(json['Birthdate'])
        : DateTime.utc(1);
    certified = json['Certified'] ?? false;
    nowDemands = json['NowDemands'] ?? '';
    nowHavePlace = json['NowHavePlace'] ?? false;
    lastTime = json['LastTime'] != null
        ? DateTime.parse(json['LastTime'])
        : DateTime.utc(1);
    gpsName = json['GpsName'] ?? '';
    dist = json['Dist'] ?? 0;
    online = json['Online'] ?? false;
    isMeet = json['IsMeet'] ?? false;
    like = json['Like'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
    }
    if (nm.isNotEmpty) {
      data['Nm'] = nm;
    }
    if (logo.isNotEmpty) {
      data['Logo'] = logo;
    }
    if (sex != 0) {
      data['Sex'] = sex;
    }
    if (height != 0) {
      data['Height'] = height;
    }
    if (weight != 0) {
      data['Weight'] = weight;
    }
    if (birthdate != DateTime.utc(1)) {
      data['Birthdate'] = birthdate.toIso8601String();
    }
    if (certified) {
      data['Certified'] = certified;
    }
    if (nowDemands.isNotEmpty) {
      data['NowDemands'] = nowDemands;
    }
    if (nowHavePlace) {
      data['NowHavePlace'] = nowHavePlace;
    }
    if (lastTime != DateTime.utc(1)) {
      data['LastTime'] = lastTime.toIso8601String();
    }
    if (gpsName.isNotEmpty) {
      data['GpsName'] = gpsName;
    }
    if (dist != 0) {
      data['Dist'] = dist;
    }
    if (online) {
      data['Online'] = online;
    }
    if (isMeet) {
      data['IsMeet'] = isMeet;
    }
    if (like != 0) {
      data['Like'] = like;
    }
    return data;
  }
}

class UserDetail {
  late String id;
  late String nm;
  late String logo;
  late int sex;
  late int height;
  late int weight;
  late DateTime birthdate;
  late bool certified;
  late String nowDemands;
  late bool nowHavePlace;
  late DateTime lastTime;
  late String gpsName;
  late DateTime regTime;
  late String style;
  late String degree;
  late String career;
  late String income;
  late List<String> labels;
  late String logoBig;
  late List<Photo> photo;
  late int demands;
  late String intro;
  late String school;
  late String company;
  late double dist;
  late bool online;
  late Memo memo;

  UserDetail(
      {String? id,
      String? nm,
      String? logo,
      int? sex,
      int? height,
      int? weight,
      DateTime? birthdate,
      bool? certified,
      String? nowDemands,
      bool? nowHavePlace,
      DateTime? lastTime,
      String? gpsName,
      DateTime? regTime,
      String? style,
      String? degree,
      String? career,
      String? income,
      List<String>? labels,
      String? logoBig,
      List<Photo>? photo,
      int? demands,
      String? intro,
      String? school,
      String? company,
      double? dist,
      bool? online,
      Memo? memo})
      : id = id ?? '',
        nm = nm ?? '',
        logo = logo ?? '',
        sex = sex ?? 0,
        height = height ?? 0,
        weight = weight ?? 0,
        birthdate = birthdate ?? DateTime.utc(1),
        certified = certified ?? false,
        nowDemands = nowDemands ?? '',
        nowHavePlace = nowHavePlace ?? false,
        lastTime = lastTime ?? DateTime.utc(1),
        gpsName = gpsName ?? '',
        regTime = regTime ?? DateTime.utc(1),
        style = style ?? '',
        degree = degree ?? '',
        career = career ?? '',
        income = income ?? '',
        labels = labels ?? [],
        logoBig = logoBig ?? '',
        photo = photo ?? [],
        demands = demands ?? 0,
        intro = intro ?? '',
        school = school ?? '',
        company = company ?? '',
        dist = dist ?? 0,
        online = online ?? false,
        memo = memo ?? Memo();

  UserDetail.fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    nm = json['Nm'] ?? '';
    logo = json['Logo'] ?? '';
    sex = json['Sex'] ?? 0;
    height = json['Height'] ?? 0;
    weight = json['Weight'] ?? 0;
    birthdate = json['Birthdate'] != null
        ? DateTime.parse(json['Birthdate'])
        : DateTime.utc(1);
    certified = json['Certified'] ?? false;
    nowDemands = json['NowDemands'] ?? '';
    nowHavePlace = json['NowHavePlace'] ?? false;
    lastTime = json['LastTime'] != null
        ? DateTime.parse(json['LastTime'])
        : DateTime.utc(1);
    gpsName = json['GpsName'] ?? '';
    regTime = json['RegTime'] != null
        ? DateTime.parse(json['RegTime'])
        : DateTime.utc(1);
    style = json['Style'] ?? '';
    degree = json['Degree'] ?? '';
    career = json['Career'] ?? '';
    income = json['Income'] ?? '';
    labels = json['Labels']?.cast<String>() ?? [];
    logoBig = json['LogoBig'] ?? '';
    photo = [];
    json['Photo']?.forEach((v) => photo.add(Photo.fromJson(v)));
    demands = json['Demands'] ?? 0;
    intro = json['Intro'] ?? '';
    school = json['School'] ?? '';
    company = json['Company'] ?? '';
    dist = json['Dist'] ?? 0;
    online = json['Online'] ?? false;
    memo = json['Memo'] != null ? Memo.fromJson(json['Memo']) : Memo();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
    }
    if (nm.isNotEmpty) {
      data['Nm'] = nm;
    }
    if (logo.isNotEmpty) {
      data['Logo'] = logo;
    }
    if (sex != 0) {
      data['Sex'] = sex;
    }
    if (height != 0) {
      data['Height'] = height;
    }
    if (weight != 0) {
      data['Weight'] = weight;
    }
    if (birthdate != DateTime.utc(1)) {
      data['Birthdate'] = birthdate.toIso8601String();
    }
    if (certified) {
      data['Certified'] = certified;
    }
    if (nowDemands.isNotEmpty) {
      data['NowDemands'] = nowDemands;
    }
    if (nowHavePlace) {
      data['NowHavePlace'] = nowHavePlace;
    }
    if (lastTime != DateTime.utc(1)) {
      data['LastTime'] = lastTime.toIso8601String();
    }
    if (gpsName.isNotEmpty) {
      data['GpsName'] = gpsName;
    }
    if (regTime != DateTime.utc(1)) {
      data['RegTime'] = regTime.toIso8601String();
    }
    if (style.isNotEmpty) {
      data['Style'] = style;
    }
    if (degree.isNotEmpty) {
      data['Degree'] = degree;
    }
    if (career.isNotEmpty) {
      data['Career'] = career;
    }
    if (income.isNotEmpty) {
      data['Income'] = income;
    }
    if (labels.isNotEmpty) {
      data['Labels'] = labels;
    }
    if (logoBig.isNotEmpty) {
      data['LogoBig'] = logoBig;
    }
    if (photo.isNotEmpty) {
      data['Photo'] = photo.map((v) => v.toJson()).toList();
    }
    if (demands != 0) {
      data['Demands'] = demands;
    }
    if (intro.isNotEmpty) {
      data['Intro'] = intro;
    }
    if (school.isNotEmpty) {
      data['School'] = school;
    }
    if (company.isNotEmpty) {
      data['Company'] = company;
    }
    if (dist != 0) {
      data['Dist'] = dist;
    }
    if (online) {
      data['Online'] = online;
    }
    data['Memo'] = memo.toJson();
    return data;
  }
}

class ReqHead {
  late String iD;
  late String pwd;

  ReqHead({String? iD, String? pwd})
      : iD = iD ?? '',
        pwd = pwd ?? '';

  ReqHead.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    return data;
  }
}

class RetHead {
  late String err;
  late String errDesc;

  RetHead({String? err, String? errDesc})
      : err = err ?? '',
        errDesc = errDesc ?? '';

  RetHead.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class ReqLogin {
  late String iD;
  late String pwd;
  late bool isReg;
  late User user;

  ReqLogin({String? iD, String? pwd, bool? isReg, User? user})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        isReg = isReg ?? false,
        user = user ?? User();

  ReqLogin.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    isReg = json['IsReg'] ?? false;
    user = json['User'] != null ? User.fromJson(json['User']) : User();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (isReg) {
      data['IsReg'] = isReg;
    }
    data['User'] = user.toJson();
    return data;
  }
}

class RetLogin {
  late String err;
  late String errDesc;
  late User user;

  RetLogin({String? err, String? errDesc, User? user})
      : err = err ?? '',
        errDesc = errDesc ?? '',
        user = user ?? User();

  RetLogin.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    user = json['User'] != null ? User.fromJson(json['User']) : User();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    data['User'] = user.toJson();
    return data;
  }
}

class ReqGetMe {
  late String iD;
  late String pwd;

  ReqGetMe({String? iD, String? pwd})
      : iD = iD ?? '',
        pwd = pwd ?? '';

  ReqGetMe.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    return data;
  }
}

class RetGetMe {
  late String err;
  late String errDesc;
  late User user;

  RetGetMe({String? err, String? errDesc, User? user})
      : err = err ?? '',
        errDesc = errDesc ?? '',
        user = user ?? User();

  RetGetMe.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    user = json['User'] != null ? User.fromJson(json['User']) : User();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    data['User'] = user.toJson();
    return data;
  }
}

class ReqSetMe {
  late String iD;
  late String pwd;
  late User user;
  late List<String> field;

  ReqSetMe({String? iD, String? pwd, User? user, List<String>? field})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        user = user ?? User(),
        field = field ?? [];

  ReqSetMe.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    user = json['User'] != null ? User.fromJson(json['User']) : User();
    field = json['Field']?.cast<String>() ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    data['User'] = user.toJson();
    if (field.isNotEmpty) {
      data['Field'] = field;
    }
    return data;
  }
}

class RetSetMe {
  late String err;
  late String errDesc;

  RetSetMe({String? err, String? errDesc})
      : err = err ?? '',
        errDesc = errDesc ?? '';

  RetSetMe.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class ReqNear {
  late String iD;
  late String pwd;
  late List<double> gps;
  late String type;
  late int skip;
  late int limit;
  late bool showCertified;
  late bool showHavePlace;
  late bool showOnline;
  late bool showNoContact;

  ReqNear(
      {String? iD,
      String? pwd,
      List<double>? gps,
      String? type,
      int? skip,
      int? limit,
      bool? showCertified,
      bool? showHavePlace,
      bool? showOnline,
      bool? showNoContact})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        gps = gps ?? [],
        type = type ?? '',
        skip = skip ?? 0,
        limit = limit ?? 0,
        showCertified = showCertified ?? false,
        showHavePlace = showHavePlace ?? false,
        showOnline = showOnline ?? false,
        showNoContact = showNoContact ?? false;

  ReqNear.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    gps = json['Gps']?.cast<double>() ?? [];
    type = json['Type'] ?? '';
    skip = json['Skip'] ?? 0;
    limit = json['Limit'] ?? 0;
    showCertified = json['ShowCertified'] ?? false;
    showHavePlace = json['ShowHavePlace'] ?? false;
    showOnline = json['ShowOnline'] ?? false;
    showNoContact = json['ShowNoContact'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (gps.isNotEmpty) {
      data['Gps'] = gps;
    }
    if (type.isNotEmpty) {
      data['Type'] = type;
    }
    if (skip != 0) {
      data['Skip'] = skip;
    }
    if (limit != 0) {
      data['Limit'] = limit;
    }
    if (showCertified) {
      data['ShowCertified'] = showCertified;
    }
    if (showHavePlace) {
      data['ShowHavePlace'] = showHavePlace;
    }
    if (showOnline) {
      data['ShowOnline'] = showOnline;
    }
    if (showNoContact) {
      data['ShowNoContact'] = showNoContact;
    }
    return data;
  }
}

class RetNear {
  late String err;
  late String errDesc;
  late List<UserSummer> userSummer;

  RetNear({String? err, String? errDesc, List<UserSummer>? userSummer})
      : err = err ?? '',
        errDesc = errDesc ?? '',
        userSummer = userSummer ?? [];

  RetNear.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    userSummer = [];
    json['UserSummer']?.forEach((v) => userSummer.add(UserSummer.fromJson(v)));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    if (userSummer.isNotEmpty) {
      data['UserSummer'] = userSummer.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ReqDetail {
  late String iD;
  late String pwd;
  late String userId;

  ReqDetail({String? iD, String? pwd, String? userId})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        userId = userId ?? '';

  ReqDetail.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    userId = json['UserId'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (userId.isNotEmpty) {
      data['UserId'] = userId;
    }
    return data;
  }
}

class RetDetail {
  late String err;
  late String errDesc;
  late UserDetail userDetail;

  RetDetail({String? err, String? errDesc, UserDetail? userDetail})
      : err = err ?? '',
        errDesc = errDesc ?? '',
        userDetail = userDetail ?? UserDetail();

  RetDetail.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    userDetail = json['UserDetail'] != null
        ? UserDetail.fromJson(json['UserDetail'])
        : UserDetail();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    data['UserDetail'] = userDetail.toJson();
    return data;
  }
}

class ReqGetContact {
  late String iD;
  late String pwd;
  late String toId;

  ReqGetContact({String? iD, String? pwd, String? toId})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        toId = toId ?? '';

  ReqGetContact.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    toId = json['ToId'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (toId.isNotEmpty) {
      data['ToId'] = toId;
    }
    return data;
  }
}

class RetGetContact {
  late String err;
  late String errDesc;
  late String wechat;

  RetGetContact({String? err, String? errDesc, String? wechat})
      : err = err ?? '',
        errDesc = errDesc ?? '',
        wechat = wechat ?? '';

  RetGetContact.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    wechat = json['Wechat'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    if (wechat.isNotEmpty) {
      data['Wechat'] = wechat;
    }
    return data;
  }
}

class ReqBlack {
  late String iD;
  late String pwd;
  late String type;
  late String key;

  ReqBlack({String? iD, String? pwd, String? type, String? key})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        type = type ?? '',
        key = key ?? '';

  ReqBlack.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    type = json['Type'] ?? '';
    key = json['Key'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (type.isNotEmpty) {
      data['Type'] = type;
    }
    if (key.isNotEmpty) {
      data['Key'] = key;
    }
    return data;
  }
}

class RetBlack {
  late String err;
  late String errDesc;
  late String key;

  RetBlack({String? err, String? errDesc, String? key})
      : err = err ?? '',
        errDesc = errDesc ?? '',
        key = key ?? '';

  RetBlack.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    key = json['Key'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    if (key.isNotEmpty) {
      data['Key'] = key;
    }
    return data;
  }
}

class ReqBlackId {
  late String iD;
  late String pwd;
  late int blackId;

  ReqBlackId({String? iD, String? pwd, int? blackId})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        blackId = blackId ?? 0;

  ReqBlackId.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    blackId = json['BlackId'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (blackId != 0) {
      data['BlackId'] = blackId;
    }
    return data;
  }
}

class RetBlackId {
  late String err;
  late String errDesc;
  late UserBase userBase;

  RetBlackId({String? err, String? errDesc, UserBase? userBase})
      : err = err ?? '',
        errDesc = errDesc ?? '',
        userBase = userBase ?? UserBase();

  RetBlackId.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    userBase = json['UserBase'] != null
        ? UserBase.fromJson(json['UserBase'])
        : UserBase();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    data['UserBase'] = userBase.toJson();
    return data;
  }
}

class ReqBlackIdList {
  late String iD;
  late String pwd;

  ReqBlackIdList({String? iD, String? pwd})
      : iD = iD ?? '',
        pwd = pwd ?? '';

  ReqBlackIdList.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    return data;
  }
}

class RetBlackIdList {
  late String err;
  late String errDesc;
  late List<UserBase> userBase;

  RetBlackIdList({String? err, String? errDesc, List<UserBase>? userBase})
      : err = err ?? '',
        errDesc = errDesc ?? '',
        userBase = userBase ?? [];

  RetBlackIdList.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    userBase = [];
    json['UserBase']?.forEach((v) => userBase.add(UserBase.fromJson(v)));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    if (userBase.isNotEmpty) {
      data['UserBase'] = userBase.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ReqLogout {
  late String iD;
  late String pwd;

  ReqLogout({String? iD, String? pwd})
      : iD = iD ?? '',
        pwd = pwd ?? '';

  ReqLogout.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    return data;
  }
}

class RetLogout {
  late String err;
  late String errDesc;

  RetLogout({String? err, String? errDesc})
      : err = err ?? '',
        errDesc = errDesc ?? '';

  RetLogout.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class UserReport {
  late int id;
  late int userId;
  late String subj;
  late String content;
  late String imgKey;

  UserReport(
      {int? id, int? userId, String? subj, String? content, String? imgKey})
      : id = id ?? 0,
        userId = userId ?? 0,
        subj = subj ?? '',
        content = content ?? '',
        imgKey = imgKey ?? '';

  UserReport.fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? 0;
    userId = json['UserId'] ?? 0;
    subj = json['Subj'] ?? '';
    content = json['Content'] ?? '';
    imgKey = json['ImgKey'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id != 0) {
      data['Id'] = id;
    }
    if (userId != 0) {
      data['UserId'] = userId;
    }
    if (subj.isNotEmpty) {
      data['Subj'] = subj;
    }
    if (content.isNotEmpty) {
      data['Content'] = content;
    }
    if (imgKey.isNotEmpty) {
      data['ImgKey'] = imgKey;
    }
    return data;
  }
}

class ReqReport {
  late String iD;
  late String pwd;
  late UserReport userReport;

  ReqReport({String? iD, String? pwd, UserReport? userReport})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        userReport = userReport ?? UserReport();

  ReqReport.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    userReport = json['UserReport'] != null
        ? UserReport.fromJson(json['UserReport'])
        : UserReport();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    data['UserReport'] = userReport.toJson();
    return data;
  }
}

class RetReport {
  late String err;
  late String errDesc;

  RetReport({String? err, String? errDesc})
      : err = err ?? '',
        errDesc = errDesc ?? '';

  RetReport.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class ReqSetMemo {
  late String iD;
  late String pwd;
  late Memo memo;

  ReqSetMemo({String? iD, String? pwd, Memo? memo})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        memo = memo ?? Memo();

  ReqSetMemo.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    memo = json['Memo'] != null ? Memo.fromJson(json['Memo']) : Memo();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    data['Memo'] = memo.toJson();
    return data;
  }
}

class RetSetMemo {
  late String err;
  late String errDesc;

  RetSetMemo({String? err, String? errDesc})
      : err = err ?? '',
        errDesc = errDesc ?? '';

  RetSetMemo.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class ReqGetMemo {
  late String iD;
  late String pwd;
  late int userId;

  ReqGetMemo({String? iD, String? pwd, int? userId})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        userId = userId ?? 0;

  ReqGetMemo.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    userId = json['UserId'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (userId != 0) {
      data['UserId'] = userId;
    }
    return data;
  }
}

class RetGetMemo {
  late String err;
  late String errDesc;
  late Memo memo;

  RetGetMemo({String? err, String? errDesc, Memo? memo})
      : err = err ?? '',
        errDesc = errDesc ?? '',
        memo = memo ?? Memo();

  RetGetMemo.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    memo = json['Memo'] != null ? Memo.fromJson(json['Memo']) : Memo();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    data['Memo'] = memo.toJson();
    return data;
  }
}

class ReqGmBan {
  late String iD;
  late String pwd;
  late int banId;
  late bool ban;
  late int banDuration;
  late String cause;

  ReqGmBan(
      {String? iD,
      String? pwd,
      int? banId,
      bool? ban,
      int? banDuration,
      String? cause})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        banId = banId ?? 0,
        ban = ban ?? false,
        banDuration = banDuration ?? 0,
        cause = cause ?? '';

  ReqGmBan.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    banId = json['BanId'] ?? 0;
    ban = json['Ban'] ?? false;
    banDuration = json['BanDuration'] ?? 0;
    cause = json['Cause'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (banId != 0) {
      data['BanId'] = banId;
    }
    if (ban) {
      data['Ban'] = ban;
    }
    if (banDuration != 0) {
      data['BanDuration'] = banDuration;
    }
    if (cause.isNotEmpty) {
      data['Cause'] = cause;
    }
    return data;
  }
}

class RetGmBan {
  late String err;
  late String errDesc;

  RetGmBan({String? err, String? errDesc})
      : err = err ?? '',
        errDesc = errDesc ?? '';

  RetGmBan.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class GmMsg {
  late String subj;
  late String content;
  late DateTime msgTime;

  GmMsg({String? subj, String? content, DateTime? msgTime})
      : subj = subj ?? '',
        content = content ?? '',
        msgTime = msgTime ?? DateTime.utc(1);

  GmMsg.fromJson(Map<String, dynamic> json) {
    subj = json['Subj'] ?? '';
    content = json['Content'] ?? '';
    msgTime = json['MsgTime'] != null
        ? DateTime.parse(json['MsgTime'])
        : DateTime.utc(1);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (subj.isNotEmpty) {
      data['Subj'] = subj;
    }
    if (content.isNotEmpty) {
      data['Content'] = content;
    }
    if (msgTime != DateTime.utc(1)) {
      data['MsgTime'] = msgTime.toIso8601String();
    }
    return data;
  }
}

class ReqGmMsg {
  late String iD;
  late String pwd;
  late int userId;
  late GmMsg gmMsg;

  ReqGmMsg({String? iD, String? pwd, int? userId, GmMsg? gmMsg})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        userId = userId ?? 0,
        gmMsg = gmMsg ?? GmMsg();

  ReqGmMsg.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    userId = json['UserId'] ?? 0;
    gmMsg = json['GmMsg'] != null ? GmMsg.fromJson(json['GmMsg']) : GmMsg();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (userId != 0) {
      data['UserId'] = userId;
    }
    data['GmMsg'] = gmMsg.toJson();
    return data;
  }
}

class RetGmMsg {
  late String err;
  late String errDesc;

  RetGmMsg({String? err, String? errDesc})
      : err = err ?? '',
        errDesc = errDesc ?? '';

  RetGmMsg.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    return data;
  }
}

class ReqGmMsgList {
  late String iD;
  late String pwd;
  late DateTime lastTime;

  ReqGmMsgList({String? iD, String? pwd, DateTime? lastTime})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        lastTime = lastTime ?? DateTime.utc(1);

  ReqGmMsgList.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    lastTime = json['LastTime'] != null
        ? DateTime.parse(json['LastTime'])
        : DateTime.utc(1);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (lastTime != DateTime.utc(1)) {
      data['LastTime'] = lastTime.toIso8601String();
    }
    return data;
  }
}

class RetGmMsgList {
  late String err;
  late String errDesc;
  late List<GmMsg> gmMsg;

  RetGmMsgList({String? err, String? errDesc, List<GmMsg>? gmMsg})
      : err = err ?? '',
        errDesc = errDesc ?? '',
        gmMsg = gmMsg ?? [];

  RetGmMsgList.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    gmMsg = [];
    json['GmMsg']?.forEach((v) => gmMsg.add(GmMsg.fromJson(v)));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    if (gmMsg.isNotEmpty) {
      data['GmMsg'] = gmMsg.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OssUrl {
  late String key;
  late String url;

  OssUrl({String? key, String? url})
      : key = key ?? '',
        url = url ?? '';

  OssUrl.fromJson(Map<String, dynamic> json) {
    key = json['Key'] ?? '';
    url = json['Url'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (key.isNotEmpty) {
      data['Key'] = key;
    }
    if (url.isNotEmpty) {
      data['Url'] = url;
    }
    return data;
  }
}

class ReqOss {
  late String iD;
  late String pwd;
  late String regHp;
  late String regPwd;
  late List<String> ext;

  ReqOss(
      {String? iD,
      String? pwd,
      String? regHp,
      String? regPwd,
      List<String>? ext})
      : iD = iD ?? '',
        pwd = pwd ?? '',
        regHp = regHp ?? '',
        regPwd = regPwd ?? '',
        ext = ext ?? [];

  ReqOss.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] ?? '';
    pwd = json['Pwd'] ?? '';
    regHp = json['RegHp'] ?? '';
    regPwd = json['RegPwd'] ?? '';
    ext = json['Ext']?.cast<String>() ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iD.isNotEmpty) {
      data['ID'] = iD;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (regHp.isNotEmpty) {
      data['RegHp'] = regHp;
    }
    if (regPwd.isNotEmpty) {
      data['RegPwd'] = regPwd;
    }
    if (ext.isNotEmpty) {
      data['Ext'] = ext;
    }
    return data;
  }
}

class RetOss {
  late String err;
  late String errDesc;
  late List<OssUrl> ossUrl;

  RetOss({String? err, String? errDesc, List<OssUrl>? ossUrl})
      : err = err ?? '',
        errDesc = errDesc ?? '',
        ossUrl = ossUrl ?? [];

  RetOss.fromJson(Map<String, dynamic> json) {
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    ossUrl = [];
    json['OssUrl']?.forEach((v) => ossUrl.add(OssUrl.fromJson(v)));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    if (ossUrl.isNotEmpty) {
      data['OssUrl'] = ossUrl.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
