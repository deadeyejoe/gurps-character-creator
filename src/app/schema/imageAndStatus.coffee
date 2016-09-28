angular.module('gurpscc').constant 'image_and_status', {
  type: 'category'
  appearance:
    name:"appearance"
    label:"Appearance"
    type:"select"
    defaultValue:"average"
    values:
      very_beautiful:
        pointsValue:16
        label: "Very Beautiful"
      beautiful:
        pointsValue:12
        label: "Beautiful"
      attractive:
        pointsValue:4
        label: "Attractive"
      average:
        pointsValue:0
        label: "Average"
      unattractive:
        pointsValue:-4
        label: "Unattractive"
      ugly:
        pointsValue:-8
        label: "Ugly"
      hideous:
        pointsValue:-16
        label: "Hideous"
  charisma :
    name:"charisma"
    label:"Charisma"
    type:"scalar"
    pointsValue: 5
  voice :
    name:"voice"
    label:"Voice"
    type : "toggle"
    pointsValue : 10
  wealth:
    name:"wealth"
    label:"Starting Wealth"
    type: "select"
    defaultValue:"average"
    values:
      filthy_rich:
        label:"Filthy Rich"
        pointsValue:50
      very_wealthy:
        label:"Very Wealthy"
        pointsValue:30
      wealthy:
        label:"Wealthy"
        pointsValue:20
      comfortable:
        label:"Comfortable"
        pointsValue:10
      average:
        label:"Average"
        pointsValue:0
      struggling:
        label:"Struggling"
        pointsValue:-10
      poor:
        label:"Poor"
        pointsValue:-15
      dead_broke:
        label:"Dead Broke"
        pointsValue:-25
  status :
    name:"status"
    label:"Social Status"
    type:"scalar"
    pointsValue: 5
    baseValue: 0
    max : 8
    min : -2
  odious_personal_habit:
    name:"odious_personal_habit"
    label:"Odious Personal Habit"
    type:"select"
    defaultValue:"None"
    values:
      none:
        label:"None"
        pointsValue:0
      mild:
        label:"Mild"
        pointsValue:-5
      minor:
        label:"Minor"
        pointsValue:-10
      major:
        label:"Major"
        pointsValue:-15
}
