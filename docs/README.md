__ptRender__ реалізований з метою створення можливості потокового рендеренгу 360 фото за допомогою процесора, а не відеокарти, як в оригінальному GoPro Fusion Studio [1]

файли лежать тут:

https://github.com/velmyshanovnyi/ptrender


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

- ми розміщуємо папку "ptrender" за таким розташуванням "Z:\ptrender\"
- після чого створюємо папку "ptsample" за таким розташуванням "Z:\ptsample\"
- файли __BACK__  кладемо в цю папку "Z:\ptsample\back"
- файли __FRONT__ кладемо в цю папку "Z:\ptsample\front"
- стартуємо __CMD__ в якому пишемо на виконання __node Z:\ptrender\render.js__


__batch.pts.tpl__ які відрізняються від __batch.tmp.pts__
(номер рядка може іноді не співпадати, але він точно десь поруч)
- [рядок][значення]
- [011] #-outputfile {{{out}}}
- [105] #-imgfile 3104 3000 "{{{front}}}"
- [106] #-metadata 2.8 0 100 0000-00-00T00:00:00 3*8 0 1 1 98 * * * curve 3 * T *
- [111] #-imgfile 3104 3000 "{{{back}}}"
- [112] #-metadata 2.8 0 100 0000-00-00T00:00:00 3*8 0 1 1 98 * * * curve 3 * T *



__TODO__ (щоб  не забути) зробити щоб шлях до файлів Бек/Фронт/Аут і переметри передавались як змінні з ярлика

-----

### update ###

поточна остання версія прошивки:

Fusion v01.80 | May 7, 2018 

https://gopro.com/en/ua/update/fusion





