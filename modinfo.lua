return {
  name = 'tchobby',
  game = 'tchobby',
  shortName = 'tchobby',
  description = 'Cursed mutator for Chobby',
  version = '$VERSION',
  mutator = 'Official',
  modtype = 5,
  onlyLocal = true,
  depend = {
      -- For developing base chobby, switch out dependency  
      --'rapid://chobby:test',
      'Chobby $VERSION',
  },
}

