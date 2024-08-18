[parm]:title = 'Meddy Release Notes'


# Release Notes 


## 5.0.2 - 2024-08-18

* Bug fix for documents that contain a definition of the parameter `collapsibleTOC` which made Meddy crash inn 5.0.1

## 5.0.1 - 2024-08-13

* Comes with a new version of MarkAPL with a number of important bug fixes

* The mark-up for the recently introduced checkboxes was changed.

  Instead of:

  ```
   [ ]  ⍝ Note the leading space!
  ``` 

  it's now 

  ```
  - [ ]   ⍝ No leading space!
  ```

  The reason for this change is that GitHub uses the `- [ ]` syntax. Due to the normative power of the factual we felt obliged to follow suit.

## 5.0.0 - 2024-02-06

* Meddy is now a 64-bit appliation

  Because of that your are advised to uninstall any earlier version of Meddy because that would be a 32-bit application.

* Bug fix: in case the filename was guessed by Meddy under some circumstances the resulting filename might end up with plenty of words, causing a LIMIT ERROR.


## 4.1.1 - 2024-01-29

* Bug fix: the print style sheet of the "Dark" theme used a way-too-big base font size.

## 4.1.0 - 2024-01-11

* New version of MarkAPL, APLGUI and FilesAndDirs integrated.

## 4.0.0 - 2023-12-12

* New version of `MarkAPL` that breaks with past behaviour: HTML in markdown is now converted. 

  If you need to _show_ HTML tags make it inline code.
* Table-related context menu command "Delete column" added
* Context menu command "Inject MarkAPL expression" now includes "Collapsibles".
* New theme "Dark" added
* All CSS style sheets improved
* The parameter `collapsibleTOC` is deprecated now, and has no effect anymore
* Bug fixes     
  * Inserting a bookmark link should not add the header numbers to the link text  
  * "Copy ID" crashed in documents with no header
  * "Copy" was not always available in the context menu when it should have been
  * Formatting a table could lead to the loss of data under some circumstances
  * "Extend table row" did not work as intended
  * When `saveHTML` was added as a parameter, a value of `¯1` was established which 
     made Meddy crash later. The default should be `0`.

## 3.1.0 - 2023-08-14

* "Delete column" added to the table-specific commands                  
* New version of MarkAPL integrated with improved styling of TOCs and inline code
* Bug fixes
  * Opening a Markdown file that had no HTML companion yet crashed

## 3.0.1 - 2023-08-11

* Bug fixes
  * `SaveMarkdown` much more resilient now against disappearing network drives and the likes
  * Build ID was not increased because the project was closed too early
* Packages updated  

## 3.0.0 - 2023-07-31

* Major improvements in terms of stability, particularly when invalid Markdown was provided as input
* Potentially breaking change: the parameter `saveHTML` must not carry a 2 anymore, it must be either a 0 or a 1.
* Enhanced formatting and editing of tables
  * `Ctrl+T` formats a table in the Markdown properly
  * `Ctrl+F9` inserts a column into a table to the right of the cursor
  * `Ctrl+Shift+F9` inserts a column into a table to the left of the cursor
  * `Ctrl+Tab` jumps to next column
  * `Ctrl+Shift+Tab` jumps to the previous column
  * `Ctrl+Shift+<up>` moves the current table row up
  * `Ctrl+Shift+<down>` moves the current table row down
  * `Ctrl+Shift+F5` moves the current column to the right
  * `Ctrl+Shift+<F4` moves the current column to the left
  * `Ctrl+Shift+E` extends the current line
  * `Ctrl+Shift+V` inserts a table into the markdown and formats it
* Bug fixes
  * Pressing `ALT+F4` and then clicking `<Cancel>` (or pressing `<Escape>`) lead to a loss of all changes because Meddy quit anyway
  * Ticks are not displayed in the table-of-contents anymore
  * Adding a "head" parameter at the top of the document crashed Meddy
  * Error message in case of invalid Markdown was everything but helpful
  * In case of invalid Markdown Meddy crashed rather the refusing gracefully
  * Saving a document in a folder when admin rights are required appeared to be successful but was not
  * Meddy crashed in case the value of an embedded parameter carried a `=` character
  * Meddy crashed when the dialog that puts the MarkAPL report on display was closed with `Alt+F4`
  * Trying to save a document in a folder that required admin rights without having those appeared to work but did not

## 2.11.1 - 2020-08-24

* When a document that was saved with a TOC was changed so that there were no headers anymore, and then saved under a different name, Meddy crashed.
* When Meddy was asked to close down but there were unsaved changes waiting, and the attempt to save them failed with error 19, then Meddy informed the user about the error but closed down anyway, effectively discarding the changes.

## 2.11.0 - 2020-08-19

* The “Search & Find next (F3)” menu command is back.
* Renaming a markdown file did not rename the associated HTML file except when it was moved to a different directory.
* “Show warnings” is not a preference anymore but a document-specific option that after opening always defaults to “true”.
  If it is switched off via the menu command “Settings &gt; Show warnings” then the message “There are warnings” is shown in the status bar.
* Bug fixes
 
* <Escape> and <Enter> (triggering the default button) did not work in dialogs in 2.10.3.

  This was a Dyalog issue, not a Meddy issue, but it is solved now with the new version of Dyalog 18.0
* A header that resulted in containing tags was shown with the tags in the TOC. Now removed.
* Under the hood Meddy now uses 18.0.
  
## 2.10.3 - 2020-07-15

* Bug fix: under some circumstances a click on the special characters could crash Meddy.
  
## 2.10.2 - 2020-06-03

* Toc was not always updated properly (#44).
* Clicking on a title in the Preview does not work (#43).
* TOC and Markdown can get out of sync (#42).
  
## 2.10.1 - 2020-05-26

* “New”, when selected while a document is currently open, crashed Meddy.
  
## 2.10.0 - 2020-05-24
 
* “Find” improved (#36).
* The markdown context menu now offers a command “Copy ID” (#25).
* The “View” menu and the markdown context menu now offer a command “Sync”.
* Handling of the TOC improved including some changes to the context menu.
* Files are tied exclusively for the course of the session, preventing accidental double-editing
* Bug fixes:
 
* #22, #24, #27, #41, #40, #39, #34, #30, #32, #16, #29 fixed.























