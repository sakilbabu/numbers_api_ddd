import 'package:get/get.dart';
import 'package:number_api_ddd/application/dtos/requests/empty_request.dart';
import 'package:number_api_ddd/application/use_cases/submit_state_use_case.dart';
import 'package:number_api_ddd/domain/entities/submit_state.dart';

class HomeController extends GetxController {
  final SubmitStateUseCase _submitStateUseCase;
  final submitState = Rxn<SubmitState>();
  HomeController(this._submitStateUseCase);
  submitStates() async {
    final response = await _submitStateUseCase.call(EmptyRequest());

    return submitState.value = response;
  }
}
