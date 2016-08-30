angular.module('gurpscc').constant 'advantages', {
  acute_hearing:
    name:"acute_hearing"
    label:"Acute Hearing"
    type:"scalar"
    points_value:2
    excludes: ["bad_sight"]
    description: "this is a description"
  acute_taste:
    name:"acute_taste"
    label:"Acute Taste"
    type:"scalar"
    points_value:2
  acute_touch:
    name:"acute_touch"
    label:"Acute Touch"
    type:"scalar"
    points_value:2
  acute_vision:
    name:"acute_vision"
    label:"Acute Vision"
    type:"scalar"
    points_value:2
  ambidexterity:
    name:"ambidexterity"
    label:"Ambidexterity"
    type:"toggle"
    points_value:5
  animal_empathy:
    name:"animal_empathy"
    label:"Animal Empathy"
    type:"toggle"
    points_value:5
  catfall:
    name:"catfall"
    label:"Catfall"
    type:"toggle"
    points_value:10
  combat_reflexes:
    name:"combat_reflexes"
    label:"Combat Reflexes"
    type:"toggle"
    points_value:15
  danger_sense:
    name:"danger_sense"
    label:"Danger Sense"
    type:"toggle"
    points_value:15
  daredevil:
    name:"daredevil"
    label:"Daredevil"
    type:"toggle"
    points_value:15
  empathy:
    name:"empathy"
    label:"Empathy"
    type:"toggle"
    points_value:15
  enhanced_block:
    name:"enhanced_block"
    label:"Enhanced Block"
    type:"toggle"
    points_value:5
  enhanced_dodge:
    name:"enhanced_dodge"
    label:"Enhanced Dodge"
    type:"toggle"
    points_value:15
  enhanced_parry_bare_hands:
    name:"enhanced_parry_bare_hands"
    label:"Enhanced Parry - Bare Hands"
    type:"toggle"
    points_value:5
  enhanced_parry_melee_weapon:
    name:"enhanced_parry_melee_weapon"
    label:"Enhanced Parry - Melee Weapon"
    type:"toggle"
    points_value:5
  fearlessness:
    name:"fearlessness"
    label:"Fearlessness"
    type : "scalar"
    points_value:2
  flexibility:
    name:"flexibility"
    label:"Flexibility"
    type:"select"
    values:
      average:
        points_value: 0
        label: "Average"
      flexible:
        points_value:5
        label: "Flexible"
      double_jointed:
        points_value:10
        label:"Double Jointed"
  hard_to_kill:
    name:"hard_to_kill"
    label:"Hard To Kill"
    type:"scalar"
    points_value:2
  high_pain_threshold:
    name:"high_pain_threshold"
    label:"High Pain Threshold"
    type : "toggle"
    points_value:10
  luck :
    name:"luck"
    label:"Luck"
    type:"select"
    values:
      average:
        points_value:0
        label: "Average"
      good_luck:
        points_value:15
        label: "Good Luck"
      extraordinary_luck:
        points_value:30
        label: "Extraordinary Luck"
      ridiculous_luck:
        points_value:60
        label: "Ridiculous Luck"
  night_vision:
    name:"night_vision"
    label:"Night Vision"
    type:"scalar"
    points_value:1
  perfect_balance:
    name:"perfect_balance"
    label:"Perfect Balance"
    type:"toggle"
    points_value:15
  resistant_to_disease:
    name:"resistant_to_disease"
    label:"Resistant to Disease"
    type:"select"
    values:
      average:
        points_value:0
        label: "Average"
      minor:
        points_value:3
        label: "Minor"
      Major:
        points_value:5
        label: "Major"
  resistant_to_poison:
    name:"resistant_to_poison"
    label:"Resistant to Poison"
    type:"toggle"
    points_value:5
}
