# flxgrid.css — flexbox grid system

Makes grid classes for given number of columns (default: 12) and breakpoints (default: xs, sm, md, lg).

## Usage in HTML

```html
<div class="row">
    <div class="col-xs-4">
        ...
    </div>
    <div class="col-xs-4">
        ...
    </div>
    <div class="col-xs-4">
        ...
    </div>
</div>
```

## Default parameters

Component has global mixin with settings named `.grid-settings();` and global variable `grid-render` which contains all code.

Default settings:

```less
.grid-settings() {

    // settings
    @grid-columns: 12;   // number of columns
    @gutter-width: 30px; // gap between columns
    @outer-margin: 60px; // padding left and right for fluid container

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
        "min-width: 480px",
        "min-width: 768px",
        "min-width: 992px",
        "min-width: 1200px",
        "min-width: 1600px";

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
