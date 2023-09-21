import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pum_supervisor/presentation/dashboard/dashboardscreen.dart';
import '../../resources/color_manager.dart';
import '../../resources/font_manager.dart';
import '../../resources/string_manager.dart';
import '../../resources/value_manager.dart';
import 'forgotpass_supervisor_screen.dart';

class LoginScreenSupervisor extends StatefulWidget {
  const LoginScreenSupervisor({Key? key}) : super(key: key);

  @override
  State<LoginScreenSupervisor> createState() => _LoginScreenSupervisorState();
}

class _LoginScreenSupervisorState extends State<LoginScreenSupervisor> {
  final _formKey = GlobalKey<FormState>();
  FocusNode fieldOne = FocusNode();
  FocusNode fieldTow = FocusNode();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  CollectionReference admin = FirebaseFirestore.instance.collection('supervisor');
  late String email;
  late String Password;
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:ColorManager.navyblue,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 5, left: 15),
          child: Row(
            children: [Image.asset('images/ummasons_logo.png',),],
          ),
        ),
      ),
      backgroundColor: ColorManager.navyblue,
      body: Center(
        child: Container(
          //color: Color.fromARGB(255, 211, 206, 206),
          height: AppSize.s500,
          width: AppSize.s500,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: AppPadding.p50,
                right: AppPadding.p50,
                top: AppPadding.p30),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppString.signinhead,
                          style: TextStyle(
                            fontFamily: FontConstants.fontFamily1,
                            fontSize: FontSize.s36,
                            fontWeight: FontWeightManager.bold,
                            color: ColorManager.faintblue,
                          ),
                        ),
                        const SizedBox(height: AppSize.s25),
                        Text(
                          AppString.email,
                          style: TextStyle(
                              fontFamily: FontConstants.fontFamily2,
                              color: ColorManager.faintgrey,
                              fontWeight: FontWeightManager.medium,
                              fontSize: FontSize.s15_25),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                           controller:_emailController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(
                                  Icons.alternate_email_outlined,
                                  color: ColorManager.lightblue,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorManager.lightblue, width: 2.0),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorManager.grey, width: 2.0),
                                  borderRadius: BorderRadius.circular(16),
                                )),
                            validator: (value) {
                              final bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value!);

                              if (value!.isEmpty) {
                                return AppString.Enteremail;
                              } else if (!emailValid) {
                                return AppString.Entervalidemail;
                              }
                            }),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.s20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppString.password,
                          style: TextStyle(
                              fontFamily: FontConstants.fontFamily2,
                              color: ColorManager.faintgrey,
                              fontWeight: FontWeightManager.medium,
                              fontSize: FontSize.s15_25),
                        ),
                        const SizedBox(
                          height: AppSize.s10,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          focusNode: fieldOne,
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(fieldTow);
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: ColorManager.lightblue,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorManager.lightblue, width: 2.0),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: ColorManager.grey, width: 2.0),
                              borderRadius: BorderRadius.circular(16),
                            ),
                              suffixIcon: IconButton(
                                icon: isPasswordVisible
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                              )
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return AppString.Enterpassword;
                            } else if (_passwordController.text.length < 6) {
                              return AppString.passwordlength;
                            }
                          },
                          obscureText: isPasswordVisible,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.s16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgetScreenSupervisor()),
                              );
                            },
                            child: Text(
                              AppString.forgetpass,
                              style: TextStyle(
                                  color: ColorManager.lightblue,
                                  fontFamily: FontConstants.fontFamily2,
                                  fontWeight: FontWeightManager.medium,
                                  fontSize: FontSize.s14),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.s40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: AppSize.s36,
                          width: AppSize.s210,
                          child: ElevatedButton(
                            focusNode: fieldTow,
                            onPressed: () async{
                              if (_formKey.currentState!.validate() ){
                                // loginData.setBool('login', false);
                                try{
                                  await FirebaseFirestore.instance.collection("supervisor").doc("h7JmwLlmVASot7Z59V7a").snapshots().forEach((element) async {
                                    if(element.data()?['email'] == _emailController.text &&
                                        element.data()?['password'] == _passwordController.text){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboardScreen()));
                                    }else{
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return const AlertDialog(
                                              title: Center(child: Text(AppString.error)),
                                              content: Text(
                                                'Email or password do not match!',
                                                textAlign: TextAlign.center,
                                                maxLines: 1,
                                              ),
                                            );
                                          });
                                    }
                                  });}catch(e){
                                  print(e);
                                }

                              }
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                elevation: 2,
                                backgroundColor: ColorManager.appbarcolor),
                            child: Text(
                              AppString.signin,
                              style: TextStyle(
                                  fontFamily: FontConstants.fontFamily2,
                                  fontWeight: FontWeightManager.bold,
                                  color: ColorManager.white,
                                  fontSize: FontSize.s16),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}