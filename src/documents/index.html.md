---
title: Flexbox Grid
layout: site
---

# Flexbox Grid

<div class="row">
    <div class="col-xs-12 col-sm-3 col-md-2 col-lg-1">
        <div class="box-row"></div>
    </div>
    <div class="col-xs-6 col-sm-6 col-md-8 col-lg-10">
        <div class="box-row"></div>
    </div>
    <div class="col-xs-6 col-sm-3 col-md-2 col-lg-1">
        <div class="box-row"></div>
    </div>
</div>
<div class="row">
    <div class="col-xs-12 col-sm-3 col-md-2 col-lg-1">
        <div class="box-row"></div>
    </div>
    <div class="col-xs-12 col-sm-9 col-md-10 col-lg-11">
        <div class="box-row"></div>
    </div>
</div>
<div class="row">
    <div class="col-xs-10 col-sm-6 col-md-8 col-lg-10">
        <div class="box-row"></div>
    </div>
    <div class="col-xs-2 col-sm-6 col-md-4 col-lg-2">
        <div class="box-row"></div>
    </div>
</div>

## Basic syntax

Minimal syntax is `.row` → `.col-xs-*` → content.

```html
<div class="row">
    <div class="col-xs-12 col-sm-6 col-md-4">
        content
    </div>
</div>
```

There are 4 responsive breakpoints (**xs**, **sm**, **md**, **lg**) and 12 columns by default.

Responsive modifiers enable specifying different column sizes, offsets, alignment and distribution at **xs**, **sm**, **md** & **lg** viewport widths.

Containers are optional. They needed to compensate negative margin of a row.

`.container` — has max-width on breakpoints from **sm**, **md**, **lg**. On **xs** size it utilize  all available width.  
`.container-fluid` — doesn't have max-width. It use full width on all breakpoint.

## Auto width columns

### `.col-xs` `.col-sm` `.col-md` `.col-lg`

Add any number of auto sizing columns to a row. Let the grid figure it out.

<div class="row">
    <div class="col-xs">
        <div class="box-row"></div>
    </div>
    <div class="col-xs">
        <div class="box-row"></div>
    </div>
</div>
<div class="row">
    <div class="col-xs">
        <div class="box-row"></div>
    </div>
    <div class="col-xs">
        <div class="box-row"></div>
    </div>
    <div class="col-xs">
        <div class="box-row"></div>
    </div>
</div>

```html
<div class="row">
    <div class="col-xs">
        auto
    </div>
    <div class="col-xs">
        auto
    </div>
</div>
```

You can use auto-width columns together with width-specified columns.

<div class="row">
    <div class="col-xs-1">
        <div class="box-row">1</div>
    </div>
    <div class="col-xs">
        <div class="box-row">auto</div>
    </div>
    <div class="col-xs">
        <div class="box-row">auto</div>
    </div>
</div>

```html
<div class="row">
    <div class="col-xs-1">
        col-xs-1
    </div>
    <div class="col-xs">
        auto
    </div>
    <div class="col-xs">
        auto
    </div>
</div>
```

## Shrink columns

### `.col-xs-shrink`

You can use together fluid-width and shrink-width columns.  
`.col-xs-shrink` will fit its width to content width without wrapping.  
And when free space is not enough `.col-xs-shrink` drops under previous column.

<div class="row">
    <div class="col-xs">
        <div class="box-row">auto</div>
    </div>
    <div class="col-xs-shrink">
        <div class="box-row">some words here</div>
    </div>
</div>
<div class="row">
    <div class="col-xs">
        <div class="box-row">auto</div>
    </div>
    <div class="col-xs-shrink">
        <div class="box-row">a little bit more content here. «col-xs-shrink» will try fit it in one line. And when free space is not enough «col-xs-shrink» drops under previous column</div>
    </div>
</div>

```html
<div class="row">
    <div class="col-xs">
        auto width
    </div>
    <div class="col-xs-shrink">
        <div class="box-row">
            some words here
        </div>
    </div>
</div>
<div class="row">
    <div class="col-xs">
        <div class="box-row">
            auto
        </div>
    </div>
    <div class="col-xs-shrink">
        <div class="box-row">
            a little bit more content here. col-xs-shrink will try fit it in one line {...}
        </div>
    </div>
</div>
```

### `.col-xs-min`

You can use together fluid-width and fixed width columns.  
`.col-xs-min` requires explicit **min-width** on this element.

