# Flutter Starter Template

A clean architecture starter template for flutter projects.

## Dependencies

- [Dio](https://pub.dev/packages/dio)
- [Pretty Dio Logger](https://pub.dev/packages/pretty_dio_logger)
- [Shared Preferences](https://pub.dev/packages/shared_preferences)
- [Get It](https://pub.dev/packages/get_it)
- [Internet Connection Checker](https://pub.dev/packages/internet_connection_checker)
- [Dartz](https://pub.dev/packages/dartz)

## Folder Structure

- App
   - [App](lib/app/app.dart)
   - [Constants](lib/app/constants.dart)
   - [Dependency Injection](lib/app/di.dart)
   - [Extensions](lib/app/extensions.dart)
   - [Functions](lib/app/functions.dart)
   - [Shared Preferences](lib/app/app_preferences.dart)

- Data
  - Data Source
    - [Local Data Source](lib/app/data/data_source/local_data_source.dart)
    - [Remote Data Source](lib/app/data/data_source/remote_data_source.dart)
  - Mapper
    - [Mapper](lib/data/mapper/mapper.dart)
  - Network
    - [App API](lib/data/network/app_api.dart)
    - [App API Implementer](lib/data/network/app_api_impl.dart)
    - [Dio Factory](lib/data/network/dio_factory.dart)
    - [Error Handler](lib/data/network/error_handler.dart)
    - [Failure](lib/data/network/failure.dart)
    - [Network Info](lib/data/network/network_info.dart)
  - Repository
    - [Repository](lib/data/repository/repository.dart)
    - [Repository Implementer](lib/data/repository/repository_impl.dart)
  - Request
    - [Template Request](lib/data/request/login_request.dart)
  - Responses
    - [Base Response](lib/data/responses/base_response.dart)
    - [Template1 Response](lib/data/responses/home_response.dart)
    - [Template2 Response](lib/data/responses/authentication_response.dart)
  
- Domain
  - Model
    - [Template1 Model](lib/domain/model/home_model.dart)
    - [Template2 Model](lib/domain/model/authentication_model.dart)
  - Usease
    - [Base Usecase](lib/domain/usecase/base_usecase.dart)
    - [Template1 Usecase](lib/domain/usecase/home_usecase.dart)
    - [Template2 Usecase](lib/domain/usecase/login_usecase.dart)
  
- Presentation
  - Pages
    - Home
      - [Home Screen](lib/presentation/pages/home/home_screen.dart)
    - Splash
      - [Splash Screen](lib/presentation/pages/splash/splash_screen.dart)
  - Resources
    - [Assets Manager](lib/presentation/resources/assets_manager.dart)
    - [Colors Manager](lib/presentation/resources/colors_manager.dart)
    - [Font Manager](lib/presentation/resources/font_manager.dart)
    - [Routes Manager](lib/presentation/resources/routes_manager.dart)
    - [Strings Manager](lib/presentation/resources/strings_manager.dart)
    - [Styles Manager](lib/presentation/resources/styles_manager.dart)
    - [Theme Manager](lib/presentation/resources/theme_manager.dart)
    - [Values Manager](lib/presentation/resources/values_manager.dart)