angular.module('gurpscc').constant 'primary', {
  type: 'category'
  strength:
    name:"strength"
    label:"Strength (ST)"
    type: "scalar"
    defaultValue:10
    baseValue: 10
    pointsValue: 10
    min:1
  dexterity:
    name:"dexterity"
    label:"Dexterity (DX)"
    type: "scalar"
    defaultValue:10
    baseValue: 10
    pointsValue: 20
    min:1
  intelligence:
    name:"intelligence"
    label:"Intelligence (IQ)"
    type: "scalar"
    defaultValue:10
    baseValue: 10
    pointsValue: 20
    min:1
  health:
    name:"health"
    label:"Health (HT)"
    type: "scalar"
    defaultValue:10
    baseValue: 10
    pointsValue: 10
    min:1
}
