import 'package:number_api_ddd/domain/entities/submit_state.dart';
import 'package:number_api_ddd/domain/repositories/submit_state_repository.dart';
import 'package:number_api_ddd/infrastructure/data_source/submit_state_data_source.dart';

class SubmitStateRepositoryImpl implements SubmitStateRepository {
  final SubmitStateDataSource _submitStateDataSource;

  SubmitStateRepositoryImpl(this._submitStateDataSource);
  @override
  Future<SubmitState> getSubmitState() {
    return _submitStateDataSource.submitState();
  }
}
