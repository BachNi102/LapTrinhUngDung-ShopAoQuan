import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/data/models/product.dart';
import 'search_event.dart';
import 'search_state.dart';
// xử lý các sự kiện thuộc lớp SearchEvent và trả về các trạng thái thuộc lớp SearchState.
class SearchBloc extends Bloc<SearchEvent,SearchState>{
  SearchBloc() : super(const SearchInitialState()){
    on<FetchAllProductEvent>(_onFetchAllProductEvent);
    on<FetchDataEvent>(_onFetchDataEvent);
    on<FetchProductByCategoryEvent>(_onFetchProductByCategoryEvent);
  }
  //đăng ký để xử lý các sự kiện tương ứng. 
  //Điều này được thực hiện bằng cách sử dụng phương thức on của lớp Bloc và truyền vào một hàm xử lý sự kiện tương ứng.
//SearchLoadingState bằng cách sử dụng emitter để phát ra một trạng thái mới.
  void _onFetchDataEvent(FetchDataEvent event, Emitter<SearchState> emitter)async {
    // Change the state to LoadingState
    emitter(const SearchLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    List<Product> products = demoProducts.where((product) => (product.title.contains(event.queryString))).toList();
    if(products.length >= 0){
      emitter( SearchSuccessFetchDataState(products: products));
    }else{
      emitter( const SearchErrorFetchDataState(errorMessage: "Something went wrong please try again!"));
    }
  }

  void _onFetchProductByCategoryEvent(FetchProductByCategoryEvent event, Emitter<SearchState> emitter)async {
    emitter(const SearchLoadingState());
    await Future.delayed(const Duration(seconds: 2));

    List<Product> products = demoProducts.where((product) => (product.category.contains(event.queryString))).toList();

    if(products.length >= 0){
      emitter( SearchSuccessFetchProductByCategoryState(products: products));
    }else{
      emitter( const SearchErrorFetchDataState(errorMessage: "Something went wrong please try again!"));
    }
  }
  void _onFetchAllProductEvent(FetchAllProductEvent event, Emitter<SearchState> emitter)async {
    List<Product> products = demoProducts;
    if(products.length >= 0){
      emitter( SearchSuccessFetchProductByCategoryState(products: products));
    }else{
      emitter( const SearchErrorFetchDataState(errorMessage: "Something went wrong please try again!"));
    }
  }
}