---
title: Flexbox Grid
layout: docs
---

# fxlgrid.css — адаптивная html-сетка на флексах

Настраивается количество колонок, размер гаттера, количество контрольных точек медиавыражений для отзывчивой вёрстки, их суффиксы. Сделано на флексбоксах.

## Значения по-умолчанию

12 колонок.

40px — размер гаттера (расстояние между колонками).

5 диапазонов медиавыражений: xs → sm → md → lg → xl.


## Шпаргалка по классам

### Контейнеры

<table class="classnames">
    <thead>
        <tr>
            <th>.flx</th>
            <th>-container</th>
            <th></th>
            <td>— резиновый контейнер на всю ширину</td>
        </tr>
        <tr>
            <th>.flx</th>
            <th>-container</th>
            <th>-fixed</th>
            <td>— контейнер с фиксированной ширирой (`max-width`)</td>
        </tr>
    </thead>
</table>

### Ряды

<table class="classnames classnames-common">
    <thead>
        <tr>
            <th>.flx</th>
            <th>-row</th>
            <td class="empty"></td>
            <td class="empty"></td>
            <td>— горизонтальный флекс-ряд</td>
        </tr>
        <tr>
            <th>.flx</th>
            <th>-row</th>
            <th>-reverse</th>
            <th>-xs</th>
            <td>— модификаторы рядов</td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td></td>
            <td></td>
            <td>-start</td>
            <td></td>
            <td>— прижать ячейки к началу (влево)</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-center</td>
            <td></td>
            <td>— центрировать по горизонтали</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-end</td>
            <td></td>
            <td>— прижать ячейки в конец (вправо)</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-top</td>
            <td></td>
            <td>— выровнять ячейки по верхнему краю</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-middle</td>
            <td></td>
            <td>— центрировать по вертикали</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-bottom</td>
            <td></td>
            <td>— выровнять ячейки по нижнему краю</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-baseline</td>
            <td></td>
            <td>— выровнять ячейки по базовой линии первой строки текста</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-around</td>
            <td></td>
            <td>— задать равные промежутки со всех сторон каждой ячейки</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-between</td>
            <td></td>
            <td>— задать равное расстояние между ячейками</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-reverse</td>
            <td></td>
            <td>— пустить ячейки в обратном порядке</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-xs</td>
            <td>— для экранов любой ширины</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-sm</td>
            <td>— min-width: 576px</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-md</td>
            <td>— min-width: 768px</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-lg</td>
            <td>— min-width: 992px</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-xl</td>
            <td>— min-width: 1200px</td>
        </tr>
    </tbody>
</table>

Модификаторы ряда применяются *вместе* с классом ряда:

```html
<div class="flx-row flx-row-center-sm">...</div>
```

### Столбцы

<table class="classnames classnames-common">
    <thead>
        <tr>
            <th>.flx</th>
            <th>-col</th>
            <td class="empty"></td>
            <td class="empty"></td>
            <td>— вертикальная флекс-колонка</td>
        </tr>
        <tr>
            <th>.flx</th>
            <th>-col</th>
            <th>-start</th>
            <th>-xs</th>
            <td></td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td></td>
            <td></td>
            <td>-top</td>
            <td></td>
            <td>— прижать ячейки вверх (в начало колонки)</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-middle</td>
            <td></td>
            <td>— центрировать ячейки по вертикали</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-bottom</td>
            <td></td>
            <td>— прижать ячейки вниз</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-around</td>
            <td></td>
            <td>— распределить ячейки по вертикали с равными отступами вокруг ячеек</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-between</td>
            <td></td>
            <td>— распределить ячейки по вертикали с равными отступами между ячейками</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-reverse</td>
            <td></td>
            <td>— пустить ячейки колонки снизу вверх</td>
        </tr>
    </tbody>
</table>

Модификаторы столбца применяются *вместе* с классом столбца:

```html
<div class="flx-col flx-col-bottom-lg">...</div>
```

### Ячейки

<table class="classnames classnames-common">
    <thead>
        <tr>
            <th>.flx</th>
            <th>-cell</th>
            <th>-shrink</th>
            <th>-xs</th>
            <td></td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td></td>
            <td></td>
            <td class="empty"></td>
            <td></td>
            <td>— ячейка (колонка) с авто-выравниванием по ширине: `.flx-cell-xs`</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-1</td>
            <td></td>
            <td>— ячейка занимает одну колонку ширины</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>...</td>
            <td></td>
            <td>— любое значений от 1 до 12</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-12</td>
            <td></td>
            <td>— ячейка занимает 12 колонок, всю ширину</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-shrink</td>
            <td></td>
            <td>— ячейка ужимается до ширины её содержимого</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-min</td>
            <td></td>
            <td>— ячейка ужимается до своей минимальной ширины. Требует явно заданного `min-width`.</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-xs</td>
            <td>— для экранов любой ширины</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-sm</td>
            <td>— min-width: 576px</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-md</td>
            <td>— min-width: 768px</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-lg</td>
            <td>— min-width: 992px</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-xl</td>
            <td>— min-width: 1200px</td>
        </tr>
    </tbody>
