class ReqHead {
  late String id;
  late String pwd;

  ReqHead({String? id, String? pwd})
      : id = id ?? '',
        pwd = pwd ?? '';

  ReqHead.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
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

class UserBase {
  late String id;
  late String nm;
  late String logo;

  UserBase({String? id, String? nm, String? logo})
      : id = id ?? '',
        nm = nm ?? '',
        logo = logo ?? '';

  UserBase.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
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
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
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
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
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
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    userId = json['UserId'] ?? '';
    isMeet = json['IsMeet'] ?? false;
    like = json['Like']?.toInt() ?? 0;
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
  late List<String> blackHp;
  late List<String> blackWechat;
  late List<String> blackId;
  late bool showNoContact;
  late bool showOnline;
  late bool showCertified;
  late bool showHavePlace;
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
  late DateTime vipTime;
  late DateTime banTime;
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
      List<String>? blackHp,
      List<String>? blackWechat,
      List<String>? blackId,
      bool? showNoContact,
      bool? showOnline,
      bool? showCertified,
      bool? showHavePlace,
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
      DateTime? vipTime,
      DateTime? banTime,
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
        blackHp = blackHp ?? [],
        blackWechat = blackWechat ?? [],
        blackId = blackId ?? [],
        showNoContact = showNoContact ?? false,
        showOnline = showOnline ?? false,
        showCertified = showCertified ?? false,
        showHavePlace = showHavePlace ?? false,
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
        vipTime = vipTime ?? DateTime.utc(1),
        banTime = banTime ?? DateTime.utc(1),
        bestScore = bestScore ?? 0,
        createdAt = createdAt ?? DateTime.utc(1),
        updatedAt = updatedAt ?? DateTime.utc(1);

  User.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    nm = json['Nm'] ?? '';
    logo = json['Logo'] ?? '';
    sex = json['Sex']?.toInt() ?? 0;
    height = json['Height']?.toInt() ?? 0;
    weight = json['Weight']?.toInt() ?? 0;
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
    demands = json['Demands']?.toInt() ?? 0;
    intro = json['Intro'] ?? '';
    school = json['School'] ?? '';
    company = json['Company'] ?? '';
    hp = json['Hp'] ?? '';
    pwd = json['Pwd'] ?? '';
    shot = [];
    json['Shot']?.forEach((v) => shot.add(Shot.fromJson(v)));
    wechat = json['Wechat'] ?? '';
    gps = (json['Gps'] as List<dynamic>?)
            ?.map<double>((e) => e.toDouble())
            .toList() ??
        [];
    blackHp = json['BlackHp']?.cast<String>() ?? [];
    blackWechat = json['BlackWechat']?.cast<String>() ?? [];
    blackId = json['BlackId']?.cast<String>() ?? [];
    showNoContact = json['ShowNoContact'] ?? false;
    showOnline = json['ShowOnline'] ?? false;
    showCertified = json['ShowCertified'] ?? false;
    showHavePlace = json['ShowHavePlace'] ?? false;
    showHeightMin = json['ShowHeightMin']?.toInt() ?? 0;
    showHeightMax = json['ShowHeightMax']?.toInt() ?? 0;
    showWeightMin = json['ShowWeightMin']?.toInt() ?? 0;
    showWeightMax = json['ShowWeightMax']?.toInt() ?? 0;
    showAgeMin = json['ShowAgeMin']?.toInt() ?? 0;
    showAgeMax = json['ShowAgeMax']?.toInt() ?? 0;
    showMaxDist = json['ShowMaxDist']?.toInt() ?? 0;
    showMeet = json['ShowMeet'] ?? false;
    showNotLike = json['ShowNotLike'] ?? false;
    memo = [];
    json['Memo']?.forEach((v) => memo.add(Memo.fromJson(v)));
    vipTime = json['VipTime'] != null
        ? DateTime.parse(json['VipTime'])
        : DateTime.utc(1);
    banTime = json['BanTime'] != null
        ? DateTime.parse(json['BanTime'])
        : DateTime.utc(1);
    bestScore = json['BestScore']?.toDouble() ?? 0;
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
    if (blackHp.isNotEmpty) {
      data['BlackHp'] = blackHp;
    }
    if (blackWechat.isNotEmpty) {
      data['BlackWechat'] = blackWechat;
    }
    if (blackId.isNotEmpty) {
      data['BlackId'] = blackId;
    }
    if (showNoContact) {
      data['ShowNoContact'] = showNoContact;
    }
    if (showOnline) {
      data['ShowOnline'] = showOnline;
    }
    if (showCertified) {
      data['ShowCertified'] = showCertified;
    }
    if (showHavePlace) {
      data['ShowHavePlace'] = showHavePlace;
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
    if (vipTime != DateTime.utc(1)) {
      data['VipTime'] = vipTime.toIso8601String();
    }
    if (banTime != DateTime.utc(1)) {
      data['BanTime'] = banTime.toIso8601String();
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
  late bool seenIt;

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
      int? like,
      bool? seenIt})
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
        like = like ?? 0,
        seenIt = seenIt ?? false;

