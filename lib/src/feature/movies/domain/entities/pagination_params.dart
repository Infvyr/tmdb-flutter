import 'package:equatable/equatable.dart';

class PaginationParams extends Equatable {
  const PaginationParams({this.currentPage = 1, this.pageSize = 20, this.totalItems = 0});

  final int currentPage;
  final int pageSize;
  final int totalItems;

  int get totalPages => (totalItems / pageSize).ceil();
  bool get hasPreviousPage => currentPage > 1;
  bool get hasNextPage => currentPage < totalPages;

  PaginationParams copyWith({int? currentPage, int? pageSize, int? totalItems}) {
    return PaginationParams(
      currentPage: currentPage ?? this.currentPage,
      pageSize: pageSize ?? this.pageSize,
      totalItems: totalItems ?? this.totalItems,
    );
  }

  PaginationParams nextPage() {
    if (!hasNextPage) return this;
    return copyWith(currentPage: currentPage + 1);
  }

  PaginationParams previousPage() {
    if (!hasPreviousPage) return this;
    return copyWith(currentPage: currentPage - 1);
  }

  PaginationParams reset() => PaginationParams(totalItems: totalItems);

  @override
  List<Object?> get props => [currentPage, pageSize, totalItems];
}
