import '../../../../core/constants/app_enum.dart';
import '../../../../core/utils/Field_type_helper.dart';
import '../../domain/entiries/dynamic_form_entity.dart';

class DynamicFormModel extends DynamicFormEntity {
  @override
  final String key;
  @override
  final FieldType type;
  @override
  final List<String>? options;

  const DynamicFormModel({required this.key, required this.type, this.options})
    : super(key: key, type: type, options: options);

  factory DynamicFormModel.fromJson(String key, Map<String, dynamic> json) {
    return DynamicFormModel(
      key: key,
      type: FieldTypeHelper.fromString(json['type']),
      options: json['options'] != null
          ? List<String>.from(json['options'])
          : null,
    );
  }

  DynamicFormEntity toEntity() {
    return DynamicFormEntity(key: key, type: type, options: options);
  }
}
