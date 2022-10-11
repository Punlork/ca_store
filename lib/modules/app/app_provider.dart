import 'package:ca_store/modules/app/presentation/bloc/change_language/change_language_bloc.dart';
import 'package:ca_store/modules/app/presentation/bloc/change_theme/change_theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart';


// [AppProviders] Bloc Global providers
// If you want specific blocs for specific feature,
// you can wrap bloc provider in that feature
// or can wrap bloc provider in route
class AppProviders {
  static List<BlocProvider> getProviders() {
    return [
      BlocProvider<ChangeThemeBloc>(
        create: (context) => getIt<ChangeThemeBloc>()..add(CheckTheme()),
      ),
      BlocProvider<ChangeLanguageBloc>(
        create: (context) => getIt<ChangeLanguageBloc>()..add(CheckLanguage()),
      ),

      // spread operator (...) is used to add all
      // the elements of a list to another list
      // another word we can say is use to extends behavior of collection
    ];
  }
}
