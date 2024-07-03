import 'dart:convert';

Response responseFromMap(String str) => Response.fromMap(json.decode(str));

String responseToMap(Response data) => json.encode(data.toMap());

class Response {
  List<dynamic> content;
  Pageable pageable;
  int totalPages;
  int totalElements;
  bool last;
  int size;
  int number;
  Sort sort;
  bool first;
  int numberOfElements;
  bool empty;

  Response({
    required this.content,
    required this.pageable,
    required this.totalPages,
    required this.totalElements,
    required this.last,
    required this.size,
    required this.number,
    required this.sort,
    required this.first,
    required this.numberOfElements,
    required this.empty,
  });

  factory Response.fromMap(Map<String, dynamic> json) => Response(
        content: List<dynamic>.from(json["content"].map((x) => x)),
        pageable: Pageable.fromMap(json["pageable"]),
        totalPages: json["totalPages"],
        totalElements: json["totalElements"],
        last: json["last"],
        size: json["size"],
        number: json["number"],
        sort: Sort.fromMap(json["sort"]),
        first: json["first"],
        numberOfElements: json["numberOfElements"],
        empty: json["empty"],
      );

  Map<String, dynamic> toMap() => {
        "content": List<dynamic>.from(content.map((x) => x)),
        "pageable": pageable.toMap(),
        "totalPages": totalPages,
        "totalElements": totalElements,
        "last": last,
        "size": size,
        "number": number,
        "sort": sort.toMap(),
        "first": first,
        "numberOfElements": numberOfElements,
        "empty": empty,
      };
}

class Pageable {
  Sort sort;
  int offset;
  int pageSize;
  int pageNumber;
  bool paged;
  bool unpaged;

  Pageable({
    required this.sort,
    required this.offset,
    required this.pageSize,
    required this.pageNumber,
    required this.paged,
    required this.unpaged,
  });

  factory Pageable.fromMap(Map<String, dynamic> json) => Pageable(
        sort: Sort.fromMap(json["sort"]),
        offset: json["offset"],
        pageSize: json["pageSize"],
        pageNumber: json["pageNumber"],
        paged: json["paged"],
        unpaged: json["unpaged"],
      );

  Map<String, dynamic> toMap() => {
        "sort": sort.toMap(),
        "offset": offset,
        "pageSize": pageSize,
        "pageNumber": pageNumber,
        "paged": paged,
        "unpaged": unpaged,
      };
}

class Sort {
  bool unsorted;
  bool sorted;
  bool empty;

  Sort({
    required this.unsorted,
    required this.sorted,
    required this.empty,
  });

  factory Sort.fromMap(Map<String, dynamic> json) => Sort(
        unsorted: json["unsorted"],
        sorted: json["sorted"],
        empty: json["empty"],
      );

  Map<String, dynamic> toMap() => {
        "unsorted": unsorted,
        "sorted": sorted,
        "empty": empty,
      };
}
