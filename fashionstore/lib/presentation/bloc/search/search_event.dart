import 'package:equatable/equatable.dart';

abstract class SearchEvent extends Equatable{
  const SearchEvent();
}

class FetchDataEvent extends SearchEvent{
  final String queryString;
///chuoi truyy van cu the
  const FetchDataEvent({required this.queryString});

  @override
  List<Object?> get props => [];
}

class FetchProductByCategoryEvent extends SearchEvent{
  final String queryString;
  const FetchProductByCategoryEvent({required this.queryString});
//redua ten danh muc cu the
  @override
  List<Object?> get props => [];
}

class FetchAllProductEvent extends SearchEvent{
  //lay all item kh dua tren truy van , bo loc cu the

  const FetchAllProductEvent();

  @override
  List<Object?> get props => [];
}