// ignore_for_file: avoid_dynamic_calls, for_in_of_invalid_type, avoid_print, argument_type_not_assignable, constant_identifier_names

import 'dart:convert';

class Intergrowth {
  Intergrowth({
    this.key,
    this.title,
    this.items,
  });

  factory Intergrowth.fromJson(String str) =>
      Intergrowth.fromMap(json.decode(str));

  factory Intergrowth.fromMap(Map<String, dynamic> json) => Intergrowth(
        key: json['key'],
        title: json['title'],
        items: json['items'] == null
            ? []
            : List<Item>.from(json['items']!.map((x) => Item.fromMap(x))),
      );

  static List<Intergrowth> fromJsonList(String str) => List<Intergrowth>.from(
      json.decode(str).map((x) => Intergrowth.fromMap(x)));

  final String? key;
  final String? title;
  final List<Item>? items;

  Intergrowth copyWith({
    String? key,
    String? title,
    List<Item>? items,
  }) =>
      Intergrowth(
        key: key ?? this.key,
        title: title ?? this.title,
        items: items ?? this.items,
      );

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'key': key,
        'title': title,
        'items': items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toMap())),
      };
}

class Item {
  Item({
    this.key,
    this.title,
    this.description,
    this.imageUrl,
    this.pageUrl,
    this.resources,
  });
  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        key: json['key'],
        title: json['title'],
        description: json['description'],
        imageUrl: json['image_url'],
        pageUrl: json['page_url'],
        resources: json['resources'] == null
            ? []
            : List<Resource>.from(
                json['resources']!.map((x) => Resource.fromMap(x))),
      );
  final String? key;
  final String? title;
  final String? description;
  final String? imageUrl;
  final String? pageUrl;
  final List<Resource>? resources;

  Item copyWith({
    String? key,
    String? title,
    String? description,
    String? imageUrl,
    String? pageUrl,
    List<Resource>? resources,
  }) =>
      Item(
        key: key ?? this.key,
        title: title ?? this.title,
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl,
        pageUrl: pageUrl ?? this.pageUrl,
        resources: resources ?? this.resources,
      );

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'key': key,
        'title': title,
        'description': description,
        'image_url': imageUrl,
        'page_url': pageUrl,
        'resources': resources == null
            ? []
            : List<dynamic>.from(resources!.map((x) => x.toMap())),
      };
}

class Resource {
  Resource({
    this.key,
    this.title,
    this.files,
  });

  factory Resource.fromJson(String str) => Resource.fromMap(json.decode(str));

  factory Resource.fromMap(Map<String, dynamic> json) => Resource(
        key: keyValues.map[json['key']],
        title: titleValues.map[json['title']],
        files: json['files'] == null
            ? []
            : List<FileElement>.from(
                json['files']!.map((x) => FileElement.fromMap(x))),
      );
  final Key? key;
  final Title? title;
  final List<FileElement>? files;

  Resource copyWith({
    Key? key,
    Title? title,
    List<FileElement>? files,
  }) =>
      Resource(
        key: key ?? this.key,
        title: title ?? this.title,
        files: files ?? this.files,
      );

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'key': keyValues.reverse[key],
        'title': titleValues.reverse[title],
        'files': files == null
            ? []
            : List<dynamic>.from(files!.map((x) => x.toMap())),
      };
}

class FileElement {
  FileElement({
    this.title,
    this.url,
    this.fileType,
  });

  factory FileElement.fromJson(String str) =>
      FileElement.fromMap(json.decode(str));

  factory FileElement.fromMap(Map<String, dynamic> json) => FileElement(
        title: json['title'],
        url: json['url'],
        fileType: fileTypeValues.map[json['file_type']],
      );
  final String? title;
  final String? url;
  final FileType? fileType;

  FileElement copyWith({
    String? title,
    String? url,
    FileType? fileType,
  }) =>
      FileElement(
        title: title ?? this.title,
        url: url ?? this.url,
        fileType: fileType ?? this.fileType,
      );

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'title': title,
        'url': url,
        'file_type': fileTypeValues.reverse[fileType],
      };
}

enum FileType { DOCX, PDF, XLSX }

final fileTypeValues = EnumValues(
    {'docx': FileType.DOCX, 'pdf': FileType.PDF, 'xlsx': FileType.XLSX});

enum Key {
  CALCULATORS_APPS,
  TABLES_AND_GRAPHS,
  TABLES_GRAPHS,
  TRAINING_AND_RESOURCES,
  TRAINING_RESOURCES
}

final keyValues = EnumValues({
  'calculators_apps': Key.CALCULATORS_APPS,
  'tables_and_graphs': Key.TABLES_AND_GRAPHS,
  'tables_graphs': Key.TABLES_GRAPHS,
  'training_and_resources': Key.TRAINING_AND_RESOURCES,
  'training_resources': Key.TRAINING_RESOURCES
});

enum Title {
  CALCULATORS_APPS,
  TABLES_AND_GRAPHS,
  TABLES_GRAPHS,
  TRAINING_AND_RESOURCES,
  TRAINING_RESOURCES
}

final titleValues = EnumValues({
  'Calculators & Apps': Title.CALCULATORS_APPS,
  'Tables and Graphs': Title.TABLES_AND_GRAPHS,
  'Tables & Graphs': Title.TABLES_GRAPHS,
  'Training and Resources': Title.TRAINING_AND_RESOURCES,
  'Training & Resources': Title.TRAINING_RESOURCES
});

class EnumValues<T> {
  EnumValues(this.map);
  Map<String, T> map;
  late Map<T, String> reverseMap;

  Map<T, String> get reverse {
    return reverseMap = map.map((k, v) => MapEntry(v, k));
  }
}
