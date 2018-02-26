# Release Notes

* 1.5.0
  * Undo/Redo improved at the expense of memory.
  * "Export HTML" now gives three opportunities: "Save always", "Save never" and "Keep asking". Same
    for the Preferences dialog.
  * When a file is opened all <tab> characters are replaced by 4 spaces.
  * F11 (View in default browser) has been moved to F10.
  * F11 is now "Toggle full-screen mode" which is standard in all browsers and many editors.
  * F6 now syncs the Preview pane with the Markdown pane and the TOC, depending on the cursor position
    in the markdown.
  * Cursor movements don't change the Preview any more: too slow and sometimes not appreciated.
  * Size and Posn of the main form are now restored at the next start when possible.
* 1.4.2
  * The screen style sheets got improved.
  * Updating the TOC got smarter: expanded branches remain expanded after Ctrl+S as well as F5.
  * New version of MarkAPL.
  * New version of the GUI utilities.
  * Bug fixes
    * The TOC was _always_ updated, even if there was no change.
    * Invalid regular expressions could crash Meddy.
    * After disabling "Preview" and then making the form significantly smaller could result in
      the "Preview" becoming permanently invisible.
    * For a _local_ file the URL is supposed to start with "file:///" rather than "file://". This
      is important since some browsers are quite strict on this.
    * Pressing <escape> in the "Replace" form crashed Meddy.
    * KeyPress events were handled slowly due to a bug in the Undo/Redo code.
* 1.4.1
  Bug fixes
  * After loading a file F5 lead to "There is no HTML file yet" even if there is one.
  * View in default browser did not work in case the filename carried one or more blanks.
  * CSS were not always found.
  * New version of MarkAPL with bug fixes.
  * The `[parm]` section had trailing blanks after invoking "Inject MarkAPL parameters".
  * The contents injected into a new document carried an invalid link (case problem),
  * A new document had a problems when the "Save" command was issued but then cancelled: it
    created a file `md.md` despite the cancellation.
  * In case `screenCSS` and `printCSS` where absolute paths and `cssURL` was not set at all
    things went wrong.
  * The TreeView (TOC) did not use an APL font yet a header might well carry APL chars.
  * Neither "Find" nor "Replace" used "APL385 Unicode" as font.
* 1.4.0
  * New command "Go to line" in the "Edit" menu.
  * New command "Show last report" in the "Edit" menu.
  * Bug fixes
    * Embedded numeric parameters with more than one value (like `toc=2 3`) caused Meddy to fail.
    * Every reformatting of any embedded parameters added an additional blank column.
    * With LeanPub extensions active and embedded into the markdown a click on the TOC did not
      necessarily work as expected.
    * Embedded parameters got formatted, but not perfectly.
* 1.3.0
  * New preference `LeanPub` introduced. If this is 1 (default is 0) then all the LeanPub extensions
    like `A> `, `I> `, `W> ` etc. are supported.
  * New version of MarkAPL with important bug fixes.
  * Bug fixes:
    * Drag-n-drop worked only once.
    * Files with invalid extension and no extension at all were silently ignored.

      Now those without are processed and those with invalid extensions present an error message now.
    * "View in default browser" always complained about a missing HTML file, no matter whether is was
      missing or not.
    * "Replace" without the RegEx option ticked always deleted the text that was to be replaced.
* 1.2.0
  * "Replace" implemented.
  * "Search" now offers "Ignore code blocks and/or inline code".
  * New command line option `-folder` introduced. Use this to specify a folder Meddy should look
    into in case an "Open file" command is issued.
  * Bug fixes
    * In case MarkAPL crashes when attempting to convert the Markdown to HTML the error is trapped
      now in order to avoid any loss of data.
* 1.1.1
  * Bug fixes:
    * Sync of Markdown with Preview and TOC stopped working.
    * Cursor keys did not work propery in the TOC.
* 1.1.1
  * Bug fixes:
    * The screen position of a new instance works now as expected.
    * KeyPress handler sped up.
    * Undo on the current paragraph was not re-doable.
    * Undo and Redo now get the cursor position right.
* 1.1.0
  * Meddy now honours a file `.Meddy` that lives in the folder a Markdown file was loaded from.
    This can be used to specify a different output folder for the HTML file, if any.
* 1.0.1
  * Version 1.0.0 did not open markdown files with a double-click in Windows Explorer.
  * "Close", "New" etc. are now supported.
  * Confirmation for saving HTML now defaults to "No".
  * "Width" for preview can now be defined in preferences.
  * Additional CSS files ("Classic" theme) added.
  * Bug fixes:
    * Undo did not always work as expected.
    * <Tab> key now inserts 4 blanks at the current cursor position.
    * Keys that do not actually produce a key deleted the character to the left of the cursor.
* 1.0.0
  * "Open", "New"  and "RecenFiles" start a new instance of Meddy now.
  * F2="Previous hit" implemented.
  * The main GUI now allows to drag a single file onto the Markdown area as long as no document
    is opened/created.
  * All documents on the "Help" menu are now opened with the default browser.
  * "Posn" is now fixed but "Size" and Posn of any Splitters is remembered.
  * New instances use a slightly changed Posn (does not work, see <01429>.
  * Bug fixes:
    * "Full HTML document" was not process/honoured.
    * Statusbar background colour problem fixed.
    * "Save as" now looks into the folder the document came from.
    * Links to external URLs weren';t handled correctly.