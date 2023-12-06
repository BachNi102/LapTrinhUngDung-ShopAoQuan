import 'package:equatable/equatable.dart';
import 'package:store/data/models/product.dart';


abstract class SearchState extends Equatable{
  const SearchState();
}

// Initial state for the search page, kh co bat ky thuoc tinh bo sung nao
class SearchInitialState extends SearchState{

  const SearchInitialState();

  @override
  List<Object?> get props => [];
}
// Loading state for the search page, chi ra rang ket qua tim kiem dang duoc tai
class SearchLoadingState extends SearchState{
  const SearchLoadingState();

  @override
  List<Object?> get props => [];
}

// Error state for the search page,Nó chứa một thuộc tính errorMessage kiểu String đại diện cho thông báo lỗi.
class SearchErrorFetchDataState extends SearchState{
  final String errorMessage;
  const SearchErrorFetchDataState({required this.errorMessage});

  @override
  List<Object?> get props => [];
}
// Success state for the search page,Nó chứa một thuộc tính products kiểu List<Product> đại diện cho các sản phẩm đã lấy được
class SearchSuccessFetchDataState extends SearchState{
  final List<Product> products;

  const SearchSuccessFetchDataState({required this.products});
  @override

  List<Object?> get props => [];
}
//khi lấy các sản phẩm theo một danh mục cụ thể. 
//Nó cũng chứa một thuộc tính products kiểu List<Product> đại diện cho các sản phẩm đã lấy được.
class SearchSuccessFetchProductByCategoryState extends SearchState{
  final List<Product> products;

  const SearchSuccessFetchProductByCategoryState({required this.products});
  @override

  List<Object?> get props => [];
}
