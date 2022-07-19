## Описание

В этом уроке проверяется работа Электрона и демонстрируется создание приложения на основе веб-сайта.

## Приборка

Закройте редактор, командную строку и электрон, если они открыты от предыдущего урока.  
Это необходимо, чтобы не было путанницы с каталогами. Открытый редактор может остаться в старой папке, а работать будем в новой и т.д.  
Поэтому в начале каждого нового урока закрываем все программы и начинаем каждый раз с чистого рабочего стола.

## Подготовка

Откройте командную строку и наберите последовательно следующие команды (каждую строчку заканчивайте клавишей Enter) :

```sh
git clone https://github.com/mtraining-2022/app00.git
cd app00
npm install
```

Исполнение команды **npm install** может занять длительное время, дождитесь завершения.  
После этого запускаем редактор: 

```sh
code -a .
```

Обратите внимание на точку в команде, она обязательна.   
В редакторе откройте терминал (если не был открыт) через меню "Вид-Терминал" (или "View-Terminal").   
Дальнейшие команды выполняем в терминале редактора, командную строку можно закрыть.

## Запуск

Наберите в терминале команду:

```sh
npm start
```

Запустится Электрон с пустым окном.   
Чтобы было отображение информации, Электрон должен загрузить какой-нибудь html-файл. Выберем в качестве источника такого файла сайт для прогноза погоды [Windy](http://windy.com).    
Для этого закройте окно Электрона, найдите в редакторе в левой панели файл **main.js**, он находится в папке **src**, и в нём раскомментируйте строчку: 

```javascript
  //mainWindow.loadURL('http://windy.com');
```

должно получится:

```javascript
  mainWindow.loadURL('http://windy.com');
```

Сохраните файл (ctrl + S) и снова выполните в терминале команду: 

```sh
npm start
```

Запустится Электрон с содержимым сайта прогноза погоды.

## Создание дистрибутива

Выполните команду:

```sh
npm run make
```

Дождитесь выполнения команды. После этого в каталоге **out\make\squirrel.windows\x64** появится файл дистрибутива **windy-1.0.0 Setup.exe**.   
В левой панели редактора найдите этот файл, нажмите на него **правой** кнопкой мыши и в появившемся меню выберите "Показать в проводнике" (или "Reveal in File Explorer").   
Откроется проводник, указывающий на файл дистрибутива. Запустите его, наша программа какое-то время будет установливаться на компьютёр, после чего запустится.  
Закройте нашу программу и проверьте, что на рабочем столе появился значок. Попробуйте запустить приложение через значок.
Далее, если необходимо, то в панели управления Виндовс "Параметры-Приложения" вы можете удалить созданную и установленную нами программу.

## Резюме

В этом уроке мы познакомились с Электроном, а также с базовыми навыками работы в командной строке, редакторе и терминале, прошли полный цикл создания приложения от подготовки необходимого окружения до создания полноценного дистрибутива.
