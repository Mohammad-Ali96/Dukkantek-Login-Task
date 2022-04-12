import 'package:dukkantek_task/core/domain/entities/failures.dart';
import 'package:dukkantek_task/core/domain/usecases/usecase.dart';
import 'package:dukkantek_task/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetFirstTimeLoggedUseCase extends UseCase<bool?, NoParams> {
  final AuthRepository authRepository;

  GetFirstTimeLoggedUseCase(this.authRepository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return authRepository.getIsFirstTimeLogged();
  }
}
