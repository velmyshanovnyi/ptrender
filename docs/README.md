__ptRender__ реалізований з метою створення можливості потокового рендеренгу 360 фото за допомогою процесора, а не відеокарти, як в оригінальному GoPro Fusion Studio [1]


[1] - GoPro Fusion Studio App - https://gopro.com/en/ua/shop/softwareandapp/gopro-fusion-studio-app/fusion-studio.html

__вимоги без виконання яких ренденинг неможливий:__

- Intel Iris 620 Graphics card that supports OpenGL 4.1 or later 
- Recommended: Dedicated GPU like AMD Radeon R9 290 with 4GB RAM. NVIDIA GTX 760 with 4GB RAM or better 
- Minimum Video RAM: 4GB RAM


-----

__для початку ми маємо мати:__

- інстаньований PTgui  (WIKI:"де завантажити" / WIKI:"як інсталювати") (наразі, поки ведеться тестування скрипта, має бути заінстальований там - "C:/Program Files/PTGui/PTGUI.exe")
- інстаньований nodeJS (WIKI:"де завантажити" / WIKI:"як інсталювати") (https://nodejs.org/uk/ - 12.7 або вище) 
- останню версію комплексу (WIKI:"де завантажити" / WIKI:"як інсталювати")

після чого можемо приспупити до налаштування

-----
### налаштування ###

припустимо, що наше цільове місце знаходиться на диску Z:

ми розміщуємо папку "ptrender" за таким розташуванням "Z:\ptrender\"
після чого створюємо папку "ptfiles" за таким розташуванням "Z:\ptfiles\"


-----

### update ###

поточна остання версія прошивки:

Fusion v01.80 | May 7, 2018 

https://gopro.com/en/ua/update/fusion





