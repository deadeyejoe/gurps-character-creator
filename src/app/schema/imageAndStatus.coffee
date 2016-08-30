angular.module('gurpscc').constant 'image_and_status', {
  appearance:
    name:"appearance"
    label:"Appearance"
    type:"select"
    base_value:"average"
    values:
      very_beautiful:
        points_value:16
        label: "Very Beautiful"
      beautiful:
        points_value:12
        label: "Beautiful"
      attractive:
        points_value:4
        label: "Attractive"
      average:
        points_value:0
        label: "Average"
      unattractive:
        points_value:-4
        label: "Unattractive"
      ugly:
        points_value:-8
        label: "Ugly"
      hideous:
        points_value:-16
        label: "Hideous"
  charisma :
    name:"charisma"
    label:"Charisma"
    type:"scalar"
    points_value: 5
  voice :
    name:"voice"
    label:"Voice"
    type : "toggle"
    points_value : 10
  wealth:
    name:"wealth"
    label:"Starting Wealth"
    type: "select"
    base_value:"average"
    values:
      filthy_rich:
        label:"Filthy Rich"
        points_value:50
      very_wealthy:
        label:"Very Wealthy"
        points_value:30
      wealthy:
        label:"Wealthy"
        points_value:20
      comfortable:
        label:"Comfortable"
        points_value:10
      average:
        label:"Average"
        points_value:0
      struggling:
        label:"Struggling"
        points_value:-10
      poor:
        label:"Poor"
        points_value:-15
      dead_broke:
        label:"Dead Broke"
        points_value:-25
  status :
    name:"status"
    label:"Social Status"
    type:"scalar"
    points_value: 5
    base_value: 0
    max : 8
    min : -2
  odious_personal_habit:
    name:"odious_personal_habit"
    label:"Odious Personal Habit"
    type:"select"
    base_value:"None"
    values:
      none:
        label:"None"
        points_value:0
      mild:
        label:"Mild"
        points_value:-5
      minor:
        label:"Minor"
        points_value:-10
      major:
        label:"Major"
        points_value:-15
}
