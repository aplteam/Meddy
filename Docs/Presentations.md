# About Presentations

## Overview

Meddy is able to create an HTML file that acts like a presentation in any modern browser. All that's needed is an embedded parameter: `[parm]:presentation=1`.

Unfortunately Meddy cannot view the HTML as a presentation in its own "Preview" window for technical reasons. Instead the HTML is shown in "Print" mode. However, by pressing F10 one can get around this easily, asking the default browser for doing the job.

This feature enables you to generate a presentation with very little effort by following a simple and small set of rules.

The resulting HTML file is stand-alone except when you embed images of any kind.

You can use all the stuff supported by MarkAPL: paragraphs, lists, code blocks, tables, images, blockquotes, horizontal rulers, in-line markup (bold, italic, APL code, deleted…) and more.

## Pros and cons

**Advantages:**

* Single stand-alone HTML file
* It's just HTML5, CSS and a bit of JavaScript
* Open Source
* Simple and easy to use
* Allows testing code expressions used in a presentation

**Disadvantages:**

* No animations other than animated GIFs

## Rules for presentations

There are very few syntax rules you need to follow:

* The (unique) level-1 header defines the name/title of the presentation
* Every header of level 2 defines a new slide

This means that you are free to use headers of the levels 3 to 6 within your slides.

Optionally you can add three strings as embedded data:

```
[Data]:author="Kai Jaeger"
[Data]:company="APL Team Ltd"
[Data]:date="2016-03-10"
```

These pieces of information can then be referenced within any slide. An example for the first slide could be:

```
## How to save the planet

### \{$author\}, \{$company\}
### \{$date\}
```

## Handouts

There is a special syntax available for adding information to a slide that is not visible on the slide as such in display mode but will become visible in print mode. When a presentation is running then you can toggle between "print" and "screen" mode with the keyboard shortcut "p".

Information that should be visible only on the handouts needs to be embraced by a `<div>` with the class "handout" assigned to it:

```
Some para.

<div class="handout">
This **para** shows in "Print" mode only.
</div>

Some other para.
```

The blank line above and below the `<div>` is necessary: only then is it identified as an HTML block rather than beeing taken verbatim.

Note however that the paragraph would not be interpreted as markdown. This means that `**para**` is not converted into bold but survives as it reads.

However, it is easy to overcome this by defining **two** HTML block as shown here:

```
Some para.

<div class="handout">

This **para** shows in "Print" mode only.

</div>

Some other para.
```


## Keyboard shortcuts

The following keys are used to control a presentation:

|Key          | Comment
|`<PgDn>`       | Show the next slide
|`<PgUp>`       | Show previous slide
|`<Home>`       | First slide
|`<End>`        | Last slide
|Cursor-right | Show next item
|Cursor-left  |    Hide current item
|M            | Toggle mouse navigation (default=off)
|S            | Toggle status bar visibility
|P            | Toggle “Print” mode 

Notes:

* All elements are always incremental; that means that by pressing `<CursorRight>` just one element at a time is revealed.

  If you don't want this just press either `<PgDn>` or `<Enter>` - this shows a whole slide at once.

## Misc
 
* The bottom-left corner shows an arrow as long as not all items on a slide are revealed.

* In "Print" mode all slides are combined into a single printable document. In this mode `<div>`s with the class "handout" assigned to them will become visible as well.