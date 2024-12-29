import 'package:cine_world/core/di/injections.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/logic/bloc/stt/stt_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SttDialog extends StatefulWidget {
  const SttDialog({super.key});

  @override
  State<SttDialog> createState() => _SttDialogState();
}

class _SttDialogState extends State<SttDialog> {
  final _bloc = getIt<SttBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const InitialEvent());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          constraints: const BoxConstraints(minHeight: 100),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: _ResultWidget(bloc: _bloc),
        )
      ],
    );
  }
}

class _ResultWidget extends StatelessWidget {
  const _ResultWidget({required this.bloc});

  final SttBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SttBloc, SttState>(
      bloc: bloc,
      buildWhen: (previous, current) => current is ListeningState,
      builder: (context, state) {
        if (state is ListeningState) {
          return Text(
            state.text,
            textAlign: TextAlign.center,
          );
        }
        return Text(
          S.current.listening,
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
