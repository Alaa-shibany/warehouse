import 'package:freezed_annotation/freezed_annotation.dart';

part 'sector_mode.freezed.dart';
part 'sector_mode.g.dart';

@freezed
abstract class SectorMode with _$SectorMode {
  const factory SectorMode({
    required int id,
    required String name,
  }) = _SectorMode;

  factory SectorMode.fromJson(Map<String, dynamic> json) => _$SectorModeFromJson(json);
}