  UserSummer.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    nm = json['Nm'] ?? '';
    logo = json['Logo'] ?? '';
    sex = json['Sex']?.toInt() ?? 0;
    height = json['Height']?.toInt() ?? 0;
    weight = json['Weight']?.toInt() ?? 0;
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
    dist = json['Dist']?.toDouble() ?? 0;
    online = json['Online'] ?? false;
    isMeet = json['IsMeet'] ?? false;
    like = json['Like']?.toInt() ?? 0;
    seenIt = json['SeenIt'] ?? false;
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
    if (seenIt) {
      data['SeenIt'] = seenIt;
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
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    nm = json['Nm'] ?? '';
    logo = json['Logo'] ?? '';
    sex = json['Sex']?.toInt() ?? 0;
    height = json['Height']?.toInt() ?? 0;
    weight = json['Weight']?.toInt() ?? 0;
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
    demands = json['Demands']?.toInt() ?? 0;
    intro = json['Intro'] ?? '';
    school = json['School'] ?? '';
    company = json['Company'] ?? '';
    dist = json['Dist']?.toDouble() ?? 0;
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

class ReqLogin {
  late String id;
  late String pwd;
  late bool isReg;
  late User user;

  ReqLogin({String? id, String? pwd, bool? isReg, User? user})
      : id = id ?? '',
        pwd = pwd ?? '',
        isReg = isReg ?? false,
        user = user ?? User();

  ReqLogin.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    isReg = json['IsReg'] ?? false;
    user = json['User'] != null ? User.fromJson(json['User']) : User();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
  late ReqLogin req;
  late String err;
  late String errDesc;
  late User user;

  RetLogin({ReqLogin? req, String? err, String? errDesc, User? user})
      : req = req ?? ReqLogin(),
        err = err ?? '',
        errDesc = errDesc ?? '',
        user = user ?? User();

  RetLogin.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqLogin.fromJson(json['Req']) : ReqLogin();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    user = json['User'] != null ? User.fromJson(json['User']) : User();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;

  ReqGetMe({String? id, String? pwd})
      : id = id ?? '',
        pwd = pwd ?? '';

  ReqGetMe.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    return data;
  }
}

class RetGetMe {
  late ReqGetMe req;
  late String err;
  late String errDesc;
  late User user;

  RetGetMe({ReqGetMe? req, String? err, String? errDesc, User? user})
      : req = req ?? ReqGetMe(),
        err = err ?? '',
        errDesc = errDesc ?? '',
        user = user ?? User();

  RetGetMe.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqGetMe.fromJson(json['Req']) : ReqGetMe();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    user = json['User'] != null ? User.fromJson(json['User']) : User();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;
  late User user;
  late List<String> field;

