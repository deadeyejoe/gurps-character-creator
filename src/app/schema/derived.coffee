angular.module('gurpscc').constant 'derived', {
  type: 'category'
  hp:
    name: "hp"
    label: "HP"
    type:"derived"
    formula: (stats) -> stats.primary.strength
  will:
    name: "will"
    label: "Will"
    type:"derived"
    formula: (stats) -> stats.primary.intelligence
  perception:
    name: "perception"
    label: "Perception"
    type:"derived"
    formula: (stats) -> stats.primary.intelligence
  fp:
    name: "fp"
    label: "FP"
    type:"derived"
    formula: (stats) -> stats.primary.health
  lift:
    name: "lift"
    label: "Lift"
    type:"derived"
    formula: (stats) -> (stats.primary.strength*stats.primary.strength)/5
  speed:
    name: "speed"
    label: "Speed"
    type:"derived"
    formula: (stats) -> (stats.primary.health + stats.primary.dexterity)/4
}
