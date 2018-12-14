Jupyter.keyboard_manager.command_shortcuts.add_shortcut('shift-x',
    function(event) {
        IPython.notebook.execute_all_cells();
        return false;
    }
);

Jupyter.keyboard_manager.command_shortcuts.add_shortcut('ctrl-x',
    function(event) {
        IPython.notebook.kernel.restart();
        setTimeout(function(){ IPython.notebook.execute_all_cells(); }, 100);
        return false;
    }
);
