part of 'injections.dart';

Future<void> appInject() async {
  serviceInject();
  await repoInject();
  useCaseInject();
  cubitInject();
  blocInject();
}
