# flxgrid.css — flexbox grid system

[![npm version](https://badge.fury.io/js/flxgrid.css.svg)](http://badge.fury.io/js/flxgrid.css)

Makes grid classes for given number of columns and breakpoints.

**Defaults**

* 12 columns
* 40px default gutter
* 5 mobile first media ranges:
  - `xs` — extra small: 0px — ∞
  - `sm` — small: 578px — ∞
  - `md` — medium: 768px — ∞
  - `lg` — large: 992px — ∞
  - `xl` — extra large: 1200px — ∞

## Installation

From NPM:

```cmd
npm install flxgrid.css@2.0.0alpha --save-dev
```

Then import into your main less file:

```less
@import (less) "./node_modules/flxgrid.css/flxgrid.less";
```

Or use from CDN:

```
https://unpkg.com/flxgrid.css@2.0.0alpha/flxgrid.css
https://unpkg.com/flxgrid.css@2.0.0alpha/flxgrid.min.css
```

## Usage in HTML

Apply classnames in markup:

```html
<div class="flx-container">
    <div class="flx-row">
        <div class="flx-cell">
            content
        </div>
    </div>
</div>
```

### Containers

```
.flx-container           — full-width container
.flx-container-fixed     — centered container with max-width
```

### Rows

```
.flx-row                — horizontal flex-row

Optional row modifiers:

.flx-row-reverse:xs
        -start          — push cells to start (left)
        -center         — center cells horizontally
        -end            — пpush cells to end (right)
        -top            — align cells by top edge
        -middle         — center cells vertically
        -bottom         — align cells by bottom edge
        -baseline       — align cells by baseline of the first line of text
        -around         — distribute cells with equal horizontal space around each cell
        -between        — push first and last cells to the edges and distribute the rest cells evenly
        -reverse        — put cells in reverse order (from right to left)
                :xs     — on any screens
                :sm     — min-width: 576px
                :md     — min-width: 768px
                :lg     — min-width: 992px
                :xl     — min-width: 1200px
```

### Columns

```
.flx-col                — vertical flex-column

Optional column modifiers:

.flx-col-start:xs
        -top            — push cells to top (to start)
        -middle         — align cells vertical
        -bottom         — push cells to bottom (to end)
        -around         — distribute cells with equalvertical space around each cell
        -between        — push first and last cells to the edges and distribute the rest cells evenly
        -reverse        — ut cells in reverse order (from bottom to top)
              :xs       — on any screens
              :sm       — min-width: 576px
              :md       — min-width: 768px
              :lg       — min-width: 992px
              :xl       — min-width: 1200px
```

### Cells

```
Type of cells:

.flx-cell:xs            — auto-width cell
.flx-cell-1:xs          — cell with is 1 column
          ...           — any number 1 to 12
         -12            — cell withis 12 columns, full width
.flx-cell-shrink:xs     — cell shrinks it width to the width of content
.flx-cell-fixed:xs      — cell shrinks to minimal width. Requires explicit min-width.
               :xs      — on any screens
               :sm      — min-width: 576px
               :md      — min-width: 768px
               :lg      — min-width: 992px
               :xl      — min-width: 1200px

Optional cell modifiers:

.flx-cell-first:xs
         -first         — move cell into the first place
         -last          — move cell into the last place
         -offset-1      — shift cell right on 1 column with margin-left: 8.33333%
         -offset-6      — any number 1 to 12
         -offset-12     — shift cell right on 12 column with margin-left: 100%
         -grow          — Use all available height. Used for flex-columns
               :xs      — on any screens
               :sm      — min-width: 576px
               :md      — min-width: 768px
               :lg      — min-width: 992px
               :xl      — min-width: 1200px
```

## Default parameters

Component has global mixin with settings named `.grid-settings();` and global variable `grid-render` which contains all code.

Default settings:

```less
.grid-settings() {

    // settings
    @grid-columns: 12;   // number of columns
    @gutter-width: 40px; // gap between columns

    // media breakpoints (default: as on bootstrap)
    @breakpoints:
        ~"(min-width: 576px)",
        ~"(min-width: 768px)",
        ~"(min-width: 992px)",
        ~"(min-width: 1200px)";

    // max-width of containers according breakpoints
    @container-maw:
        none,
        750px,
        970px,
        1170px;

    // names for breakpoint suffixes
    @suffixes: xs, sm, md, lg, xl;
    @suffixes-separator: ~"\:";

    // IMPORTANT: suffixes count should be bigger than breakpoints count by 1
    // suffixes-count = breakpoints-count + 1

}
```

## Usage in LESS

Running with default parameters:

```less
@import (less) "pathto/flxgrid.less";
```

Redefining gutter-width and breakpoints:

```less
@import (less) "pathto/flxgrid.less";

.grid-settings() {
    @gutter-width: 60px;

    // media breakpoints
    @breakpoints:
        ~"(min-width: 480px)",
        ~"(min-width: 768px)",
        ~"(min-width: 992px)",
        ~"(min-width: 1200px)",
        ~"(min-width: 1600px)";

    // max-width of containers according breakpoints
    @container-maw:
        100%,
        750px,
        970px,
        1170px,
        1540px;

    // names for breakpoint suffixes
    @suffixes: xxs, xs, sm, md, lg, xlg;
    @suffixes-separator: --;
}
```
