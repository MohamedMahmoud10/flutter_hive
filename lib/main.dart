import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_data_base/app/models/note_models.dart';
import 'package:flutter_local_data_base/bloc_observer.dart';
import 'package:flutter_local_data_base/core/const/const_strings.dart';
import 'package:hive_flutter/adapters.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter<NoteModels>(NoteModelsAdapter());
  await Hive.openBox<NoteModels>(ConstStrings.noteModelTableName);
  runApp(const MyApp());
}
