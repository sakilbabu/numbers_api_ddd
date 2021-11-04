import 'package:get/get.dart';
import 'package:number_api_ddd/domain/entities/submit_state.dart';
import 'package:number_api_ddd/infrastructure/model/model.dart';

abstract class SubmitStateDataSource {
  Future<SubmitState> submitState();
}

class SubmitStateDataSourceImpl extends GetConnect
    implements SubmitStateDataSource {
  @override
  void onInit() {
    super.onInit();
    baseUrl = "http://numbersapi.com/random/";
  }

  @override
  Future<SubmitState> submitState() async {
    final response = await get("year?json");
    return SubmitStateModel.fromJson(response.bodyString!);
  }
}
