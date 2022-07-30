const basePath = "assets/icons/";

abstract class IconPaths {
  static IconPath registerStudentIcon =
      const IconPath("${basePath}student_icon.png");
  static IconPath registerAdminIcon =
      const IconPath("${basePath}admin_icon.png");
  static IconPath registeProfessorIcon =
      const IconPath("${basePath}professor_icon.png");
}

class IconPath {
  final String path;

  const IconPath(this.path);
}