<div class="row">
    <div class="col-xs">
        <div class="box-row">auto</div>
    </div>
    <div class="col-xs-min" style="min-width: 200px">
        <div class="box-row">200px</div>
    </div>
</div>

```html
<div class="row">
    <div class="col-xs">
        auto
    </div>
    <div class="col-xs-min" style="min-width: 200px">
        <div class="box-row">
            200px
        </div>
    </div>
</div>
```

## Offsets

### `.col-xs-offset-`

<div class="row" style="background: #eee;">
    <div class="col-xs-offset-2 col-xs-4">
        <div class="box-row">offset-2</div>
    </div>
</div>

```html
<div class="row">
    <div class="col-xs-offset-2 col-xs-4">
        ...
    </div>
</div>
```

## Nested Grids

Nest grids inside grids inside grids.  
Use `.container-fluid` for nested rows to compensate negative margins.

<div class="row" style="background: #eee;">
    <div class="col-xs-8">
        <div class="box-row">
            <p>8</p>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-6">
                        <div class="box-row">6</div>
                    </div>
                    <div class="col-xs-6">
                        <div class="box-row">6</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


## Alignment

Add classes to align elements to the start or end of a row as well as the top, bottom, or center of a column.

### `.row-start-`

<div class="row row-start-xs" style="background: #eee;">
    <div class="col-xs-6">
        <div class="box-row"></div>
    </div>
</div>

```html
<div class="row row-start-xs">
    <div class="col-xs-6">
        ...
    </div>
</div>
```

### `.row-center-`

<div class="row row-center-xs" style="background: #eee;">
    <div class="col-xs-6">
        <div class="box-row"></div>
    </div>
</div>

```html
<div class="row row-center-xs">
    <div class="col-xs-6">
        ...
    </div>
</div>
```

### `.row-end-`

<div class="row row-end-xs" style="background: #eee;">
    <div class="col-xs-6">
        <div class="box-row"></div>
    </div>
</div>

```html
<div class="row row-end-xs">
    <div class="col-xs-6">
        ...
    </div>
</div>
```

Here is an example of using the modifiers in conjunction to achieve different alignment at different viewport sizes.

```html
<div class="row row-center-xs row-end-sm row-start-lg">
    <div class="col-xs-6">
        <div class="box">
            All together now
        </div>
    </div>
</div>
```

### `.row-top-`

<div class="row row-top-xs" style="background: #eee;">
    <div class="col-xs-6">
        <div class="box-row">
        1<br>
        2<br>
        3
        </div>
    </div>
    <div class="col-xs-6">
        <div class="box-row">1</div>
    </div>
</div>

```html
<div class="row row-top-xs">
    <div class="col-xs-6">
        ...
        ...
        ...
    </div>
    <div class="col-xs-6">
        ...
    </div>
</div>
```

### `.row-middle-`

<div class="row row-middle-xs" style="background: #eee;">
    <div class="col-xs-6">
        <div class="box-row">
        1<br>
        2<br>
        3
        </div>
    </div>
    <div class="col-xs-6">
        <div class="box-row">1</div>
    </div>
</div>

```html
<div class="row row-middle-xs">
    <div class="col-xs-6">
        ...
        ...
        ...
    </div>
    <div class="col-xs-6">
        ...
    </div>
</div>
```

### `.row-bottom-`

<div class="row row-bottom-xs" style="background: #eee;">
    <div class="col-xs-6">
        <div class="box-row">
        1<br>
        2<br>
        3
        </div>
    </div>
    <div class="col-xs-6">
        <div class="box-row">1</div>
    </div>
</div>

```html
<div class="row row-bottom-xs">
    <div class="col-xs-6">
        ...
        ...
        ...
    </div>
    <div class="col-xs-6">
        ...
    </div>
</div>
```

## Distribution

Add classes to distribute the contents of a row or column.

### `.row-around-`

<div class="row row-around-xs" style="background: #eee;">
    <div class="col-xs-2">
        <div class="box-row"></div>
    </div>
    <div class="col-xs-2">
        <div class="box-row"></div>
    </div>
    <div class="col-xs-2">
        <div class="box-row"></div>
    </div>
</div>

```html
<div class="row row-around-xs">
    <div class="col-xs-2">
        ...
    </div>
    <div class="col-xs-2">
        ...
    </div>
    <div class="col-xs-2">
        ...
    </div>
</div>
```

### `.row-between-`

<div class="row row-between-xs" style="background: #eee;">
    <div class="col-xs-2">
        <div class="box-row"></div>
    </div>
    <div class="col-xs-2">
        <div class="box-row"></div>
    </div>
    <div class="col-xs-2">
        <div class="box-row"></div>
    </div>
