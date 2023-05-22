// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// OPEN API SPECIFICATION: 3.1.0
// API TITLE: Pinecone API
// API VERSION: 6385160b2d80c50016823ac4

part of pinecone_schema;

// ==========================================
// CLASS: Vector
// ==========================================

/// No Description
@freezed
class Vector with _$Vector {
  const Vector._();

  const factory Vector({
    /// The unique identifier of the vector.
    required String id,

    /// The vector values
    required List<double> values,

    /// No Description
    SparseVector? sparseValues,

    /// Metadata associated with this vector.
    Map<String, dynamic>? metadata,
  }) = _Vector;

  /// Object construction from a JSON representation
  factory Vector.fromJson(Map<String, dynamic> json) => _$VectorFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'values',
    'sparseValues',
    'metadata'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (id.length < 1) {
      return "The value of 'id' cannot be < 1 characters";
    }
    if (id.length > 512) {
      return "The length of 'id' cannot be > 512 characters";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'values': values,
      'sparseValues': sparseValues,
      'metadata': metadata,
    };
  }
}