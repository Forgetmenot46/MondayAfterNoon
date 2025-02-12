# MondayAfterNoon

## รายละเอียดโครงการ
โครงการนี้เป็นไฟล์โปรเจกต์ที่ใช้สำหรับการเรียนในรายวิชา "การออกแบบและพัฒนาธุรกิจพาณิชย์อิเล็กทรอนิกส์" โดยพัฒนาโดยใช้ PHP และ MySQL เพื่อรองรับการทำงานของฟีเจอร์ต่าง ๆ เช่น ระบบตะกร้าสินค้า เว็บบอร์ด และอื่น ๆ

## คุณสมบัติหลัก
- ระบบตะกร้าสินค้า (Cart)
- การเชื่อมต่อฐานข้อมูล (connectdb)
- ระบบเว็บบอร์ด (Webboard)
- ไฟล์ทดสอบต่าง ๆ (Testing)

## วิธีติดตั้ง
1. ดาวน์โหลดโปรเจกต์นี้โดยใช้คำสั่ง:
   ```sh
   git clone https://github.com/Forgetmenot46/MondayAfterNoon.git
   ```
2. ตั้งค่าเซิร์ฟเวอร์ (เช่น XAMPP, WAMP)
3. นำเข้าฐานข้อมูลจากไฟล์ SQL ที่เกี่ยวข้อง
4. แก้ไขไฟล์ `connectdb.php` ให้ตรงกับค่าการเชื่อมต่อฐานข้อมูลของคุณ
5. เปิดเว็บเบราว์เซอร์และรันโปรเจกต์

## วิธีใช้งาน
- เปิดไฟล์ `index.php` เพื่อเข้าถึงหน้าหลักของระบบ
- ใช้ฟีเจอร์ต่าง ๆ ตามที่ระบบรองรับ เช่น การเพิ่มสินค้าในตะกร้า การโพสต์ในเว็บบอร์ด เป็นต้น

## ผู้พัฒนา
[Forgetmenot46](https://github.com/Forgetmenot46)

## License
โปรเจกต์นี้อยู่ภายใต้ MIT License