  ReqSetMe({String? id, String? pwd, User? user, List<String>? field})
      : id = id ?? '',
        pwd = pwd ?? '',
        user = user ?? User(),
        field = field ?? [];

  ReqSetMe.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    user = json['User'] != null ? User.fromJson(json['User']) : User();
    field = json['Field']?.cast<String>() ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
  late ReqSetMe req;
  late String err;
  late String errDesc;

  RetSetMe({ReqSetMe? req, String? err, String? errDesc})
      : req = req ?? ReqSetMe(),
        err = err ?? '',
        errDesc = errDesc ?? '';

  RetSetMe.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqSetMe.fromJson(json['Req']) : ReqSetMe();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;
  late List<double> gps;
  late String type;
  late int skip;
  late int limit;
  late bool showNoContact;
  late bool showOnline;
  late bool showCertified;
  late bool showHavePlace;

  ReqNear(
      {String? id,
      String? pwd,
      List<double>? gps,
      String? type,
      int? skip,
      int? limit,
      bool? showNoContact,
      bool? showOnline,
      bool? showCertified,
      bool? showHavePlace})
      : id = id ?? '',
        pwd = pwd ?? '',
        gps = gps ?? [],
        type = type ?? '',
        skip = skip ?? 0,
        limit = limit ?? 0,
        showNoContact = showNoContact ?? false,
        showOnline = showOnline ?? false,
        showCertified = showCertified ?? false,
        showHavePlace = showHavePlace ?? false;

  ReqNear.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    gps = (json['Gps'] as List<dynamic>?)
            ?.map<double>((e) => e.toDouble())
            .toList() ??
        [];
    type = json['Type'] ?? '';
    skip = json['Skip']?.toInt() ?? 0;
    limit = json['Limit']?.toInt() ?? 0;
    showNoContact = json['ShowNoContact'] ?? false;
    showOnline = json['ShowOnline'] ?? false;
    showCertified = json['ShowCertified'] ?? false;
    showHavePlace = json['ShowHavePlace'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
    if (showNoContact) {
      data['ShowNoContact'] = showNoContact;
    }
    if (showOnline) {
      data['ShowOnline'] = showOnline;
    }
    if (showCertified) {
      data['ShowCertified'] = showCertified;
    }
    if (showHavePlace) {
      data['ShowHavePlace'] = showHavePlace;
    }
    return data;
  }
}

class RetNear {
  late ReqNear req;
  late String err;
  late String errDesc;
  late List<UserSummer> userSummer;

  RetNear(
      {ReqNear? req,
      String? err,
      String? errDesc,
      List<UserSummer>? userSummer})
      : req = req ?? ReqNear(),
        err = err ?? '',
        errDesc = errDesc ?? '',
        userSummer = userSummer ?? [];

  RetNear.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqNear.fromJson(json['Req']) : ReqNear();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    userSummer = [];
    json['UserSummer']?.forEach((v) => userSummer.add(UserSummer.fromJson(v)));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;
  late String userId;

  ReqDetail({String? id, String? pwd, String? userId})
      : id = id ?? '',
        pwd = pwd ?? '',
        userId = userId ?? '';