</div>

```html
<div class="row row-between-xs">
    <div class="col-xs-2">
        ...
    </div>
    <div class="col-xs-2">
        ...
    </div>
    <div class="col-xs-2">
        ...
    </div>
</div>
```

## Reordering

Add classes to any column to reorder.

### `.col-first-`

<div class="row">
    <div class="col-xs-2">
        <div class="box-row">1</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">2</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">3</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">4</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">5</div>
    </div>
    <div class="col-xs-2 col-first-xs">
        <div class="box-row">6</div>
    </div>
</div>

```html
<div class="row">
    <div class="col-xs-2">1</div>
    <div class="col-xs-2">2</div>
    <div class="col-xs-2">3</div>
    <div class="col-xs-2">4</div>
    <div class="col-xs-2">5</div>
    <div class="col-xs-2 col-first-xs">6</div>
</div>
```

### `.col-last-`

<div class="row">
    <div class="col-xs-2 col-last-xs">
        <div class="box-row">1</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">2</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">3</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">4</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">5</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">6</div>
    </div>
</div>

```html
<div class="row">
    <div class="col-xs-2 col-last-xs">1</div>
    <div class="col-xs-2">2</div>
    <div class="col-xs-2">3</div>
    <div class="col-xs-2">4</div>
    <div class="col-xs-2">5</div>
    <div class="col-xs-2">6</div>
</div>
```

You can use more than one `.col-first-` and `.col-last-` in a row.

<div class="row">
    <div class="col-xs-2 col-last-xs">
        <div class="box-row">1</div>
    </div>
    <div class="col-xs-2 col-last-xs">
        <div class="box-row">2</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">3</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">4</div>
    </div>
    <div class="col-xs-2 col-first-xs">
        <div class="box-row">5</div>
    </div>
    <div class="col-xs-2 col-first-xs">
        <div class="box-row">6</div>
    </div>
</div>

```html
<div class="row">
    <div class="col-xs-2 col-last-xs">1</div>
    <div class="col-xs-2 col-last-xs">2</div>
    <div class="col-xs-2">3</div>
    <div class="col-xs-2">4</div>
    <div class="col-xs-2 col-first-xs">5</div>
    <div class="col-xs-2 col-first-xs">6</div>
</div>
```

## Reversing

### `.row-reverse-`

<div class="row row-reverse-xs">
    <div class="col-xs-2">
        <div class="box-row">1</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">2</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">3</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">4</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">5</div>
    </div>
    <div class="col-xs-2">
        <div class="box-row">6</div>
    </div>
</div>

```html
<div class="row row-reverse-xs">
    <div class="col-xs-2">1</div>
    <div class="col-xs-2">2</div>
    <div class="col-xs-2">3</div>
    <div class="col-xs-2">4</div>
    <div class="col-xs-2">5</div>
    <div class="col-xs-2">6</div>
</div>
```

# Usage in LESS

## Default parameters

Component has global mixin with settings named `.grid-settings();` and global variable `grid-render` which contains all code.

Default settings:

```less
.grid-settings() {

    // settings
    @grid-columns: 12;   // number of columns
    @gutter-width: 30px; // gap between columns

    // media breakpoints (default: as on bootstrap)
    @breakpoints:
        ~"min-width: 768px",
        ~"min-width: 992px",
        ~"min-width: 1200px";

    // max-width of containers according breakpoints
    @container-maw:
        750px,
        970px,
        1170px;

    // names for breakpoint suffixes
    @suffixes: xs, sm, md, lg;

    // IMPORTANT: suffixes count should be bigger than breakpoints count by 1
    // suffixes-count = breakpoints-count + 1

}
```

## Customizing

Running with default parameters:

```less
@import (less) "uicomponents/grid.less";
```

Redefining gutter-width and breakpoints:

```less
@import (less) "uicomponents/grid.less";

.gutter-settings() {
    @gutter-width: 60px;

    // media breakpoints
    @breakpoints:
        ~"min-width: 480px",
        ~"min-width: 768px",
        ~"min-width: 992px",
        ~"min-width: 1200px",
        ~"min-width: 1600px";

    // max-width of containers according breakpoints
    @container-maw:
        100%,
        750px,
        970px,
        1170px,
        1540px;

    // names for breakpoint suffixes
    @suffixes: xxs, xs, sm, md, lg, xlg;
}
```
