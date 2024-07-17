class CountryModel {
  CountryModel({
    required this.name,
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    required this.cioc,
    required this.fifa,
    required this.independent,
    required this.status,
    required this.unMember,
    // required this.currencies,
    required this.idd,
    required this.capital,
    required this.capitalInfo,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.continents,
    required this.languages,
    required this.translations,
    required this.latlng,
    required this.landlocked,
    required this.borders,
    required this.area,
    required this.flag,
    required this.demonyms,
    required this.flags,
    required this.coatOfArms,
    required this.population,
    required this.maps,
    required this.gini,
    required this.car,
    required this.postalCode,
    required this.startOfWeek,
    required this.timezones,
  });

  final Name? name;
  static const String nameKey = "name";

  final List<String> tld;
  static const String tldKey = "tld";

  final String? cca2;
  static const String cca2Key = "cca2";

  final String? ccn3;
  static const String ccn3Key = "ccn3";

  final String? cca3;
  static const String cca3Key = "cca3";

  final String? cioc;
  static const String ciocKey = "cioc";

  final String? fifa;
  static const String fifaKey = "fifa";

  final bool? independent;
  static const String independentKey = "independent";

  final String? status;
  static const String statusKey = "status";

  final bool? unMember;
  static const String unMemberKey = "unMember";

  // final Currencies? currencies;
  // static const String currenciesKey = "currencies";

  final Idd? idd;
  static const String iddKey = "idd";

  final List<String> capital;
  static const String capitalKey = "capital";

  final CapitalInfo? capitalInfo;
  static const String capitalInfoKey = "capitalInfo";

  final List<String> altSpellings;
  static const String altSpellingsKey = "altSpellings";

  final String? region;
  static const String regionKey = "region";

  final String? subregion;
  static const String subregionKey = "subregion";

  final List<String> continents;
  static const String continentsKey = "continents";

  final Languages? languages;
  static const String languagesKey = "languages";

  final Map<String, Translation> translations;
  static const String translationsKey = "translations";

  final List<num> latlng;
  static const String latlngKey = "latlng";

  final bool? landlocked;
  static const String landlockedKey = "landlocked";

  final List<String> borders;
  static const String bordersKey = "borders";

  final num? area;
  static const String areaKey = "area";

  final String? flag;
  static const String flagKey = "flag";

  final Demonyms? demonyms;
  static const String demonymsKey = "demonyms";

  final Flags? flags;
  static const String flagsKey = "flags";

  final CoatOfArms? coatOfArms;
  static const String coatOfArmsKey = "coatOfArms";

  final num? population;
  static const String populationKey = "population";

  final Maps? maps;
  static const String mapsKey = "maps";

  final Gini? gini;
  static const String giniKey = "gini";

  final Car? car;
  static const String carKey = "car";

  final PostalCode? postalCode;
  static const String postalCodeKey = "postalCode";

  final String? startOfWeek;
  static const String startOfWeekKey = "startOfWeek";

  final List<String> timezones;
  static const String timezonesKey = "timezones";

  CountryModel copyWith({
    Name? name,
    List<String>? tld,
    String? cca2,
    String? ccn3,
    String? cca3,
    String? cioc,
    String? fifa,
    bool? independent,
    String? status,
    bool? unMember,
    // Currencies? currencies,
    Idd? idd,
    List<String>? capital,
    CapitalInfo? capitalInfo,
    List<String>? altSpellings,
    String? region,
    String? subregion,
    List<String>? continents,
    Languages? languages,
    Map<String, Translation>? translations,
    List<num>? latlng,
    bool? landlocked,
    List<String>? borders,
    num? area,
    String? flag,
    Demonyms? demonyms,
    Flags? flags,
    CoatOfArms? coatOfArms,
    num? population,
    Maps? maps,
    Gini? gini,
    Car? car,
    PostalCode? postalCode,
    String? startOfWeek,
    List<String>? timezones,
  }) {
    return CountryModel(
      name: name ?? this.name,
      tld: tld ?? this.tld,
      cca2: cca2 ?? this.cca2,
      ccn3: ccn3 ?? this.ccn3,
      cca3: cca3 ?? this.cca3,
      cioc: cioc ?? this.cioc,
      fifa: fifa ?? this.fifa,
      independent: independent ?? this.independent,
      status: status ?? this.status,
      unMember: unMember ?? this.unMember,
      // currencies: currencies ?? this.currencies,
      idd: idd ?? this.idd,
      capital: capital ?? this.capital,
      capitalInfo: capitalInfo ?? this.capitalInfo,
      altSpellings: altSpellings ?? this.altSpellings,
      region: region ?? this.region,
      subregion: subregion ?? this.subregion,
      continents: continents ?? this.continents,
      languages: languages ?? this.languages,
      translations: translations ?? this.translations,
      latlng: latlng ?? this.latlng,
      landlocked: landlocked ?? this.landlocked,
      borders: borders ?? this.borders,
      area: area ?? this.area,
      flag: flag ?? this.flag,
      demonyms: demonyms ?? this.demonyms,
      flags: flags ?? this.flags,
      coatOfArms: coatOfArms ?? this.coatOfArms,
      population: population ?? this.population,
      maps: maps ?? this.maps,
      gini: gini ?? this.gini,
      car: car ?? this.car,
      postalCode: postalCode ?? this.postalCode,
      startOfWeek: startOfWeek ?? this.startOfWeek,
      timezones: timezones ?? this.timezones,
    );
  }

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json["name"] == null ? null : Name.fromJson(json["name"]),
      tld: json["tld"] == null
          ? []
          : List<String>.from(json["tld"]!.map((x) => x)),
      cca2: json["cca2"],
      ccn3: json["ccn3"],
      cca3: json["cca3"],
      cioc: json["cioc"],
      fifa: json["fifa"],
      independent: json["independent"],
      status: json["status"],
      unMember: json["unMember"],
      // currencies: json["currencies"] == null
      //     ? null
      //     : Currencies.fromJson(json["currencies"]),
      idd: json["idd"] == null ? null : Idd.fromJson(json["idd"]),
      capital: json["capital"] == null
          ? []
          : List<String>.from(json["capital"]!.map((x) => x)),
      capitalInfo: json["capitalInfo"] == null
          ? null
          : CapitalInfo.fromJson(json["capitalInfo"]),
      altSpellings: json["altSpellings"] == null
          ? []
          : List<String>.from(json["altSpellings"]!.map((x) => x)),
      region: json["region"],
      subregion: json["subregion"],
      continents: json["continents"] == null
          ? []
          : List<String>.from(json["continents"]!.map((x) => x)),
      languages: json["languages"] == null
          ? null
          : Languages.fromJson(json["languages"]),
      translations: Map.from(json["translations"]).map(
          (k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
      latlng: json["latlng"] == null
          ? []
          : List<num>.from(json["latlng"]!.map((x) => x)),
      landlocked: json["landlocked"],
      borders: json["borders"] == null
          ? []
          : List<String>.from(json["borders"]!.map((x) => x)),
      area: json["area"],
      flag: json["flag"],
      demonyms:
          json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
      flags: json["flags"] == null ? null : Flags.fromJson(json["flags"]),
      coatOfArms: json["coatOfArms"] == null
          ? null
          : CoatOfArms.fromJson(json["coatOfArms"]),
      population: json["population"],
      maps: json["maps"] == null ? null : Maps.fromJson(json["maps"]),
      gini: json["gini"] == null ? null : Gini.fromJson(json["gini"]),
      car: json["car"] == null ? null : Car.fromJson(json["car"]),
      postalCode: json["postalCode"] == null
          ? null
          : PostalCode.fromJson(json["postalCode"]),
      startOfWeek: json["startOfWeek"],
      timezones: json["timezones"] == null
          ? []
          : List<String>.from(json["timezones"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name?.toJson(),
        "tld": tld.map((x) => x).toList(),
        "cca2": cca2,
        "ccn3": ccn3,
        "cca3": cca3,
        "cioc": cioc,
        "fifa": fifa,
        "independent": independent,
        "status": status,
        "unMember": unMember,
        // "currencies": currencies?.toJson(),
        "idd": idd?.toJson(),
        "capital": capital.map((x) => x).toList(),
        "capitalInfo": capitalInfo?.toJson(),
        "altSpellings": altSpellings.map((x) => x).toList(),
        "region": region,
        "subregion": subregion,
        "continents": continents.map((x) => x).toList(),
        "languages": languages?.toJson(),
        "translations": Map.from(translations)
            .map((k, v) => MapEntry<String, dynamic>(k, v?.toJson())),
        "latlng": latlng.map((x) => x).toList(),
        "landlocked": landlocked,
        "borders": borders.map((x) => x).toList(),
        "area": area,
        "flag": flag,
        "demonyms": demonyms?.toJson(),
        "flags": flags?.toJson(),
        "coatOfArms": coatOfArms?.toJson(),
        "population": population,
        "maps": maps?.toJson(),
        "gini": gini?.toJson(),
        "car": car?.toJson(),
        "postalCode": postalCode?.toJson(),
        "startOfWeek": startOfWeek,
        "timezones": timezones.map((x) => x).toList(),
      };

  @override
  String toString() {
    return "$name, $tld, $cca2, $ccn3, $cca3, $cioc, $fifa, $independent, $status, $unMember, $idd, $capital, $capitalInfo, $altSpellings, $region, $subregion, $continents, $languages, $translations, $latlng, $landlocked, $borders, $area, $flag, $demonyms, $flags, $coatOfArms, $population, $maps, $gini, $car, $postalCode, $startOfWeek, $timezones, ";
  }
}

class CapitalInfo {
  CapitalInfo({
    required this.latlng,
  });

  final List<num> latlng;
  static const String latlngKey = "latlng";

  CapitalInfo copyWith({
    List<num>? latlng,
  }) {
    return CapitalInfo(
      latlng: latlng ?? this.latlng,
    );
  }

  factory CapitalInfo.fromJson(Map<String, dynamic> json) {
    return CapitalInfo(
      latlng: json["latlng"] == null
          ? []
          : List<num>.from(json["latlng"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "latlng": latlng.map((x) => x).toList(),
      };

  @override
  String toString() {
    return "$latlng, ";
  }
}

class Car {
  Car({
    required this.signs,
    required this.side,
  });

  final List<String> signs;
  static const String signsKey = "signs";

  final String? side;
  static const String sideKey = "side";

  Car copyWith({
    List<String>? signs,
    String? side,
  }) {
    return Car(
      signs: signs ?? this.signs,
      side: side ?? this.side,
    );
  }

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      signs: json["signs"] == null
          ? []
          : List<String>.from(json["signs"]!.map((x) => x)),
      side: json["side"],
    );
  }

  Map<String, dynamic> toJson() => {
        "signs": signs.map((x) => x).toList(),
        "side": side,
      };

  @override
  String toString() {
    return "$signs, $side, ";
  }
}

class CoatOfArms {
  CoatOfArms({
    required this.svg,
    required this.png,
  });

  final String? svg;
  static const String svgKey = "svg";

  final String? png;
  static const String pngKey = "png";

  CoatOfArms copyWith({
    String? svg,
    String? png,
  }) {
    return CoatOfArms(
      svg: svg ?? this.svg,
      png: png ?? this.png,
    );
  }

  factory CoatOfArms.fromJson(Map<String, dynamic> json) {
    return CoatOfArms(
      svg: json["svg"],
      png: json["png"],
    );
  }

  Map<String, dynamic> toJson() => {
        "svg": svg,
        "png": png,
      };

  @override
  String toString() {
    return "$svg, $png, ";
  }
}

class Currencies {
  Currencies({
    required this.ngn,
  });

  final Ngn? ngn;
  static const String ngnKey = "NGN";

  Currencies copyWith({
    Ngn? ngn,
  }) {
    return Currencies(
      ngn: ngn ?? this.ngn,
    );
  }

  factory Currencies.fromJson(Map<String, dynamic> json) {
    return Currencies(
      ngn: json["NGN"] == null ? null : Ngn.fromJson(json["NGN"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "NGN": ngn?.toJson(),
      };

  @override
  String toString() {
    return "$ngn, ";
  }
}

class Ngn {
  Ngn({
    required this.name,
    required this.symbol,
  });

  final String? name;
  static const String nameKey = "name";

  final String? symbol;
  static const String symbolKey = "symbol";

  Ngn copyWith({
    String? name,
    String? symbol,
  }) {
    return Ngn(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }

  factory Ngn.fromJson(Map<String, dynamic> json) {
    return Ngn(
      name: json["name"],
      symbol: json["symbol"],
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
      };

  @override
  String toString() {
    return "$name, $symbol, ";
  }
}

class Demonyms {
  Demonyms({
    required this.eng,
    required this.fra,
  });

  final Eng? eng;
  static const String engKey = "eng";

  final Eng? fra;
  static const String fraKey = "fra";

  Demonyms copyWith({
    Eng? eng,
    Eng? fra,
  }) {
    return Demonyms(
      eng: eng ?? this.eng,
      fra: fra ?? this.fra,
    );
  }

  factory Demonyms.fromJson(Map<String, dynamic> json) {
    return Demonyms(
      eng: json["eng"] == null ? null : Eng.fromJson(json["eng"]),
      fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "eng": eng?.toJson(),
        "fra": fra?.toJson(),
      };

  @override
  String toString() {
    return "$eng, $fra, ";
  }
}

class Eng {
  Eng({
    required this.f,
    required this.m,
  });

  final String? f;
  static const String fKey = "f";

  final String? m;
  static const String mKey = "m";

  Eng copyWith({
    String? f,
    String? m,
  }) {
    return Eng(
      f: f ?? this.f,
      m: m ?? this.m,
    );
  }

  factory Eng.fromJson(Map<String, dynamic> json) {
    return Eng(
      f: json["f"],
      m: json["m"],
    );
  }

  Map<String, dynamic> toJson() => {
        "f": f,
        "m": m,
      };

  @override
  String toString() {
    return "$f, $m, ";
  }
}

class Flags {
  Flags({
    required this.svg,
    required this.png,
    required this.alt,
  });

  final String? svg;
  static const String svgKey = "svg";

  final String? png;
  static const String pngKey = "png";

  final String? alt;
  static const String altKey = "alt";

  Flags copyWith({
    String? svg,
    String? png,
    String? alt,
  }) {
    return Flags(
      svg: svg ?? this.svg,
      png: png ?? this.png,
      alt: alt ?? this.alt,
    );
  }

  factory Flags.fromJson(Map<String, dynamic> json) {
    return Flags(
      svg: json["svg"],
      png: json["png"],
      alt: json["alt"],
    );
  }

  Map<String, dynamic> toJson() => {
        "svg": svg,
        "png": png,
        "alt": alt,
      };

  @override
  String toString() {
    return "$svg, $png, $alt, ";
  }
}

class Gini {
  Gini({
    required this.the2018,
  });

  final num? the2018;
  static const String the2018Key = "2018";

  Gini copyWith({
    num? the2018,
  }) {
    return Gini(
      the2018: the2018 ?? this.the2018,
    );
  }

  factory Gini.fromJson(Map<String, dynamic> json) {
    return Gini(
      the2018: json["2018"],
    );
  }

  Map<String, dynamic> toJson() => {
        "2018": the2018,
      };

  @override
  String toString() {
    return "$the2018, ";
  }
}

class Idd {
  Idd({
    required this.root,
    required this.suffixes,
  });

  final String? root;
  static const String rootKey = "root";

  final List<String> suffixes;
  static const String suffixesKey = "suffixes";

  Idd copyWith({
    String? root,
    List<String>? suffixes,
  }) {
    return Idd(
      root: root ?? this.root,
      suffixes: suffixes ?? this.suffixes,
    );
  }

  factory Idd.fromJson(Map<String, dynamic> json) {
    return Idd(
      root: json["root"],
      suffixes: json["suffixes"] == null
          ? []
          : List<String>.from(json["suffixes"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "root": root,
        "suffixes": suffixes.map((x) => x).toList(),
      };

  @override
  String toString() {
    return "$root, $suffixes, ";
  }
}

class Languages {
  Languages({
    required this.eng,
  });

  final String? eng;
  static const String engKey = "eng";

  Languages copyWith({
    String? eng,
  }) {
    return Languages(
      eng: eng ?? this.eng,
    );
  }

  factory Languages.fromJson(Map<String, dynamic> json) {
    return Languages(
      eng: json["eng"],
    );
  }

  Map<String, dynamic> toJson() => {
        "eng": eng,
      };

  @override
  String toString() {
    return "$eng, ";
  }
}

class Maps {
  Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });

  final String? googleMaps;
  static const String googleMapsKey = "googleMaps";

  final String? openStreetMaps;
  static const String openStreetMapsKey = "openStreetMaps";

  Maps copyWith({
    String? googleMaps,
    String? openStreetMaps,
  }) {
    return Maps(
      googleMaps: googleMaps ?? this.googleMaps,
      openStreetMaps: openStreetMaps ?? this.openStreetMaps,
    );
  }

  factory Maps.fromJson(Map<String, dynamic> json) {
    return Maps(
      googleMaps: json["googleMaps"],
      openStreetMaps: json["openStreetMaps"],
    );
  }

  Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
      };

  @override
  String toString() {
    return "$googleMaps, $openStreetMaps, ";
  }
}

class Name {
  Name({
    required this.common,
    required this.official,
    required this.nativeName,
  });

  final String? common;
  static const String commonKey = "common";

  final String? official;
  static const String officialKey = "official";

  final NativeName? nativeName;
  static const String nativeNameKey = "nativeName";

  Name copyWith({
    String? common,
    String? official,
    NativeName? nativeName,
  }) {
    return Name(
      common: common ?? this.common,
      official: official ?? this.official,
      nativeName: nativeName ?? this.nativeName,
    );
  }

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      common: json["common"],
      official: json["official"],
      nativeName: json["nativeName"] == null
          ? null
          : NativeName.fromJson(json["nativeName"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName?.toJson(),
      };

  @override
  String toString() {
    return "$common, $official, $nativeName, ";
  }
}

class NativeName {
  NativeName({
    required this.eng,
  });

  final Translation? eng;
  static const String engKey = "eng";

  NativeName copyWith({
    Translation? eng,
  }) {
    return NativeName(
      eng: eng ?? this.eng,
    );
  }

  factory NativeName.fromJson(Map<String, dynamic> json) {
    return NativeName(
      eng: json["eng"] == null ? null : Translation.fromJson(json["eng"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "eng": eng?.toJson(),
      };

  @override
  String toString() {
    return "$eng, ";
  }
}

class Translation {
  Translation({
    required this.official,
    required this.common,
  });

  final String? official;
  static const String officialKey = "official";

  final String? common;
  static const String commonKey = "common";

  Translation copyWith({
    String? official,
    String? common,
  }) {
    return Translation(
      official: official ?? this.official,
      common: common ?? this.common,
    );
  }

  factory Translation.fromJson(Map<String, dynamic> json) {
    return Translation(
      official: json["official"],
      common: json["common"],
    );
  }

  Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
      };

  @override
  String toString() {
    return "$official, $common, ";
  }
}

class PostalCode {
  PostalCode({
    required this.format,
    required this.regex,
  });

  final String? format;
  static const String formatKey = "format";

  final String? regex;
  static const String regexKey = "regex";

  PostalCode copyWith({
    String? format,
    String? regex,
  }) {
    return PostalCode(
      format: format ?? this.format,
      regex: regex ?? this.regex,
    );
  }

  factory PostalCode.fromJson(Map<String, dynamic> json) {
    return PostalCode(
      format: json["format"],
      regex: json["regex"],
    );
  }

  Map<String, dynamic> toJson() => {
        "format": format,
        "regex": regex,
      };

  @override
  String toString() {
    return "$format, $regex, ";
  }
}
