class Urls{
  static const String _baseurl= "https://classnavigator-srijonashraf.vercel.app/api/v1";
  static const String signup ="$_baseurl/registration";
  static const String signin ="$_baseurl/login";
  static const String createClass="$_baseurl/addNewClass";
  static const String fetchClasses ="$_baseurl/fetchAllClasses";
  static  String deleteClass(String classId) => "$_baseurl/deleteClass/$classId";
  static String unenrollClass(String classId) => "$_baseurl/unEnrollClass/$classId";
  static String createCourse(String classId) => "$_baseurl/addCourse/$classId";
  static String countStudent(String classId) =>"$_baseurl/fetchEnrolledStudentCount/$classId";
}