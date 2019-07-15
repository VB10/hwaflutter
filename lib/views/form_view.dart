import 'package:flutter/material.dart';

class FormView extends StatefulWidget {
  @override
  _FormViewState createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _textFieldUserName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(),
        body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (val) {
                  if (val.isEmpty) {
                    return "have a error";
                  } else
                    return null;
                },
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _textFieldUserName,
                decoration: InputDecoration(
                    hintText: "Tasdas",
                    labelText: "Password",
                    border: OutlineInputBorder()),
                validator: (val) {
                  if (val.length < 6) {
                    return "minimum required 6 or more.";
                  } else {
                    return null;
                  }
                },
              ),
              IconButton(
                icon: Icon(Icons.check),
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    print("oke");
                  } else {
                    scaffoldKey.currentState.showSnackBar(SnackBar(
                      content: Text(_textFieldUserName.text),
                    ));
                  }
                },
              )
            ],
          ),
        ));
  }

  @override
  void dispose() {
    scaffoldKey.currentState.dispose();
    formKey.currentState.dispose();
    super.dispose();
  }
}
