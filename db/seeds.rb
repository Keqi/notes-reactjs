board = Board.create!

note1 = Note.create!(board: board, title: "Note 1", body: "What was I supposed to do ?", colour: "#ffc")
note2 = Note.create!(board: board, title: "Note 2", body: "Buy flowers for mom", colour: "#1DB6F2")
note3 = Note.create!(board: board, title: "Note 3", body: "Feed your pet.", colour: "#F2361D")
