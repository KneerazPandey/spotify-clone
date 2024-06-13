import 'package:flutter/material.dart';
import 'package:spotify_frontend/core/theme/theme.dart';
import 'package:spotify_frontend/core/widgets/widgets.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Sign In.",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 50,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const SizedBox(height: 15),
                        CustomTextFormField(
                          hintText: "Email",
                          controller: _emailController,
                        ),
                        const SizedBox(height: 15),
                        CustomTextFormField(
                          hintText: "Password",
                          controller: _passwordController,
                          obscureText: true,
                        ),
                        const SizedBox(height: 25),
                        CustomGradientButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              //! NOTE: handle sign up logic here.
                            }
                          },
                          text: "Sign In",
                        ),
                        const SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.titleMedium,
                            text: "Need an account?",
                            children: const <TextSpan>[
                              TextSpan(
                                text: " Sign Up",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.gradient2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