</table>

Модификаторы ячейки:

<table class="classnames classnames-common">
    <thead>
        <tr>
            <th>.flx</th>
            <th>-cell</th>
            <th>-first</th>
            <th>-xs</th>
            <td></td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td></td>
            <td></td>
            <td>-first</td>
            <td></td>
            <td>— поставить ячейку в начало ряда</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-last</td>
            <td></td>
            <td>— поставить ячейку в конец ряда</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-offset-1</td>
            <td></td>
            <td>— сдвинуть ячейку на одну колонку вправо при помощи `margin-left`</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-offset-6</td>
            <td></td>
            <td>— любое значение от 1 до 12</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-offset-12</td>
            <td></td>
            <td>— сдвинуть ячейку на 12 колонку вправо при помощи `margin-left: 100%`</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>-grow</td>
            <td></td>
            <td>— занять всю доступную высоту. Применяется для флекс-колонок</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-xs</td>
            <td>— для экранов любой ширины</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-sm</td>
            <td>— min-width: 576px</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-md</td>
            <td>— min-width: 768px</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-lg</td>
            <td>— min-width: 992px</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>-xl</td>
            <td>— min-width: 1200px</td>
        </tr>
    </tbody>
</table>


## Как это работает

### `.flx-container → .flx-row → .flx-cell`

```html
<div class="flx-container">
    <div class="flx-row">
        <div class="flx-cell">
            content
        </div>
    </div>
</div>
```

Всё стандартно: в основе тройка вложенных элементов — *контейнер*, *ряд*, *ячейка*, — у каждого из которых есть модификации.

**Контейнеры** (container) необходимы для компенсации отступов у рядов. По-умолчанию контейнер занимает всю ширину своего родителя. Но есть дополнительный тип контейнеров — `.flx-container-fixed`. У него есть максимальшая фиксированная ширина и равные отступы от правого и левого края. Фиксированный контейнер центрирует своё содержимое относительно родительского элемента.

**Ряды** (row) — это горизонтальные группы ячеек. Они предназначены для управления выравниванием ячеек.

Первыми потомками внутри рядов должны быть **ячейки** (cell). А контент следует помещать уже внутрь ячеек. В иерархии между рядами и ячейками не должно быть никаких дополнительных оберток.

**Шириной** каждой ячейки с контентом можно управлять при помощи классов. По-умолчанию в модульной сетке 12 колонок. Число в классах показывает, сколько колонок в ширину занимает данная ячейка:

* `.flx-cell-12-xs` — занимает всю ширину ряда.
* `.flx-cell-6-xs` — занимает половину ширины ряда.
* `.flx-cell-3-xs` — занимает четверть ширины ряда.
* `.flx-cell-1-xs` — занимает 1/12 ширины ряда.

<div class="flx-row">
    <div class="flx-cell-12-xs"><div class="box-row"><code>.flx-cell-12-xs</code></div></div>
</div>
<div class="flx-row space-out-bottom-base-xs">
    <div class="flx-cell-6-xs"><div class="box-row"><code>.flx-cell-6-xs</code></div></div>
    <div class="flx-cell-3-xs"><div class="box-row"><code>.flx-cell-3-xs</code></div></div>
    <div class="flx-cell-1-xs"><div class="box-row"></div></div>
    <div class="flx-cell-1-xs"><div class="box-row"></div></div>
    <div class="flx-cell-1-xs"><div class="box-row"></div></div>
</div>

Сумма ширин колонок в ряду не обязательно должна быть равна 12. Если меньше 12, то колонки не занимают всю доступную ширину ряда и прижаты влево (по-умолчанию). Если сумма чисел в ряду превышает 12, то те колонки, что не поместились, переносятся на следующую строку.

В CSS ширина колонки задана в процентах. Т.е. колонки всегда резиновые и подстраиваются под ширину своего родителя. У колонок есть горизонтальные отступы (padding), которые задают расстояние между колонками контента — **гаттер** (gutter). По-умолчанию гаттер равен 40px. Это значит, что padding-left и padding-right у каждой колонки равны 20px.