  ReqDetail.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    userId = json['UserId'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
  late ReqDetail req;
  late String err;
  late String errDesc;
  late UserDetail userDetail;

  RetDetail(
      {ReqDetail? req, String? err, String? errDesc, UserDetail? userDetail})
      : req = req ?? ReqDetail(),
        err = err ?? '',
        errDesc = errDesc ?? '',
        userDetail = userDetail ?? UserDetail();

  RetDetail.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqDetail.fromJson(json['Req']) : ReqDetail();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    userDetail = json['UserDetail'] != null
        ? UserDetail.fromJson(json['UserDetail'])
        : UserDetail();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;
  late String toId;

  ReqGetContact({String? id, String? pwd, String? toId})
      : id = id ?? '',
        pwd = pwd ?? '',
        toId = toId ?? '';

  ReqGetContact.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    toId = json['ToId'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
  late ReqGetContact req;
  late String err;
  late String errDesc;
  late String wechat;

  RetGetContact(
      {ReqGetContact? req, String? err, String? errDesc, String? wechat})
      : req = req ?? ReqGetContact(),
        err = err ?? '',
        errDesc = errDesc ?? '',
        wechat = wechat ?? '';

  RetGetContact.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null
        ? ReqGetContact.fromJson(json['Req'])
        : ReqGetContact();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    wechat = json['Wechat'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;
  late String type;
  late String key;

  ReqBlack({String? id, String? pwd, String? type, String? key})
      : id = id ?? '',
        pwd = pwd ?? '',
        type = type ?? '',
        key = key ?? '';

  ReqBlack.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    type = json['Type'] ?? '';
    key = json['Key'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
  late ReqBlack req;
  late String err;
  late String errDesc;
  late String key;

  RetBlack({ReqBlack? req, String? err, String? errDesc, String? key})
      : req = req ?? ReqBlack(),
        err = err ?? '',
        errDesc = errDesc ?? '',
        key = key ?? '';

  RetBlack.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqBlack.fromJson(json['Req']) : ReqBlack();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    key = json['Key'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;
  late int blackId;

  ReqBlackId({String? id, String? pwd, int? blackId})
      : id = id ?? '',
        pwd = pwd ?? '',
        blackId = blackId ?? 0;

  ReqBlackId.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    blackId = json['BlackId']?.toInt() ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
  late ReqBlackId req;
  late String err;
  late String errDesc;
  late UserBase userBase;

  RetBlackId(
      {ReqBlackId? req, String? err, String? errDesc, UserBase? userBase})
      : req = req ?? ReqBlackId(),
        err = err ?? '',
        errDesc = errDesc ?? '',
        userBase = userBase ?? UserBase();

  RetBlackId.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqBlackId.fromJson(json['Req']) : ReqBlackId();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    userBase = json['UserBase'] != null
        ? UserBase.fromJson(json['UserBase'])
        : UserBase();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;

  ReqBlackIdList({String? id, String? pwd})
      : id = id ?? '',
        pwd = pwd ?? '';

  ReqBlackIdList.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    return data;
  }
}

class RetBlackIdList {
  late ReqBlackIdList req;
  late String err;
  late String errDesc;
  late List<UserBase> userBase;

  RetBlackIdList(
      {ReqBlackIdList? req,
      String? err,
      String? errDesc,
      List<UserBase>? userBase})
      : req = req ?? ReqBlackIdList(),
        err = err ?? '',
        errDesc = errDesc ?? '',
        userBase = userBase ?? [];

  RetBlackIdList.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null
        ? ReqBlackIdList.fromJson(json['Req'])
        : ReqBlackIdList();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    userBase = [];
    json['UserBase']?.forEach((v) => userBase.add(UserBase.fromJson(v)));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;

  ReqLogout({String? id, String? pwd})
      : id = id ?? '',
        pwd = pwd ?? '';

  ReqLogout.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    return data;
  }
}

class RetLogout {
  late ReqLogout req;
  late String err;
  late String errDesc;

  RetLogout({ReqLogout? req, String? err, String? errDesc})
      : req = req ?? ReqLogout(),
        err = err ?? '',
        errDesc = errDesc ?? '';

  RetLogout.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqLogout.fromJson(json['Req']) : ReqLogout();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id']?.toInt() ?? 0;
    userId = json['UserId']?.toInt() ?? 0;
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
  late String id;
  late String pwd;
  late UserReport userReport;

  ReqReport({String? id, String? pwd, UserReport? userReport})
      : id = id ?? '',
        pwd = pwd ?? '',
        userReport = userReport ?? UserReport();

  ReqReport.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    userReport = json['UserReport'] != null
        ? UserReport.fromJson(json['UserReport'])
        : UserReport();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    data['UserReport'] = userReport.toJson();
    return data;
  }
}

class RetReport {
  late ReqReport req;
  late String err;
  late String errDesc;

  RetReport({ReqReport? req, String? err, String? errDesc})
      : req = req ?? ReqReport(),
        err = err ?? '',
        errDesc = errDesc ?? '';

  RetReport.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqReport.fromJson(json['Req']) : ReqReport();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;
  late Memo memo;

  ReqSetMemo({String? id, String? pwd, Memo? memo})
      : id = id ?? '',
        pwd = pwd ?? '',
        memo = memo ?? Memo();

  ReqSetMemo.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    memo = json['Memo'] != null ? Memo.fromJson(json['Memo']) : Memo();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    data['Memo'] = memo.toJson();
    return data;
  }
}

class RetSetMemo {
  late ReqSetMemo req;
  late String err;
  late String errDesc;

