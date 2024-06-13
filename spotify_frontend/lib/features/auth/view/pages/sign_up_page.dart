import 'package:flutter/material.dart';
import 'package:spotify_frontend/core/theme/theme.dart';
import 'package:spotify_frontend/core/widgets/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Sign Up.",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: "Name",
                controller: _nameController,
              ),
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
                text: "Sign Up",
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.titleMedium,
                  text: "Already have an account?",
                  children: const <TextSpan>[
                    TextSpan(
                      text: " Sign In",
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
    );
  }
}
