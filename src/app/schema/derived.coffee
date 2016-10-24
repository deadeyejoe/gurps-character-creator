angular.module('gurpscc').constant 'derived', {
  type: 'category'
  hp:
    name: "hp"
    label: "HP"
    type:"derived"
    formula: (character) -> character.getValue("primary.strength")
  will:
    name: "will"
    label: "Will"
    type:"derived"
    formula: (character) -> character.getValue("primary.intelligence")
  perception:
    name: "perception"
    label: "Perception"
    type:"derived"
    formula: (character) -> character.getValue("primary.intelligence")
  fp:
    name: "fp"
    label: "FP"
    type:"derived"
    formula: (character) -> character.getValue("primary.health")
  lift:
    name: "lift"
    label: "Lift"
    type:"derived"
    formula: (character) -> (character.getValue("primary.strength")*character.getValue("primary.strength"))/5
  speed:
    name: "speed"
    label: "Speed"
    type:"derived"
    formula: (character) -> (character.getValue("primary.health") + character.getValue("primary.dexterity"))/4
}