  RetSetMemo({ReqSetMemo? req, String? err, String? errDesc})
      : req = req ?? ReqSetMemo(),
        err = err ?? '',
        errDesc = errDesc ?? '';

  RetSetMemo.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqSetMemo.fromJson(json['Req']) : ReqSetMemo();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;
  late int userId;

  ReqGetMemo({String? id, String? pwd, int? userId})
      : id = id ?? '',
        pwd = pwd ?? '',
        userId = userId ?? 0;

  ReqGetMemo.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    userId = json['UserId']?.toInt() ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
  late ReqGetMemo req;
  late String err;
  late String errDesc;
  late Memo memo;

  RetGetMemo({ReqGetMemo? req, String? err, String? errDesc, Memo? memo})
      : req = req ?? ReqGetMemo(),
        err = err ?? '',
        errDesc = errDesc ?? '',
        memo = memo ?? Memo();

  RetGetMemo.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqGetMemo.fromJson(json['Req']) : ReqGetMemo();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    memo = json['Memo'] != null ? Memo.fromJson(json['Memo']) : Memo();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;
  late int banId;
  late bool ban;
  late int banDuration;
  late String cause;

  ReqGmBan(
      {String? id,
      String? pwd,
      int? banId,
      bool? ban,
      int? banDuration,
      String? cause})
      : id = id ?? '',
        pwd = pwd ?? '',
        banId = banId ?? 0,
        ban = ban ?? false,
        banDuration = banDuration ?? 0,
        cause = cause ?? '';

