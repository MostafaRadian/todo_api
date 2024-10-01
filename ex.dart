void main() {
  var s2=Senior2('name', 0215);

}


class Senior2{
  String name;
  int id;
  int? phone;
  static String? address;

  Senior2(this.name, this.id);
  Senior2.phone1(this.name, this.id){
    phone=id;
  }
}