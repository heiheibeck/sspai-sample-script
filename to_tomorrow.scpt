JsOsaDAS1.001.00bplist00�Vscript_�function TaskPaperContextScript(editor, options) {
  var outline = editor.outline;
  outline.groupUndoAndChanges(function() {
    outline.evaluateItemPath('//@today').forEach(function (each) {
      each.setAttribute('data-tomorrow', each.getAttribute('data-today'));
      each.removeAttribute('data-today');
    });
  });
}

Application("TaskPaper").documents[0].evaluate({
  script: TaskPaperContextScript.toString()
})                              �jscr  ��ޭ