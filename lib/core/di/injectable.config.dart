// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:steamy/application/bloc/home_bloc.dart' as _i7;
import 'package:steamy/domain/delete%20directory/deleteservices.dart' as _i3;
import 'package:steamy/domain/downloads/downloadsservices.dart' as _i5;
import 'package:steamy/infrastructure/deleteImpl.dart' as _i4;
import 'package:steamy/infrastructure/downloadsImpl.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DeleteServices>(() => _i4.DeleteImpl());
    gh.lazySingleton<_i5.DownloadsServices>(() => _i6.DownloadsImpl());
    gh.factory<_i7.HomeBloc>(() => _i7.HomeBloc(
          gh<_i5.DownloadsServices>(),
          gh<_i3.DeleteServices>(),
        ));
    return this;
  }
}
