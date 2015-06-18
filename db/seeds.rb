board = Board.create!

note1 = Note.create!(board: board, title: "Note 1", body: "What was I supposed to do ?")
note2 = Note.create!(board: board, title: "Note 2", body: "Buy flowers for mom")
