import 'package:flutter/material.dart';
import '../models/friend_model.dart';

class FriendListScreen extends StatelessWidget {
  const FriendListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myFriends.length,
      itemBuilder: (context, index) {
        Friend person = myFriends[index];
        return Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: person.bgColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.grey.withValues(alpha: 0.5), blurRadius: 5)
            ],
          ),
          child: Row(
            children: [
              // --- ฝั่งซ้าย: ข้อมูลเพื่อน ---
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      person.name,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: person.textColor),
                    ),
                    Text("ชื่อเล่น: ${person.nickname} | อายุ: ${person.age} ปี", 
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    const Divider(),
                    Text("🏠 บ้านเกิด: ${person.home}"),
                    Text("🎨 งานอดิเรก: ${person.hobby}"),
                    Text("🎧 กิจกรรม: ${person.activity}"),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              // --- ฝั่งขวา: รูปเพื่อน ---
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  person.image,
                  width: 100,
                  height: 120,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => 
                    const Icon(Icons.account_circle, size: 100, color: Colors.grey),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}