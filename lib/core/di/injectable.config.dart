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
import 'package:steamy/application/home/home_bloc.dart' as _i12;
import 'package:steamy/application/menu/menu_bloc.dart' as _i5;
import 'package:steamy/application/playlist/playlist_bloc.dart' as _i13;
import 'package:steamy/domain/get_audio/get_audio_services.dart' as _i3;
import 'package:steamy/domain/playlist/playlist_services.dart' as _i6;
import 'package:steamy/domain/refresh/refreshservices.dart' as _i8;
import 'package:steamy/domain/validate/validate_services.dart' as _i10;
import 'package:steamy/infrastructure/get_audio_impl.dart' as _i4;
import 'package:steamy/infrastructure/playlist_impl.dart' as _i7;
import 'package:steamy/infrastructure/refresh_impl.dart' as _i9;
import 'package:steamy/infrastructure/validate_impl.dart' as _i11;

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
    gh.lazySingleton<_i3.GetAudioServices>(() => _i4.GetAudioImpl());
    gh.factory<_i5.MenuBloc>(() => _i5.MenuBloc());
    gh.lazySingleton<_i6.PlaylistServices>(() => _i7.PlaylistServicesImpl());
    gh.lazySingleton<_i8.RefreshServices>(() => _i9.RefreshImpl());
    gh.lazySingleton<_i10.ValidateServices>(() => _i11.ValidateImp());
    gh.factory<_i12.HomeBloc>(() => _i12.HomeBloc(
          gh<_i3.GetAudioServices>(),
          gh<_i8.RefreshServices>(),
          gh<_i6.PlaylistServices>(),
        ));
    gh.factory<_i13.PlaylistBloc>(() => _i13.PlaylistBloc(
          gh<_i6.PlaylistServices>(),
          gh<_i10.ValidateServices>(),
        ));
    return this;
  }
}
