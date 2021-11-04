import 'package:number_api_ddd/application/use_cases/base_use_case.dart';
import 'package:number_api_ddd/domain/repositories/submit_state_repository.dart';

class SubmitStateUseCase implements BaseUseCase {
  final SubmitStateRepository _submitStateRepository;

  SubmitStateUseCase(this._submitStateRepository);
  @override
  Future call(request) {
    return _submitStateRepository.submitState();
  }
}
