import 'package:number_api_ddd/domain/entities/submit_state.dart';

abstract class SubmitStateRepository {
  Future<SubmitState> getSubmitState();
}
