const basePath = "assets/icons/";

abstract class IconPaths {
  static IconPath professorTagIcon = const IconPath("${basePath}professor.png");
}

class IconPath {
  final String path;

  const IconPath(this.path);
}