Для управления колонками в **адаптивной вёрстке** заданы 5 диапазонов медиавыражений для разной ширины экрана:

* `xs` — extra small
* `sm` — small
* `md` — medium
* `lg` — large
* `xl` — extra large.

Диапазоны медиавыражений написаны по принципу «**сначала мобильные**». Это значит, что самый первый диапазон — `xs` — действует на всех экранах, от экстра маленьких до самых больших. Следующий по списку диапазон — `sm` — начинает действовать на экранах от 578px в ширину и больше. И так далее.

<div class="" style="overflow: scroll">
    <div class="" style="min-width: 1280px">
        <div class="flx-row">
            <div class="flx-cell-xs">
                <code>xs: 0 — ∞</code>
                <div class="box-row"></div>
            </div>
        </div>
        <div class="flx-row">
            <div class="flx-cell-min-xs" style="min-width: 578px"></div>
            <div class="flx-cell-xs">
                <code>sm: 578px — ∞</code>
                <div class="box-row"></div>
            </div>
        </div>
        <div class="flx-row">
            <div class="flx-cell-min-xs" style="min-width: 768px"></div>
            <div class="flx-cell-xs">
                <code>md: 768px — ∞</code>
                <div class="box-row"></div>
            </div>
        </div>
        <div class="flx-row">
            <div class="flx-cell-min-xs" style="min-width: 992px"></div>
            <div class="flx-cell-xs">
                <code>lg: 992px — ∞</code>
                <div class="box-row"></div>
            </div>
        </div>
        <div class="flx-row">
            <div class="flx-cell-min-xs" style="min-width: 1200px"></div>
            <div class="flx-cell-xs">
                <code>xl: 1200px — ∞</code>
                <div class="box-row"></div>
            </div>
        </div>
    </div>
</div>

У каждой колонки с контентом может быть разная ширина на каждом диапазоне. Например, на элементе одновременно есть классы `.flx-cell-12-xs`, `.flx-cell-8-xs` и `.flx-cell-4-xs`. На самых маленьких экранах этот элемент занимает всю ширину ряда, на маленьких и средних экранах три четверти ширины, а на больших и очень больших экранах — одну треть. У элемента не заданы классы для `md` и `xl` диапазонов. Значит на этих отрезках используется значение ширины предыдущего, более маленького диапазона.

## Демки

### Контейнеры

Контейнеры (container) необходимы для компенсации отступов у рядов. Обратите внимание на отступы по бокам.

<div class="space-minus-h-base-xs space-minus-h-kilo-md">
    <div class="flx-container">
        <div class="flx-row">
            <div class="flx-cell-xs"><div class="box-row">резиновый контейнер</div></div>
        </div>
    </div>
    <div class="flx-container-fixed">
        <div class="flx-row">
            <div class="flx-cell-xs"><div class="box-row">контейнер с максимальной шириной</div></div>
        </div>
    </div>
</div>

### Ячейки

#### `.flx-cell-xs`

<div class="flx-row">
    <div class="flx-cell-xs">
        <div class="box-row">auto</div>
    </div>
    <div class="flx-cell-xs">
        <div class="box-row">auto</div>
    </div>
</div>
<div class="flx-row">
    <div class="flx-cell-xs">
        <div class="box-row">auto</div>
    </div>
    <div class="flx-cell-xs">
        <div class="box-row">auto</div>
    </div>
    <div class="flx-cell-xs">
        <div class="box-row">auto</div>
    </div>
</div>

#### `.flx-cell-1-xs` ... `.flx-cell-12-xs`

<div class="flx-row">
    <div class="flx-cell-1-xs">
        <div class="box-row">1</div>
    </div>
    <div class="flx-cell-2-xs">
        <div class="box-row">2</div>
    </div>
    <div class="flx-cell-3-xs">
        <div class="box-row">3</div>
    </div>
    <div class="flx-cell-6-xs">
        <div class="box-row">6</div>
    </div>
</div>

#### `.flx-cell-shrink-xs`

<div class="flx-row">
    <div class="flx-cell-shrink-xs">
        <div class="box-row">каждая</div>
    </div>
    <div class="flx-cell-shrink-xs">
        <div class="box-row">ячейка</div>
    </div>
    <div class="flx-cell-shrink-xs">
        <div class="box-row">ужимается до ширины</div>
    </div>
    <div class="flx-cell-shrink-xs">
        <div class="box-row">её контента</div>
    </div>
</div>
