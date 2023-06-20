import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:main/src/main_screen/main_notifier.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(mainProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Enter your email'),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (String? email) => Validator.validateEmail(email),
              controller: emailController,
            ),
            const SizedBox(height: 20),
            Center(
              child: state.isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(),
                    )
                  : TextButton(
                      onPressed: () async {
                        final String? validationError =
                            Validator.validateEmail(emailController.text);

                        if (validationError == null) {
                          ref.read(mainProvider.notifier).sendEmail(
                                emailController.text,
                              );
                          await Future.delayed(const Duration(seconds: 2));
                          _dialogBuilder(context);
                        }
                      },
                      child: const Text('Tap to send'),
                    ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text('Data sent successfully'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Ok'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}
