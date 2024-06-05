import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login>{
  Color blue = const Color(0xff003366);
  TextEditingController  email = TextEditingController();
   TextEditingController  password = TextEditingController();
  

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context){
        return Scaffold(
          backgroundColor: blue,//color blue
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            backgroundColor: blue,
            title: const Text('',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
            centerTitle: true,
          ), 
          body: logoView(),
          bottomSheet: pageView(),
        );
    
  }
  Widget logoView(){
    return ClipPath(
      //clipper: WaveClipperOne(),
      child: Container(height:MediaQuery.of(context).size.height*0.34,color: Colors.white,
        child: Center(child: Image.asset('images/logo.png',height: 100,fit: BoxFit.fill,)),
      ),
    );
  }
  Widget pageView(){
    return Container(
      height: MediaQuery.of(context).size.height*0.65,width: MediaQuery.of(context).size.width,
      decoration:  const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 16),
              child: Row(
                children: [
                  Text('Login',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                    child: Row(
                      children:[
                        Text('Email Id'),
                      ],
                    ),
                  ),
                  CupertinoTextField(
                    controller: email,
                    placeholder: 'Enter Email ID',
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                    child: Row(
                      children: [
                        Text('Password'),
                      ],
                    ),
                  ),
                  CupertinoTextField(
                    controller: password,
                    obscureText: true,
                    placeholder: 'Enter password',
                  )
                 /*Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                       // inputFormatters:[NoInitialSpaceInputFormatter()],
                        //keyboardType: TextInputType.name,
                        controller: email,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Email ID*",
                         /* labelStyle: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                          ),*/
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: "Email ID*",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email ID is required';
                          }
                          return null;
                        },
                      ),
                    ),*/
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed:(){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(blue),
                        elevation: MaterialStateProperty.all(1)
                      ),
                      child: const Text('Login',style: TextStyle(fontSize:18,color:Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text('Forgot Password?',style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
