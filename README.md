# clearR.sh

Чистка \r в файлах
--------------------

Часто бывает, что при переносе сайта в файла появляются лишние переносы строк. Это происходит из-за того что \n и \r в unix - это два пробела, а в window - 1. 

Данный скрипт удаляет все \r переносы из файлов в категории с раширениями css, js, php, html.

Внимание!!! Скрипт выполняется рекурсивно в глубь каталога! Перед выполнением скрипт выведет списко файлов.

Установка
------------

Скачать скрипт::

    $ wget https://raw.githubusercontent.com/Codre/clearR.sh/master/clearR.sh
    # or
    $ curl -Ok https://raw.githubusercontent.com/Codre/clearR.sh/master/clearR.sh
