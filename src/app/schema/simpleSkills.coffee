angular.module('gurpscc').constant 'simpleSkills', {
  type: 'category'

  acrobatics:
    name:"acrobatics"
    label:"Acrobatics"
    type: 'skill'
    techLevel:false
    stat: 'DX'
    difficulty: 'H'
    default: "-6"
    description:"This is the ability to perform gymnastic stunts, roll, take falls, etc. "

  acting:
    name:"acting"
    label:"Acting"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to counterfeit moods, emotions, and voices, and to lie convincingly over a period of time. "

  animal_handling:
    name:"animal_handling"
    label:"Animal Handling"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to train and work with animals. When working with a trained animal, roll against skill for each task you give the animal. "

  area_knowledge:
    name:"area_knowledge"
    label:"Area Knowledge"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'E'
    default: "-4"
    subtype: true
    description:"This skill represents familiarity with the people, places, and politics of a given region. You usually have Area Knowledge only for the area you consider your “home base.” "

  armoury:
    name:"armoury"
    label:"Armoury"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    subtype: true
    description:"This is the ability to build, modify, and repair a specific class of weapons or armor. A successful roll lets you find a problem, if it isn’t obvious; a second roll lets you repair it. Time required is up to the GM. "

  brawling:
    name:"brawling"
    label:"Brawling"
    type: 'skill'
    techLevel:false
    stat: 'DX'
    difficulty: 'E'
    default: false
    description:"This is the skill of “unscientific” unarmed combat. Roll against Brawling to hit with a punch, or Brawling-2 to hit with a kick. "

  camouflage:
    name:"camouflage"
    label:"Camouflage"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'E'
    default: "-4"
    description:"This is the ability to use natural materials, special fabrics and paints, etc. to hide yourself, your position, or your equipment."

  carousing:
    name:"carousing"
    label:"Carousing "
    type: 'skill'
    techLevel:false
    stat: 'HT'
    difficulty: 'E'
    default: "-4"
    description:"This is the skill of socializing, partying, etc. A successful Carousing roll, under the right circumstances, gives you a +2 bonus on a request for aid or information, or just on a general reaction. A failed roll means you made a fool of yourself in some way; you get a -2 penalty on any reaction roll made by those you caroused with."

  climbing:
    name:"climbing"
    label:"Climbing"
    type: 'skill'
    techLevel:false
    stat: 'DX'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to climb mountains, rock walls, trees, the sides of buildings, etc. See Climbing (p. 22) for details. "

  computer_operation:
    name:"computer_operation"
    label:"Computer Operation"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'E'
    default: "-4"
    description:"This is the ability to use a computer: call up data, run programs, play games, etc. It is the only computer skill needed by most end users. "

  computer_programming:
    name:"computer_programming"
    label:"Computer Programming"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'H'
    default: false
    description:"The ability to write and debug computer software. Roll to write, debug, or figure out a program. "

  crewman:
    name:"crewman"
    label:"Crewman"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'E'
    default: "-4"
    description:"This is the ability to serve as crew aboard a large vehicle. It includes familiarity with “shipboard life,” knowledge of safety measures, and training in damage control. "

  criminology:
    name:"criminology"
    label:"Criminology"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the study of crime and the criminal mind. A successful skill roll allows you to find and interpret clues, guess how criminals might behave, etc. "

  diagnosis:
    name:"diagnosis"
    label:"Diagnosis"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'H'
    default: "-6"
    description:"This is the ability to tell what is wrong with a sick or injured person, or what killed a dead person. It might not determine the exact problem, but it always gives hints, rule out impossibilities, etc. "

  disguise:
    name:"disguise"
    label:"Disguise"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the art of altering your appearance using clothing, makeup, and prosthetics. A good disguise requires a Disguise roll and 30 minutes to an hour of preparation. "

  electronics_operation:
    name:"electronics_operation"
    label:"Electronics Operation"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This skill lets you use electronic equipment. Make a skill roll in an emergency situation or for “abnormal” use of equipment – not for ordinary, everyday use. "

  electronics_repair:
    name:"electronics_repair"
    label:"Electronics Repair"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to diagnose and repair known types of electronic equipment. "

  engineer:
    name:"engineer"
    label:"Engineer"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'H'
    default: false
    description:"This is the ability to design and build technological devices and systems. A successful roll lets you design a new system, diagnose a glitch, identify the purpose of a strange device, or improvise a gadget to solve a problem."

  environment_suit:
    name:"environment_suit"
    label:"Environment Suit"
    type: 'skill'
    techLevel:true
    stat: 'DX'
    difficulty: 'A'
    default: "-5"
    subtype: true
    description:"This is training in the use of a specific class of protective suit. Suits designed against environmental or battlefield hazards are so complex that you do not merely wear such gear – you operate it. \nBattlesuit/TL: All kinds of powered battle armor and exoskeletons. \nDiving Suit/TL: All types of hard diving suits. \nNBC Suit/TL: All forms of hazardous materials (“HazMat”) gear. \nVacc Suit/TL: Any kind of spacesuit."

  escape:
    name:"escape"
    label:"Escape"
    type: 'skill'
    techLevel:false
    stat: 'DX'
    difficulty: 'H'
    default: "-6"
    description:"This is the ability to slip out of ropes, handcuffs, and similar restraints. The first attempt to escape takes one minute; each subsequent attempt takes 10 minutes. "

  explosives:
    name:"explosives"
    label:"Explosives"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the skill of working with explosives and incendiaries, including the ability to set up, disarm, and dispose of bombs and other explosives. "

  first_aid:
    name:"first_aid"
    label:"First Aid"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'E'
    default: "-4"
    description:"This is the ability to patch up an injury in the field (see Recovery, p. 30). Make a skill roll to halt bleeding, suck out poison, give artificial respiration to a drowning victim, etc. "

  forgery:
    name:"forgery"
    label:"Forgery"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'H'
    default: "-6"
    description:"This is the ability to create falsified documents (identity cards, passports, etc.). When you use a forged document, make your Forgery roll each time it is inspected – unless you roll a critical success on your first attempt. Failure means someone spots the forgery."

  gambling:
    name:"gambling"
    label:"Gambling"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is skill at playing games of chance. A successful Gambling roll can (among other things) tell you if a game is rigged, identify a fellow gambler in a group of strangers, or “estimate the odds” in any tricky situation. "

  hiking:
    name:"hiking"
    label:"Hiking"
    type: 'skill'
    techLevel:false
    stat: 'HT'
    difficulty: 'A'
    default: "-5"
    description:"This skill represents training for endurance walking, hiking, and marching. Make a Hiking roll before each day’s march; on a success, increase the distance traveled by 20%. "

  holdout:
    name:"holdout"
    label:"Holdout"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the skill of concealing items on your person or on other people (usually with their cooperation). An item’s size and shape govern its concealability, from +4 for a BB-sized jewel or a postage stamp, to -6 for a crossbow or a heavy sniper rifle."

  humanities:
    name:"humanities"
    label:"Humanities"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'H'
    default: "-6"
    subtype: true
    description:"Each academic “humanity” or “arts” subject (such as History, Literature, Philosophy, or Theology) is a separate skill. "

  interrogation:
    name:"interrogation"
    label:"Interrogation"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to question a prisoner. Roll a Quick Contest of Interrogation vs. the prisoner’s Will for each question. This requires 5 minutes per question. If you win, you get a truthful answer. If you tie or lose, the victim remains silent or lies. If you lose by more than five points, he tells you a good, believable lie!"

  jumping:
    name:"jumping"
    label:"Jumping"
    type: 'skill'
    techLevel:false
    stat: 'DX'
    difficulty: 'E'
    default: false
    description:"This skill represents trained jumping ability. When you attempt a difficult jump, roll against the higher of Jumping or DX. In addition, you may use half your Jumping skill (round down) instead of Basic Move when calculating jumping distance. See Jumping (p. 23)."

  karate:
    name:"karate"
    label:"Karate"
    type: 'skill'
    techLevel:false
    stat: 'DX'
    difficulty: 'H'
    default: false
    subtype: true
    description:"This skill represents any advanced training at unarmed striking, not just the Okinawan martial art of karate. Roll against Karate to hit with a punch (at no -4 for the “off” hand), or Karate-2 to hit with a kick. Karate improves damage: if you know Karate at DX level, add +1 per die to basic thrust damage when you calculate damage with Karate attacks: punches, kicks, elbow strikes, etc. Add +2 per die if you know Karate at DX+1 or better!"

  law:
    name:"law"
    label:"Law"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'H'
    default: "-6"
    description:"This skill represents knowledge of law codes and jurisprudence. A successful roll lets you remember, deduce, or figure out the answer to a question about the law. "

  leadership:
    name:"leadership"
    label:"Leadership"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to coordinate a group. Make a Leadership roll to lead NPCs into a dangerous or stressful situation. (PCs can decide for themselves if they want to follow you!) "

  lockpicking:
    name:"lockpicking"
    label:"Lockpicking"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to open locks without the key or combination. Each attempt requires one minute. If you make the roll and open the lock, each point by which you succeeded shaves five seconds off the required time. "

  mathematics:
    name:"mathematics"
    label:"Mathematics"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'H'
    default: "-6"
    description:"This is the scientific study of quantities and magnitudes, and their relationships and attributes, through the use of numbers and symbols. "

  mechanic:
    name:"mechanic"
    label:"Mechanic"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to diagnose and fix ordinary mechanical problems. A successful skill roll will let you find or repair one problem. "

  merchant:
    name:"merchant"
    label:"Merchant"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the skill of buying, selling, and trading retail and wholesale goods. It involves bargaining, salesmanship, and an understanding of trade practices. "

  natural_sciences:
    name:"natural_sciences"
    label:"Natural Sciences"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'H'
    default: "-6"
    subtype: true
    description:"There are a number of skill types under this heading, including Astronomy, Biology, Chemistry, Geology, and Physics, plus any others the GM approves. "

  naturalist:
    name:"naturalist"
    label:"Naturalist"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'H'
    default: "-6"
    description:"This skill represents practical knowledge of nature – notably, how to tell dangerous plants and animals from benign ones, how to locate a cave to shelter in; and how to “read” weather patterns to know when to take shelter. "

  navigation:
    name:"navigation"
    label:"Navigation"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    subtype: true
    description:"This is the ability to find your position through careful observation of your surroundings and the use of instrumentation. A successful roll tells you where you are or lets you plot a course. Various types of Navigation include: Sea, Air, Land, Space, and Hyperspace. "

  observation:
    name:"observation"
    label:"Observation"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the talent of observing dangerous or “interesting” situations without letting others know that you are watching. Use this skill to monitor a location, a group of people, or your immediate surroundings for concealed or tactically significant details."

  occultism:
    name:"occultism"
    label:"Occultism"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the study of the mysterious and the supernatural. An occultist is an expert on ancient rituals, hauntings, mysticism, primitive magical beliefs, psychic phenomena, etc. "

  photography:
    name:"photography"
    label:"Photography"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to use a camera competently, use a darkroom (TL5+) or digital imaging software (TL8+), etc., and to produce recognizable and attractive photos. You may roll at default to use a camera, but not to develop film or prints in a darkroom. "

  physician:
    name:"physician"
    label:"Physician"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'H'
    default: "-7."
    description:"This is the ability to aid the sick and the injured, prescribe drugs and care, etc. Make a skill roll to hasten natural recovery from injury (see Recovery, p. 30), and whenever the GM requires a roll to test general medical competence or knowledge."

  pickpocket:
    name:"pickpocket"
    label:"Pickpocket"
    type: 'skill'
    techLevel:false
    stat: 'DX'
    difficulty: 'H'
    default: "-6"
    description:"This is the ability to steal a purse, knife, etc., from someone’s person – or to “plant” something on him. "

  public_speaking:
    name:"public_speaking"
    label:"Public Speaking"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is general talent with the spoken word. A successful skill roll lets you (for instance) give a good political speech, entertain a group around a campfire, incite or calm a riot, or put on a successful “court jester” act."

  research:
    name:"research"
    label:"Research"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to do library and file research. Roll against skill to find a useful piece of data in an appropriate place of research . . . if the information is there to be found. "

  riding:
    name:"riding"
    label:"Riding"
    type: 'skill'
    techLevel:false
    stat: 'DX'
    difficulty: 'A'
    default: "-5"
    subtype: true
    description:"This is the ability to ride a particular kind of mount. Make a skill roll when you first try to mount a riding animal, and again each time something happens to frighten or challenge the creature (e.g., a jump). "

  scrounging:
    name:"scrounging"
    label:"Scrounging"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'E'
    default: "-4"
    description:"This is the ability to find, salvage, or improvise useful items that others can’t locate. Each attempt takes an hour. You do not necessarily steal your booty; you just locate it – somehow – and then acquire it by any means necessary."

  search:
    name:"search"
    label:"Search"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to search people, baggage, and vehicles for items that aren’t in plain sight. The GM rolls once – in secret – per item of interest. For deliberately concealed items, this is a Quick Contest of your Search skill vs. the Holdout or Smuggling skill used to hide the item. If you fail, the GM simply says, “You found nothing.”"

  shadowing:
    name:"shadowing"
    label:"Shadowing"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to follow another person through a crowd without being noticed. Roll a Quick Contest every 10 minutes: your Shadowing vs. the subject’s Vision roll. If you lose, you lost the subject; if you lose by more than 5, you were seen."

  shield:
    name:"shield"
    label:"Shield"
    type: 'skill'
    techLevel:false
    stat: 'DX'
    difficulty: 'E'
    default: "-4"
    description:"This is the ability to use a shield, both to block and to attack. Your Block score with any shield is (skill/2) + 3, rounded down. "

  social_sciences:
    name:"social_sciences"
    label:"Social Sciences"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'H'
    default: "-6"
    subtype: true
    description:"Each “social science” (e.g., Anthropology, Archaeology, Psychology or Sociology) is a separate skill. "

  smuggling:
    name:"smuggling"
    label:"Smuggling"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to conceal items in baggage and vehicles. You can also use it to hide an object in a room or a building. Roll against skill to hide an item from casual inspection. In an active search, the searchers must win a Quick Contest of Search vs. your Smuggling skill to find the item."

  stealth:
    name:"stealth"
    label:"Stealth"
    type: 'skill'
    techLevel:false
    stat: 'DX'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to hide and to move silently. A successful roll lets you conceal yourself practically anywhere, or move so quietly that nobody will hear you, or follow someone without being noticed. If someone is specifically on the alert for intruders, the GM will roll a Quick Contest between your Stealth and the sentinel’s Perception."

  survival:
    name:"survival"
    label:"Survival"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    subtype: true
    description:"This is the ability to “live off the land,” find safe food and water, avoid hazards, build shelter, etc. To live safely in a wilderness situation, you must make a successful Survival roll once per day. Failure inflicts 2d-4 injury on you and anyone in your care. There are many different types of Survival skill, which must be learned independently."

  swimming:
    name:"swimming"
    label:"Swimming"
    type: 'skill'
    techLevel:false
    stat: 'HT'
    difficulty: 'E'
    default: "-4"
    description:"This is the skill of swimming (on purpose or to keep afloat in emergencies) and lifesaving. Roll against the higher of Swimming or HT to avoid fatigue or injury due to aquatic misfortunes. "

  tactics:
    name:"tactics"
    label:"Tactics"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'H'
    default: "-6"
    description:"This is the ability to outguess and outmaneuver the enemy in small-unit or personal combat. When commanding a small unit, roll against Tactics to place your troops correctly for an ambush, know where to post sentries, etc. In personal combat, you may make a Tactics roll before the fight begins if you had any time to prepare. On a success, you start the fight in an advantageous position – e.g., behind cover or on higher ground – as determined by the GM."

  throwing:
    name:"throwing"
    label:"Throwing"
    type: 'skill'
    techLevel:false
    stat: 'DX'
    difficulty: 'A'
    default: "-3."
    description:"This is the ability to throw any small, relatively smooth object that fits in the palm of your hand. Examples include baseballs, hand grenades, and rocks. "

  tracking:
    name:"tracking"
    label:"Tracking"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to follow a man or an animal by its tracks. Make a Tracking roll to pick up the trail, then roll every 15 minutes to avoid losing it, at a modifier ranging from 0 for soft terrain to -6 for city streets. "

  traps:
    name:"traps"
    label:"Traps"
    type: 'skill'
    techLevel:true
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the skill of building and nullifying traps. For the purposes of Traps skill, detection devices are “traps.” Thus, this skill covers everything from covered pits to elaborate electronic security systems!"

  writing:
    name:"writing"
    label:"Writing"
    type: 'skill'
    techLevel:false
    stat: 'IQ'
    difficulty: 'A'
    default: "-5"
    description:"This is the ability to write in a clear or entertaining manner. A successful roll means the work is readable and accurate."

}
