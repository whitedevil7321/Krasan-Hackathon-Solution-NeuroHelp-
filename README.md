# Create a README file with the provided content
readme_content = """\
<div align='center'>
<img src='/assets/icons/icon.png' width='150'/>
<h2>📝 ToDark</h2>
</div>

<p align='center'> Tired of task chaos? ToDark keeps you in control. 📱📅✅ </p>

### 📚 Features to Simplify Your Life

ToDark offers a range of features to streamline your task management process:

- ✨ **Creating Categories:** Organize your tasks by creating categories that make sense to you.
- ✅ **Creating Tasks in Categories:** Add tasks within categories for a structured approach.
- 📋 **Sorting of Tasks:** Easily categorize your tasks as completed or unfulfilled.
- 📦 **Category Archiving:** Keep your workspace clean by archiving categories.
- 📊 **View Statistics:** Gain insights into your productivity with task statistics.
- 📆 **View Tasks by Day:** Stay on top of daily tasks and deadlines.
- 📝 **Editing:** Make changes to your tasks with ease.
- 🔔 **Notifications:** Receive reminders to never miss an important task.
- 🌐 **Localization:** Choose your preferred language from multiple options.
- 📂 **Backup:** Safeguard your data with backup functionality.
- 🔄 **Data Recovery:** Restore your information in case of mishaps.
- 🗑️ **Delete All Data:** Clear your slate with a single button.
- 🎨 **Beautiful Design**

Our app not only enhances productivity but also offers an intuitive and visually pleasing experience. Enjoy the best of both worlds!

### 📸 Screenshots

<img src='/readme/1.png' width='200'/> <img src='/readme/2.png' width='200'/> <img src='/readme/3.png' width='200'/> <img src='/readme/4.png' width='200'/> <img src='/readme/5.png' width='200'/> <img src='/readme/6.png' width='200'/> <img src='/readme/7.png' width='200'/>

### 📥 Get ToDark Now

[![Play Store](https://img.shields.io/badge/Google_Play-414141?style=for-the-badge&logo=google-play&logoColor=white)](https://play.google.com/store/apps/details?id=com.yoshi.todark)
[![RuStore](https://img.shields.io/badge/RuStore-blue?style=for-the-badge&logo=vk&logoColor=white)](https://apps.rustore.ru/app/com.yoshi.todark)

Or get the latest APK from the [Releases Section](https://github.com/YourRepo/ToDark/releases/latest). You can also find the app on IzzyOnDroid via a F-Droid client [here](https://apt.izzysoft.de/fdroid/index/apk/com.yoshi.todark).

### 📃 License

This project is licensed under the [MIT License](./LICENSE).
"""

# Save the content to a README.md file
file_path = "/mnt/data/README.md"
with open(file_path, "w", encoding="utf-8") as file:
    file.write(readme_content)

# Provide the download link
file_path
