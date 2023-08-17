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
import 'package:steamy/application/home/home_bloc.dart' as _i11;
import 'package:steamy/application/menu/menu_bloc.dart' as _i5;
import 'package:steamy/application/playlist/playlist_bloc.dart' as _i6;
import 'package:steamy/domain/get_audio/get_audio_services.dart' as _i3;
import 'package:steamy/domain/playlist/playlist_services.dart' as _i7;
import 'package:steamy/domain/refresh/refreshservices.dart' as _i9;
import 'package:steamy/infrastructure/get_audio_impl.dart' as _i4;
import 'package:steamy/infrastructure/playlist_impl.dart' as _i8;
import 'package:steamy/infrastructure/refresh_impl.dart' as _i10;

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
    gh.factory<_i6.PlaylistBloc>(() => _i6.PlaylistBloc());
    gh.lazySingleton<_i7.PlaylistServices>(() => _i8.PlaylistServicesImpl());
    gh.lazySingleton<_i9.RefreshServices>(() => _i10.RefreshImpl());
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(
          gh<_i3.GetAudioServices>(),
          gh<_i9.RefreshServices>(),
          gh<_i7.PlaylistServices>(),
        ));
    return this;
  }
}
