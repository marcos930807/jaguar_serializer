// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.player;

// **************************************************************************
// Generator: JaguarSerializerGenerator
// **************************************************************************

abstract class _$PlayerSerializer implements Serializer<Player> {
  final _addressSerializer = new AddressSerializer();

  Map toMap(Player model, {bool withType: false, String typeKey}) {
    Map<String, dynamic> ret;
    if (model != null) {
      ret = <String, dynamic>{};
      setNullableValue(ret, "name", model.name);
      setNullableValue(ret, "email", model.email);
      setNullableValue(ret, "age", model.age);
      setNullableValue(ret, "score", model.score);
      setNullableValue(ret, "emailConfirmed", model.emailConfirmed);
      setNullableValue(ret, "test", model.test);
      setNullableValue(
          ret,
          "address",
          _addressSerializer.toMap(model.address,
              withType: withType, typeKey: typeKey));
      setTypeKeyValue(typeKey, modelString(), withType, ret);
    }
    return ret;
  }

  Player fromMap(Map map, {Player model, String typeKey}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Player) {
      model = createModel();
    }
    model.name = map["name"];
    model.email = map["email"];
    model.age = map["age"];
    model.score = map["score"];
    model.emailConfirmed = map["emailConfirmed"];
    model.test = map["test"];
    model.address =
        _addressSerializer.fromMap(map["address"], typeKey: typeKey);
    return model;
  }

  String modelString() => "Player";
}

abstract class _$AddressSerializer implements Serializer<Address> {
  Map toMap(Address model, {bool withType: false, String typeKey}) {
    Map<String, dynamic> ret;
    if (model != null) {
      ret = <String, dynamic>{};
      setNullableValue(ret, "street", model.street);
      setNullableValue(ret, "zipcode", model.zipcode);
      setNullableValue(ret, "country", model.country);
      setNullableValue(ret, "city", model.city);
      setTypeKeyValue(typeKey, modelString(), withType, ret);
    }
    return ret;
  }

  Address fromMap(Map map, {Address model, String typeKey}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Address) {
      model = createModel();
    }
    model.street = map["street"];
    model.zipcode = map["zipcode"];
    model.country = map["country"];
    model.city = map["city"];
    return model;
  }

  String modelString() => "Address";
}