  ReqGmBan.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    banId = json['BanId']?.toInt() ?? 0;
    ban = json['Ban'] ?? false;
    banDuration = json['BanDuration']?.toInt() ?? 0;
    cause = json['Cause'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
  late ReqGmBan req;
  late String err;
  late String errDesc;

  RetGmBan({ReqGmBan? req, String? err, String? errDesc})
      : req = req ?? ReqGmBan(),
        err = err ?? '',
        errDesc = errDesc ?? '';

  RetGmBan.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqGmBan.fromJson(json['Req']) : ReqGmBan();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
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
  late String id;
  late String pwd;
  late int userId;
  late GmMsg gmMsg;

  ReqGmMsg({String? id, String? pwd, int? userId, GmMsg? gmMsg})
      : id = id ?? '',
        pwd = pwd ?? '',
        userId = userId ?? 0,
        gmMsg = gmMsg ?? GmMsg();

  ReqGmMsg.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    userId = json['UserId']?.toInt() ?? 0;
    gmMsg = json['GmMsg'] != null ? GmMsg.fromJson(json['GmMsg']) : GmMsg();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
  late ReqGmMsg req;
  late String err;
  late String errDesc;

  RetGmMsg({ReqGmMsg? req, String? err, String? errDesc})
      : req = req ?? ReqGmMsg(),
        err = err ?? '',
        errDesc = errDesc ?? '';

  RetGmMsg.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqGmMsg.fromJson(json['Req']) : ReqGmMsg();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
  late String id;
  late String pwd;
  late DateTime lastTime;

  ReqGmMsgList({String? id, String? pwd, DateTime? lastTime})
      : id = id ?? '',
        pwd = pwd ?? '',
        lastTime = lastTime ?? DateTime.utc(1);

  ReqGmMsgList.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    lastTime = json['LastTime'] != null
        ? DateTime.parse(json['LastTime'])
        : DateTime.utc(1);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
  late ReqGmMsgList req;
  late String err;
  late String errDesc;
  late List<GmMsg> gmMsg;

  RetGmMsgList(
      {ReqGmMsgList? req, String? err, String? errDesc, List<GmMsg>? gmMsg})
      : req = req ?? ReqGmMsgList(),
        err = err ?? '',
        errDesc = errDesc ?? '',
        gmMsg = gmMsg ?? [];

  RetGmMsgList.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null
        ? ReqGmMsgList.fromJson(json['Req'])
        : ReqGmMsgList();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    gmMsg = [];
    json['GmMsg']?.forEach((v) => gmMsg.add(GmMsg.fromJson(v)));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
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
  late String id;
  late String pwd;
  late String regHp;
  late String regPwd;
  late List<String> ext;

  ReqOss(
      {String? id,
      String? pwd,
      String? regHp,
      String? regPwd,
      List<String>? ext})
      : id = id ?? '',
        pwd = pwd ?? '',
        regHp = regHp ?? '',
        regPwd = regPwd ?? '',
        ext = ext ?? [];

  ReqOss.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    regHp = json['RegHp'] ?? '';
    regPwd = json['RegPwd'] ?? '';
    ext = json['Ext']?.cast<String>() ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
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
  late ReqOss req;
  late String err;
  late String errDesc;
  late List<OssUrl> ossUrl;

  RetOss({ReqOss? req, String? err, String? errDesc, List<OssUrl>? ossUrl})
      : req = req ?? ReqOss(),
        err = err ?? '',
        errDesc = errDesc ?? '',
        ossUrl = ossUrl ?? [];

  RetOss.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req = json['Req'] != null ? ReqOss.fromJson(json['Req']) : ReqOss();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    ossUrl = [];
    json['OssUrl']?.forEach((v) => ossUrl.add(OssUrl.fromJson(v)));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
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

class ReqVerifyHp {
  late String id;
  late String pwd;
  late String hp;
  late bool isOneClick;

  ReqVerifyHp({String? id, String? pwd, String? hp, bool? isOneClick})
      : id = id ?? '',
        pwd = pwd ?? '',
        hp = hp ?? '',
        isOneClick = isOneClick ?? false;

  ReqVerifyHp.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['Id'] ?? '';
    pwd = json['Pwd'] ?? '';
    hp = json['Hp'] ?? '';
    isOneClick = json['IsOneClick'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id.isNotEmpty) {
      data['Id'] = id;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    if (hp.isNotEmpty) {
      data['Hp'] = hp;
    }
    if (isOneClick) {
      data['IsOneClick'] = isOneClick;
    }
    return data;
  }
}

class RetVerifyHp {
  late ReqVerifyHp req;
  late String err;
  late String errDesc;
  late String pwd;

  RetVerifyHp({ReqVerifyHp? req, String? err, String? errDesc, String? pwd})
      : req = req ?? ReqVerifyHp(),
        err = err ?? '',
        errDesc = errDesc ?? '',
        pwd = pwd ?? '';

  RetVerifyHp.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    req =
        json['Req'] != null ? ReqVerifyHp.fromJson(json['Req']) : ReqVerifyHp();
    err = json['Err'] ?? '';
    errDesc = json['ErrDesc'] ?? '';
    pwd = json['Pwd'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Req'] = req.toJson();
    if (err.isNotEmpty) {
      data['Err'] = err;
    }
    if (errDesc.isNotEmpty) {
      data['ErrDesc'] = errDesc;
    }
    if (pwd.isNotEmpty) {
      data['Pwd'] = pwd;
    }
    return data;
  }
}
