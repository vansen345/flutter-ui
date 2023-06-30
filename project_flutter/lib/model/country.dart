import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class CountryModel {
  @JsonKey(name: 'SV501')
  String? sv501;

  @JsonKey(name: 'SV502')
  String? sv502;

  @JsonKey(includeFromJson: false, includeToJson: false)
  bool isSelected = false;

  CountryModel({
    this.sv501,
    this.sv502,
  });

  String getName() => (sv501 ?? '').toLowerCase();

  factory CountryModel.fromJson(Map<String, dynamic>? json) =>
      _$CountryModelFromJson(json ?? {});

  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
}
