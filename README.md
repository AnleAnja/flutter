![Flutter Logo](assets/Flutter-logo-animation-v1-2.gif)
> Flutter and the related logo are trademarks of Google LLC. We are not endorsed by or affiliated with Google LLC.

# Flutter&#8482; Workshop

Flutter ist Googles UI-Toolkit zum Erstellen von nativ kompilierten Anwendungen für Mobilgeräte, Web und Desktop aus einer einzigen Codebasis. In diesem Workshop soll eine erste Einführung in das Framework mit dem Fokus auf Webanwendungen erfolgen. Außerdem sollen die Teilnehmenden das Gelernte anwenden und ein eigenes Projekt umsetzen.

## Vorbereitung

* IDE [IntelliJ IDEA](https://www.jetbrains.com/idea/) herunterladen und installieren
* IntelliJ IDEA Flutter und Dart Plugins installieren
  * IntelliJ IDEA starten
  * `File` > `Settings` > `Plugins`
  * nach `Flutter` suchen und installieren
* Browser [Google Chrome](https://www.google.com/chrome/) herunterladen und installieren

### Installation

* Das Workshop Repository klonen: `git clone https://github.com/AnleAnja/flutter-workshop.git`
* Das Flutter Repository klonen: `git clone https://github.com/flutter/flutter.git -b stable`

### Installation für die verschiedenen Betriebssysteme

* [Installationsanleitung für Windows](https://flutter.dev/docs/get-started/install/windows)
  * Im Explorer das Flutter Repository öffnen und die Flutter Konsole über die Datei `flutter_console.bat` starten
  * Flutter installieren: `flutter doctor`
* [Installationsanleitung für macOS](https://flutter.dev/docs/get-started/install/macos)
* [Installationsanleitung für Linux](https://flutter.dev/docs/get-started/install/linux)

### Set Up

Die folgenden Schritte werden in der Flutter Konsole `flutter_console.bat` ausgeführt und dienen dazu, den web support für die Entwicklung zu aktivieren.

* `flutter channel beta`
* `flutter upgrade`
* `flutter config --enable-web`
* `flutter devices`

![Setup](assets/setup.PNG)

### Dart SDK konfigurieren

Im nächsten Schritt wird dieses Repository als Projekt in IntelliJ IDEA gestartet. Wenn ihr im Ordner `lib` eine Datei öffnet, erscheint eine Meldung, dass die Dart SDK konfiguriert werden muss.

* `File` > `Settings` > `Languages & Frameworks` > `Dart`
* Im Feld `Dart SDK path` wählt ihr im `flutter` Repository den Pfad `bin\cache\dart-sdk` aus
* Aktiviert den Dart support für das Projekt

![SDK](assets/sdk.PNG)

### Anwendung ausführen

* Innerhalb der Flutter Konsole in den Ordner `aufgaben` dieses Repositorys wechseln.
* `flutter run -d chrome`

Es sollte sich ein Browserfenster öffnen, in dem die Anwendung läuft.

![Anwendung](assets/main.PNG)

# Links

* [Flutter Dokumentation](https://flutter.dev/)
* [Flutter API Reference Documentation](https://api.flutter.dev/)
* [Widget Library](https://api.flutter.dev/flutter/widgets/widgets-library.html)
* [Flutter for Web Developers](https://flutter.dev/docs/get-started/flutter-for/web-devs)
* [Flutter Gallery](https://gallery.flutter.dev/#/)
* [Flutter Samples](https://flutter.github.io/samples/#)
* [Flutter Guide](https://github.com/devonfw-forge/devonfw4flutter)
