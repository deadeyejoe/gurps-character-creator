angular.module('gurpscc').constant 'advantages', {
  type: 'category'
  acute_hearing:
    name:"acute_hearing"
    label:"Acute Hearing"
    type:"scalar"
    defaultValue:1
    baseValue:0
    pointsValue:2
    excludes: ["bad_sight"]
    description:"You have a superior sense of Hearing. Gives +1 per level to all Sense rolls (p. 24) you make – or the GM makes for you – using Hearing. "
  acute_taste:
    name:"acute_taste"
    label:"Acute Taste and Smell"
    type:"scalar"
    defaultValue:1
    baseValue:0
    pointsValue:2
    description:"You have a superior sense of Taste and Smell. Gives +1 per level to all Sense rolls (p. 24) you make – or the GM makes for you – using Taste and Smell. "
  acute_touch:
    name:"acute_touch"
    label:"Acute Touch"
    type:"scalar"
    defaultValue:1
    baseValue:0
    pointsValue:2
    description:"You have a superior sense of Touch. Gives +1 per level to all Sense rolls (p. 24) you make – or the GM makes for you – using Touch. "
  acute_vision:
    name:"acute_vision"
    label:"Acute Vision"
    type:"scalar"
    defaultValue:1
    baseValue:0
    pointsValue:2
    description:"You have a superior sense of Vision. Gives +1 per level to all Sense rolls (p. 24) you make – or the GM makes for you – using Vision. "
  ambidexterity:
    name:"ambidexterity"
    label:"Ambidexterity"
    type:"toggle"
    pointsValue:5
    description:"You can fight or otherwise act equally well with either hand, and never suffer the -4 DX penalty for using the “off” hand (see p. 5). Should some accident befall one of your arms or hands, assume it is the left one. "
  animal_empathy:
    name:"animal_empathy"
    label:"Animal Empathy"
    type:"toggle"
    pointsValue:5
    description:"You are unusually talented at reading the motivations of animals. When you meet an animal, the GM rolls against your IQ and tells you what you “feel.” This reveals the beast’s emotional state – friendly, frightened, hostile, hungry, etc. – and whether it is under supernatural control. You may also use your Influence skills (see p. 15) on animals just as you would on sapient beings, which usually ensures a positive reaction."
  catfall:
    name:"catfall"
    label:"Catfall"
    type:"toggle"
    pointsValue:10
    description:"You subtract five yards from a fall automatically (treat this as an automatic Acrobatics success – don’t check again for it). In addition, a successful DX roll halves damage from any fall (see p. 32). To enjoy these benefits, your limbs must be unbound and your body free to twist as you fall."
  combat_reflexes:
    name:"combat_reflexes"
    label:"Combat Reflexes"
    type:"toggle"
    pointsValue:15
    description:"You have extraordinary reactions, and are rarely surprised for more than a moment. You get +1 to all active defense rolls (see Defending, p. 28) and +2 to Fright Checks (see Fright Checks, p. 24). You never “freeze” in a surprise situation, and get +6 on all IQ rolls to wake up, or to recover from surprise or mental “stun.”"
  danger_sense:
    name:"danger_sense"
    label:"Danger Sense"
    type:"toggle"
    pointsValue:15
    description:"You can’t depend on it, but sometimes you get this prickly feeling right at the back of your neck, and you know something’s wrong . . .The GM rolls once against your Perception, secretly, in any situation involving an ambush, impending disaster, or similar hazard. On a success, you get enough of a warning that you can take action. A roll of 3 or 4 means you get a little detail as to the nature of the danger."
  daredevil:
    name:"daredevil"
    label:"Daredevil"
    type:"toggle"
    pointsValue:15
    description:"Fortune seems to smile on you when you take risks! Any time you take an unnecessary risk (in the GM’s opinion), you get a +1 to all skill rolls. Furthermore, you may reroll any critical failure that occurs during such high-risk behavior."
  empathy:
    name:"empathy"
    label:"Empathy"
    type:"toggle"
    pointsValue:15
    description:"You have a “feeling” for people. When you first meet someone – or are reunited after an absence – you may ask the GM to roll against your IQ. He will tell you what you “feel” about that person. On a failed IQ roll, he will lie! This talent is excellent for spotting imposters, possession, etc., and for determining the true loyalties of NPCs."
  enhanced_block:
    name:"enhanced_block"
    label:"Enhanced Block"
    type:"toggle"
    pointsValue:5
    description:"You have +1 to your Block score with Shield skill "
  enhanced_dodge:
    name:"enhanced_dodge"
    label:"Enhanced Dodge"
    type:"toggle"
    pointsValue:15
    description:"You have +1 to your Dodge score. "
  enhanced_parry:
    name:"enhanced_parry"
    label:"Enhanced Parry"
    type:"select"
    defaultValue: "bare_hands"
    description:"You have +1 to your Parry score. You may take this advantage for bare hands, for any one Melee Weapon skill, or for all parries. "
    values:
      bare_hands:
        pointsValue:5
        label: "Bare hands"
      melee_weapon:
        pointsValue:5
        label: "Melee Weapon"
      all:
        pointsValue:10
        label: "All parries"
  fearlessness:
    name:"fearlessness"
    label:"Fearlessness"
    type : "scalar"
    defaultValue:1
    baseValue:0
    pointsValue:2
    description:"You are difficult to frighten or intimidate! Add your level of Fearlessness to your Will whenever you make a Fright Check or must resist the Intimidation skill (p. 15) or a supernatural power that induces fear. You also subtract your Fearlessness level from all Intimidation rolls made against you."
  flexibility:
    name:"flexibility"
    label:"Flexibility"
    type:"select"
    defaultValue: "flexible"
    description:"Your body is unusually flexible. This advantage comes in two levels: \nFlexibility: You get +3 on Climbing rolls; on Escape rolls to get free of ropes, handcuffs, and similar restraints. You may ignore up to -3 in penalties for working in close quarters (including many Explosives and Mechanic rolls). \nDouble-Jointed: As above, but more so. You cannot stretch or squeeze yourself abnormally, but any part of your body may bend any way. You get +5 on Climbing, Escape rolls, and on attempts to break free. You may ignore up to -5 in penalties for close quarters."
    values:
      flexible:
        pointsValue:5
        label: "Flexible"
      double_jointed:
        pointsValue:10
        label:"Double Jointed"
  hard_to_kill:
    name:"hard_to_kill"
    label:"Hard To Kill"
    type:"scalar"
    defaultValue:1
    baseValue:0
    pointsValue:2
    description:"You are incredibly difficult to kill. Each level of Hard to Kill gives +1 to HT rolls made for survival at -HP or below, and on any HT roll where failure means instant death (due to heart failure, poison, etc.). If this bonus makes the difference between success and failure, you collapse, apparently dead (or disabled), but come to in the usual amount of time – see Recovering from Unconsciousness (p. 30)."
  high_pain_threshold:
    name:"high_pain_threshold"
    label:"High Pain Threshold"
    type : "toggle"
    pointsValue:10
    description:"You are as susceptible to injury as anyone else, but you don’t feel it as much. You never suffer a shock penalty when you are injured. In addition, you get +3 on all HT rolls to avoid knockdown and stunning – and if you are tortured physically, you get +3 to resist. The GM may let you roll at Will+3 to ignore pain in other situations."
  language_talent:
    name: 'language_talent'
    label: "Language Talent"
    type: "toggle"
    pointsValue:10
    description:"You have a knack for languages. When you learn a language at a comprehension level above None, you automatically function at the next higher level. "
  luck :
    name:"luck"
    label:"Luck"
    type:"select"
    defaultValue: "good_luck"
    description:"You were born lucky! There are three progressively more “cinematic” levels of Luck: \nLuck: Once per hour of play, you may reroll a single bad die roll twice and take the best of the three rolls! You must declare that you are using your Luck immediately after you roll the dice. \nExtraordinary Luck: As above, but usable every 30 minutes. \nRidiculous Luck: As above, but usable every 10 minutes! \nYour Luck only applies to your own success, damage, or reaction rolls, or on outside events that affect you or your whole party, or when you are being attacked (in which case you may make the attacker roll three times and take the worst roll!)."
    values:
      good_luck:
        pointsValue:15
        label: "Good Luck"
      extraordinary_luck:
        pointsValue:30
        label: "Extraordinary Luck"
      ridiculous_luck:
        pointsValue:60
        label: "Ridiculous Luck"
  night_vision:
    name:"night_vision"
    label:"Night Vision"
    type:"scalar"
    defaultValue:1
    baseValue:0
    pointsValue:1
    max:9
    description:"Your eyes adapt rapidly to darkness. Each level of this ability (maximum nine levels) allows you to ignore -1 in combat or vision penalties due to darkness, provided there is at least some light. "
  perfect_balance:
    name:"perfect_balance"
    label:"Perfect Balance"
    type:"toggle"
    pointsValue:15
    description:"You can always keep your footing, no matter how narrow the walking surface (tightrope, ledge, tree limb, etc.), under normal conditions without having to make a die roll. If the surface is wet, slippery, or unstable, you get +6 on all rolls to keep your feet. In combat, you get +4 to DX and DXbased skill rolls to keep your feet or avoid being knocked down. Finally, you get +1 to Acrobatics and Climbing skill."
  resistant_to_disease:
    name:"resistant_to_disease"
    label:"Resistant to Disease"
    type:"select"
    defaultValue: "minor"
    description:"You are naturally resistant (or even immune) to diseases. This gives you a bonus on all HT rolls to resist incapacitation or injury from diseases. You may take a +3 bonus or a +8 bonus. "
    values:
      minor:
        pointsValue:3
        label: "Minor"
      Major:
        pointsValue:5
        label: "Major"
  resistant_to_poison:
    name:"resistant_to_poison"
    label:"Resistant to Poison"
    type:"toggle"
    pointsValue:5
    description:"You are naturally resistant (or even immune) to poisons. This gives you a bonus on all HT rolls to resist incapacitation or injury from poisons. You have a +3 bonus."
}
