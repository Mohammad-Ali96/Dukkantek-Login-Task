import 'package:dukkantek_task/core/domain/entities/failures.dart';
import 'package:dukkantek_task/core/domain/usecases/usecase.dart';
import 'package:dukkantek_task/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LogoutRemoteUseCase extends UseCase<bool, NoParams> {
  final AuthRepository repository;

  LogoutRemoteUseCase({required this.repository});

  @override
  Future<Either<Failure, bool>> call(NoParams params) {
    return repository.logoutRemote();
  }
}
