import 'package:number_api_ddd/application/dtos/requests/empty_request.dart';
import 'package:number_api_ddd/application/use_cases/base_use_case.dart';
import 'package:number_api_ddd/domain/entities/submit_state.dart';
import 'package:number_api_ddd/domain/repositories/submit_state_repository.dart';

class SubmitStateUseCase implements BaseUseCase<SubmitState, EmptyRequest> {
  final SubmitStateRepository _submitStateRepository;

  SubmitStateUseCase(this._submitStateRepository);
  @override
  Future<SubmitState> call(EmptyRequest request) {
    return _submitStateRepository.submitState();
  }
}
