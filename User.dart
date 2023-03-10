import 'dart:math';

int getNum(int min, int max){
  Random random = new Random();
  return min + random.nextInt(max-min);
}


class Unit{
  int xp = 0;
  Unit(this.xp);

  void gerXp(int _xp) {
    xp = xp + _xp;
  }
}

abstract class AttackType{
  //abstract의 특징은 기능을 정의 하지 않음.
  void kick();
  void punch();
}

class Normal{
  void hello(){
    print('hello');
  }
}

//플레이어 클래스 정의
class User extends AttackType{
//이름과 체력 민뎀 맥뎀 방어력 가진 사람 만들기
// nmae, hp, minDmg, maxDmg, def
  String name;
  int hp;
  int minDmg;
  int maxDmg;
  int def;
  late int xp;

  User(this.name, this.hp, this.minDmg, this.maxDmg, this.def);

  //method 기능 function
  //죽었는가? =>

  // bool isDead(){
  //   if(hp <= 0) return true;
  //   else return false;
  // }
  bool isDead() => hp <=0?true : false;

  //공격기능 = 공격데미지 얻기
  int attack(){
    //경험치 얻기
    //내가 물려받은 Unit의 경험치 얻기 기능
    super.getXp(10); //supre.xp에 증가되어있음
    xp = super.xp;
    return getNum(minDmg, maxDmg);
  }

  //맞기기능
  void getDmg(int dmg){
    //데미지에서 방어력만큼 차감  10 - 2방 = 8뎀
    dmg -= def;
    if (dmg < 0) dmg = 0;
    hp -= dmg;
  }

  void kick(){

  }

  void punch(){

  }


  //재정의
  @override
  void hello(){
    // TODO : import
  }

}