 -- Load treesitter grammar for org
    require('orgmode').setup_ts_grammar()

    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/Documents/org/agenda/',
      org_default_notes_file = '~/Documents/org/notes.org',
    })
