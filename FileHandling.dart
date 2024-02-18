import 'dart:io';

String readFile(String path) {
  File file = File(path);
  if (file.existsSync()) {
    return file.readAsStringSync();
  } else {
    throw FileSystemException('File not found', path);
  }

}


void main(){

}
