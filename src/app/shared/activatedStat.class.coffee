class @ActivatedStat
  constructor: (@character, @description, @stat) ->
    @path = @description.path
    @initChangeFields()
    @stat.onChange () => @reapply()
    @reapply()

  initChangeFields: () =>
    if (change = @character.getChangeValue(@path))
      @note = change.note

  activate: () ->
    @character.applyChange @changeDescriptor() unless @isActive()

  deactivate: () ->
    @character.removeChange @path unless !@isActive()
    delete this['note']
    @stat.reset()

  reapply: () ->
    @character.applyChange @changeDescriptor() if @isActive()

  isActive: () ->
    @character.isActive @path

  changeDescriptor: () -> {
    path: @path
    description: @description
    value: @stat.value
    contribution: @stat.contribution()
    note: @note
  }

  @create: (character, description) ->
    stat = BaseStat.create character, description
    new ActivatedStat character, description, stat
