#!/bin/bash

# حذف ریپوی قبلی اگر هست
rm -rf .git

# ساخت ریپو جدید
git init

# فعال کردن Git LFS
git lfs install

# تنظیم Git LFS برای فایل‌های img
git lfs track "*.img"

# اضافه کردن فایل‌های پروژه به گیت
git add .

# کامیت اولیه
git commit -m "اولین کامیت با پشتیبانی Git LFS"

# تغییر نام شاخه به main
git branch -M main

# اضافه کردن ریموت (لینک ریپوی شما)
git remote add origin https://github.com/mrc0nnect/chr.git

# پوش کردن به گیت‌هاب
git push -u origin main

echo "✅ فایل‌ها به گیت‌هاب منتقل شدند با پشتیبانی از فایل‌های بزرگ (.img)"
