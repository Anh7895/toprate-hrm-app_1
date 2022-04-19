//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/auth.dart';
import 'package:openapi/src/model/coefficient_pay.dart';
import 'package:openapi/src/model/exceptions.dart';
import 'package:openapi/src/model/pagination.dart';
import 'package:openapi/src/model/project.dart';
import 'package:openapi/src/model/property_id.dart';
import 'package:openapi/src/model/property_uuid.dart';
import 'package:openapi/src/model/r_auth.dart';
import 'package:openapi/src/model/setting_block.dart';

part 'serializers.g.dart';

@SerializersFor([
  Auth,
  CoefficientPay,
  Exceptions,
  Pagination,
  Project,
  PropertyID,
  PropertyUuid,
  RAuth,
  SettingBlock,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
