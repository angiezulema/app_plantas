import 'dart:io';
import 'package:flutter/foundation.dart';

/// ViewModel encargado de manejar el estado de la pantalla de escaneo.
/// Siguiendo MVVM, este archivo NO contiene lógica de interfaz.
/// Solo gestiona datos y notifica cambios a la UI.
class ScanViewModel extends ChangeNotifier {
  File? selectedImage;

  /// Actualiza la imagen seleccionada y notifica a la UI.
  void setImage(File image) {
    selectedImage = image;
    notifyListeners();
  }

  /// Limpia la imagen actual (útil si el usuario desea capturar otra foto).
  void clearImage() {
    selectedImage = null;
    notifyListeners();
  }
}
