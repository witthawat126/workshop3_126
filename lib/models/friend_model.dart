import 'package:flutter/material.dart';

class Friend {
  final String name;      // ชื่อ-นามสกุล
  final String nickname;  // ชื่อเล่น
  final int age;          // อายุ
  final String home;      // บ้านเกิด
  final String hobby;     // งานอดิเรก
  final String activity;  // กิจกรรมที่ชอบ
  final String image;     // รูปภาพ
  final Color bgColor;    // สีพื้นหลัง
  final Color textColor;  // สีตัวอักษร

  // ส่วนนี้คือ Constructor ที่คุณยังไม่ได้พิมพ์
  Friend({
    required this.name,
    required this.nickname,
    required this.age,
    required this.home,
    required this.hobby,
    required this.activity,
    required this.image,
    required this.bgColor,
    required this.textColor,
  });
}

// ต้องมีตัวแปรนี้ด้วย เพื่อให้ในหน้า friend_list.dart เรียกใช้ได้
List<Friend> myFriends = [
  Friend(
    name: "สมชาย รักเรียน",
    nickname: "ชาย",
    age: 20,
    home: "กรุงเทพฯ",
    hobby: "อ่านหนังสือ",
    activity: "เล่นบาสเกตบอล",
    image: "assets/images/f1.png",
    bgColor: Colors.blue.shade100,
    textColor: Colors.blue.shade900,
  ),
  // เพิ่มเพื่อนคนอื่นๆ ต่อได้ที่นี่...
];