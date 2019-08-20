import 'dart:io';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class FileDownloadView extends StatefulWidget {
  @override
  _FileDownloadViewState createState() => _FileDownloadViewState();
}

class _FileDownloadViewState extends State<FileDownloadView> {
  String _filePath = "";

  Future<String> get _localDevicePath async {
    final _devicePath = await getApplicationDocumentsDirectory();
    return _devicePath.path;
  }

  Future<File> _localFile({String path, String type}) async {
    String _path = await _localDevicePath;

    var _newPath = await Directory("$_path/$path").create();
    return File("${_newPath.path}/hwa.$type");
  }

  Future _downloadSamplePDF() async {
    final _response =
        await http.get("http://www.africau.edu/images/default/sample.pdf");
    if (_response.statusCode == 200) {
      final _file = await _localFile(path: "veli", type: "pdf");
      final _saveFile = await _file.writeAsBytes(_response.bodyBytes);
      Logger().i("File write complete. File Path ${_saveFile.path}");
      setState(() {
        _filePath = _saveFile.path;
      });
    } else {
      Logger().e(_response.statusCode);
    }
  }

  Future _downloadSampleVideo() async {
    final _response = await http.get(
        "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_2mb.mp4");
    if (_response.statusCode == 200) {
      final _file = await _localFile(type: "mp4", path: "videos");
      final _saveFile = await _file.writeAsBytes(_response.bodyBytes);
      Logger().i("File write complete. File Path ${_saveFile.path}");
      setState(() {
        _filePath = _saveFile.path;
      });
    } else {
      Logger().e(_response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.file_download),
              label: Text("Sample Pdf"),
              onPressed: () {
                _downloadSamplePDF();
              },
            ),
            FlatButton.icon(
              icon: Icon(Icons.file_download),
              label: Text("Sample Videos"),
              onPressed: () {
                _downloadSampleVideo();
              },
            ),
            Text(_filePath),
            FlatButton.icon(
              icon: Icon(Icons.shop_two),
              label: Text("Show"),
              onPressed: () async {
                final _openFile = await OpenFile.open(_filePath);
                Logger().i(_openFile);
              },
            ),
          ],
        ),
      ),
    );
  }
}
