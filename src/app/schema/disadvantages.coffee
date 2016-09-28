angular.module('gurpscc').constant 'disadvantages', {
  type: 'category'
  activated: true
  bad_sight:
    name:"bad_sight"
    label:"Bad Sight"
    type:"select"
    defaultValue:"bad_sight"
    description:"You have poor vision, giving -6 to Vision rolls and -2 to hit in combat. This disadvantage costs -10 points at TLs where it is correctable (with glasses or contact lenses), -25 points when it is not."
    values:
      bad_sight:
        label:"Bad"
        pointsValue:-10
      very_bad_sight:
        label:"Very Bad"
        pointsValue:-25
  bad_temper:
    name:"bad_temper"
    label:"Bad Temper"
    type:"toggle"
    description:"You are not in full control of your emotions. Make a self-control roll in any stressful situation. If you fail, you lose your temper and must insult, attack, or otherwise act against the cause of the stress."
    pointsValue:-10
  bloodlust:
    name:"bloodlust"
    label:"Bloodlust"
    type:"toggle"
    description:"You want to see your foes dead. In battle, you must go for killing blows, and put in an extra shot to make sure of a downed foe. You must make a self-control roll whenever you need to accept a surrender, evade a sentry, take a prisoner, etc. If you fail, you attempt to kill your foe instead – even if that means breaking the law, compromising stealth, wasting ammo, or violating orders. Out of combat, you never forget that a foe is a foe."
    pointsValue:-10
  code_of_honor:
    name:"code_of_honor"
    label:"Code of Honor"
    type:"select"
    defaultValue:"minor"
    description:" You take pride in a set of principles that you follow at all times. The specifics can vary, but they always involve “honorable” behavior. You will do nearly anything – perhaps even risk death – to avoid the label “dishonorable” (whatever that means to you). The point value of a particular Code of Honor depends on how much trouble it is liable to get you into and how arbitrary and irrational its requirements are. \nMinor: An informal Code that applies only among your peers is worth -5 points. \nModerate: A formal Code that applies only among peers, or an informal one that applies all the time, is worth -10 points. \nMajor: A formal Code that applies all the time, or that requires suicide if broken, is worth -15 points. \nThe GM has the final say! \nA couple of examples:\n Code of Honor (Pirate’s): Always avenge an insult, regardless of the danger; your buddy’s foe is your own; never attack a fellow crewman or buddy except in a fair, open duel. Anything else goes. This is also suitable for brigands, bikers, etc. -5 points. \nCode of Honor (Gentleman’s): Never break your word. Never ignore an insult to yourself, a lady, or your flag; insults may only be wiped out by an apology or a duel (not necessarily to the death!). Never take advantage of an opponent in any way; weapons and circumstances must be equal (except in open war). This only applies between gentlemen. A discourtesy from anyone of Status 0 or less calls for a whipping, not a duel! -10 points."
    values:
      minor:
        pointsValue:-5
        label:"Minor"
      moderate:
        pointsValue:-10
        label:"Moderate"
      major:
        pointsValue:-10
        label:"Major"
  curious:
    name:"curious"
    label:"Curious"
    type:"toggle"
    description:"You are naturally very inquisitive. This is not the curiosity that affects all PCs (“What’s in that cave? Where did the flying saucer come from?”), but the real thing (“What happens if I push this button?”). Make a self-control roll when presented with an interesting item or situation. If you fail, you examine it even if you know it could be dangerous. Good roleplayers won’t try to make this roll very often . . ."
    pointsValue:-5
  delusion:
    name:"delusion"
    label:"Delusion"
    type:"select"
    description:"You believe something that simply is not true. This may cause others to consider you insane. And they may be right! If you suffer from a Delusion, you must roleplay your belief at all times. The point value of the Delusion depends on its nature. \nA Minor Delusion affects your behavior, and anyone around you will soon notice it (and react at -1), but it does not keep you from functioning more-or-less normally. -5 points. \nA Major Delusion strongly affects your behavior, but does not keep you from living a fairly normal life. Others will react to you at -2. -10 points. \nA Severe Delusion affects your behavior so much that it may keep you from functioning in the everyday world. Others react to you at -3, but they are more likely to fear or pity you than to attack. -15 points."
    defaultValue:"minor"
    values:
      minor:
        pointsValue:-5
        label:"Minor"
      major:
        pointsValue:-10
        label:"Major"
      severe:
        pointsValue:-10
        label:"Severe"
  gluttony:
    name:"gluttony"
    label:"Gluttony"
    type:"toggle"
    pointsValue:-5
    description:"You are overly fond of good food and drink. Given the chance, you must always burden yourself with extra provisions. You should never willingly miss a meal. Make a self-control roll when presented with a tempting morsel or good wine that, for some reason, you should resist. If you fail, you partake – regardless of the consequences."
  greed:
    name:"greed"
    label:"Greed"
    type:"toggle"
    pointsValue:-15
    description:"You lust for wealth. Make a self-control roll any time riches are offered – as payment for fair work, gains from adventure, spoils of crime, or just bait. If you fail, you do whatever it takes to get the payoff. Small sums do not tempt you much if you are rich, but if you are poor, you get -5 or more on your self-control roll if a rich prize is in the offing."
  hard_of_hearing:
    name:"hard_of_hearing"
    label:"Hard of Hearing"
    type:"toggle"
    pointsValue:-10
    description:"You are not deaf, but you have some hearing loss. You are at -4 on any Hearing roll and on any skill roll where it is important that you understand someone (if you are the one talking, this disadvantage doesn’t affect you)."
  honesty:
    name:"honesty"
    label:"Honesty"
    type:"toggle"
    pointsValue:-10
    description:"You must obey the law, and do your best to get others to do so as well. In an area with little or no law, you do not “go wild” – you act as though the laws of your own home were in force. You also assume that others are honest unless you know otherwise. This is a disadvantage, because it often limits your options! Make a self-control roll when faced with the “need” to break unreasonable laws; if you fail, you must obey the law, whatever the consequences. If you manage to resist your urges and break the law, make a second self-control roll afterward. If you fail, you must turn yourself in to the authorities!"
  impulsiveness:
    name:"impulsiveness"
    label:"Impulsiveness"
    type:"toggle"
    pointsValue:-10
    description:"You hate talk and debate. You prefer action! When you are alone, you act first and think later. In a group, when your friends want to stop and discuss something, you should put in your two cents’ worth quickly – if at all – and then do something. Roleplay it! Make a self-control roll whenever it would be wise to wait and ponder. If you fail, you must act."
  intolerance:
    name:'intolerance'
    label:"Intolerance"
    type:"select"
    defaultValue:"thorough"
    values:
      thorough:
        label:"Thorough"
        pointsValue:-10
      specific_minor:
        label:"Specific, Minor"
        pointsValue:-1
      specific_moderate:
        label:"Specific, Moderate"
        pointsValue:-2
      specific_major:
        label:"Specific Major"
        pointsValue:-5
    description:"You dislike and distrust some (or all) people who are different from you. You may be prejudiced on the basis of class, ethnicity, nationality, religion, sex, or species. Victims of your Intolerance will react to you at -1 to -5 (GM’s decision). Point value depends on the scope of your Intolerance. \nIf you are thoroughly intolerant, you react at -3 toward anyone not of your own class, ethnicity, nationality, religion, or species (pick one). Total Intolerance of this kind is worth -10 points. \nIntolerance directed at only one specific class, ethnicity, nationality, religion, sex, or species is worth from -5 points for a commonly encountered victim to -1 point (a nasty quirk) for a rare victim."
  jealousy:
    name:"jealousy"
    label:"Jealousy"
    type:"toggle"
    pointsValue:-10
    description:"You react poorly toward those who seem smarter, more attractive, or better off than you! You resist any plan proposed by a “rival,” and hate it if someone else is in the limelight. If an NPC is jealous, the GM will apply a -2 to -4 reaction penalty toward the victim(s) of his jealousy."
  lecherousness:
    name:"lecherousness"
    label:"Lecherousness"
    type:"toggle"
    pointsValue:-15
    description:"You have an unusually strong desire for romance. Make a self-control roll whenever in more than the briefest contact with an appealing member of the sex you find attractive – at -5 if this person is Handsome/Beautiful, or at -10 if Very Handsome/Very Beautiful. If you fail, you must make a “pass,” using whatever wiles and skills you can bring to bear."
  obsession:
    name:"obesssion"
    label:"Obsession"
    type:"select"
    defaultValue:"short_term"
    values:
      short_term:
        label:"Short-term"
        pointsValue:-5
      long_term:
        label:"Long-term"
        pointsValue:-10
    description:"Your entire life revolves around a single goal, an overpowering fixation that motivates all of your actions. Make a self-control roll whenever it would be wise to deviate from your goal. If you fail, you continue to pursue your Obsession, regardless of the consequences. Point cost depends on the time needed to realize your goal. \nA short-term goal (e.g., assassinating someone) is worth -5 points, while a long-term goal (e.g., becoming President) is worth -10 points."
  overconfidence:
    name:"overconfidence"
    label:"Overconfidence"
    type:"toggle"
    pointsValue:-5
    description:"You believe that you are far more powerful, intelligent, or competent than you really are. You may be proud and boastful or just quietly determined, but you must roleplay this trait. You must make a self-control roll any time the GM feels you show an unreasonable degree of caution. If you fail, you must go ahead as though you were able to handle the situation! Caution is not an option. You receive +2 on all reaction rolls from young or naive individuals (who believe you are as good as you say you are), but -2 on reactions from experienced NPCs."
  pacifism:
    name:"pacifism"
    label:"Pacifism"
    type:"select"
    defaultValue:"reluctant_killer"
    values:
      reluctant_killer:
        label:"Reluctant killer"
        pointsValue:-5
      cannot_harm_innocents:
        label:"Cannot harm innocents"
        pointsValue:-10
    description:"You are opposed to violence. This can take two forms. \nReluctant Killer: You get -4 to hit a person (not a monster, machine, etc.) with a deadly attack, or -2 if you can’t see his face. If you kill someone, roll 3d – you’re morose and useless for that many days. -5 points. \nCannot Harm Innocents: You may fight – you may even start fights – but you may only use deadly force on a foe that is attempting to do you serious harm. -10 points."
  phobia:
    name:"phobia"
    label:"Phobia"
    type:"select"
    defaultValue:"mild"
    values:
      mild:
        label:"Mild"
        pointsValue:-5
      moderate:
        label:"Moderate"
        pointsValue:-10
      major:
        label:"Major"
        pointsValue:-15
    description:"A “phobia” is a fear of a specific item, creature, or circumstance. The more common an object or situation, the greater the point value of a fear of it. If you have a phobia, you may temporarily master it by making a successful self-control roll . . . but the fear persists. Even if you master a phobia, you will be at -2 to all IQ, DX, and skill rolls while the cause of your fear is present, and you must roll again every 10 minutes to see if the fear overcomes you. If you fail the self-control roll, you will cringe, flee, panic, or otherwise react in a manner that precludes sensible action. Even the mere threat of the feared object requires a self-control roll at +4. If your enemies actually inflict the feared object on you, you must make an unmodified selfcontrol roll. Some common phobias: \nBlood (Hemophobia): -10 points. \nDarkness (Scotophobia): -15 points. \nHeights (Acrophobia): -10 points. \nNumber 13 (Triskaidekaphobia): Roll at -5 if Friday the 13th is involved! -5 points. \nSpiders (Arachnophobia): -5 points."
  sense_of_duty:
    name:"sense_of_duty"
    label:"Sense of Duty"
    type:"select"
    defaultValue:"individual"
    values:
      individual:
        label:"Individual"
        pointsValue:-2
      small_group:
        label:"Small group"
        pointsValue:-5
      large_group:
        label:"Large group"
        pointsValue:-10
      entire_race:
        label:"Entire race"
        pointsValue:-15
      every_living_being:
        label:"Every living being"
        pointsValue:-20
    description:"You feel a strong sense of commitment toward a particular class of people. You will never betray them, abandon them when they’re in trouble, or let them suffer or go hungry if you can help. The GM will assign a point value to your Sense of Duty based on the size of the group you feel compelled to aid: \nIndividual (the President, your wingman, etc.): -2 points. \nSmall Group (e.g., your close friends, adventuring companions, or squad): -5 points. \nLarge Group (e.g., a nation or religion, or everyone you know personally): -10 points. \nEntire Race (all humanity, all Elves, etc.): -15 points. \nEvery Living Being: -20 points."
  truthfulness:
    name:"truthfulness"
    label:"Truthfulness"
    type:"toggle"
    pointsValue:-5
    description:"You hate to tell a lie – or you are just very bad at it. Make a self-control roll whenever you must keep silent about an uncomfortable truth (lying by omission). Roll at -5 if you actually have to tell a falsehood! If you fail, you blurt out the truth, or stumble so much that your lie is obvious. You have a permanent -5 to Fast-Talk skill, and your Acting skill is at -5 when your purpose is to deceive."
  unluckiness:
    name:"unluckiness"
    label:"Unluckiness"
    type:"toggle"
    pointsValue:-10
    description:"You have rotten luck. Things go wrong for you – and usually at the worst possible time. Once per play session, the GM will arbitrarily and maliciously make something go wrong for you. You miss a vital die roll, or the enemy (against all odds) shows up at the worst possible time. If the plot of the adventure calls for something bad to happen to someone, it’s you. The GM may not kill you outright with “bad luck,” but anything less than that is fine."
  vow:
    name:"vow"
    label:"Vow"
    type:"select"
    defaultValue:"minor"
    values:
      minor:
        label:"Minor"
        pointsValue:-5
      major:
        label:"Major"
        pointsValue:-10
      great:
        label:"Great"
        pointsValue:-15
    description: "You have sworn an oath to do (or not to do) something. Whatever the oath, you take it seriously; if you didn’t, it would not be a disadvantage. This trait is especially appropriate for knights, holy men, and fanatics. The point value of a Vow should be directly related to the inconvenience it causes you. The GM is the final judge. Some examples: \nMinor Vow: Silence during daylight hours; vegetarianism; chastity (yes, for game purposes, this is minor). -5 points. \nMajor Vow: Use no edged weapons; keep silence at all times; never sleep indoors; own no more than your horse can carry. -10 points. \nGreat Vow: Never refuse any request for aid; always fight with the wrong hand; hunt a given foe until you destroy him; challenge every knight you meet to combat. -15 points."
}
