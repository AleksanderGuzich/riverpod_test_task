#!/usr/bin/env bash

printf "test_task pub get\n"
flutter clean && flutter clean cache && flutter pub get
printf '\n\n'

printf "core pub get\n"
cd core || exit
flutter clean && flutter clean cache && flutter pub get
cd ..
printf '\n\n'

printf "core_ui pub get\n"
cd core_ui || exit
flutter clean && flutter clean cache && flutter pub get
cd ..
printf '\n\n'

printf "data pub get\n"
cd data || exit
flutter clean && flutter clean cache && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
cd ..
printf '\n\n'

printf "domain pub get\n"
cd domain || exit
flutter clean && flutter clean cache && flutter pub get
cd ..
printf '\n\n'

printf "main pub get\n"
cd features/main || exit
flutter clean && flutter clean cache && flutter pub get
cd ../..
printf '\n\n'
