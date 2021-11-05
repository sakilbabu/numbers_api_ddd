import 'package:get/get.dart';
import 'package:number_api_ddd/application/use_cases/submit_state_use_case.dart';
import 'package:number_api_ddd/domain/repositories/submit_state_repository.dart';
import 'package:number_api_ddd/infrastructure/data_source/submit_state_data_source.dart';
import 'package:number_api_ddd/infrastructure/repository/submit_state_repository.dart';
import 'package:number_api_ddd/presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  final find = Get.find;
  @override
  void dependencies() {
    Get.lazyPut<SubmitStateDataSource>(() => SubmitStateDataSourceImpl());
    Get.lazyPut<SubmitStateRepository>(() => SubmitStateRepositoryImpl(find()));
    Get.lazyPut(() => SubmitStateUseCase(find()));
    Get.lazyPut(() => HomeController(find()));
  }
}
