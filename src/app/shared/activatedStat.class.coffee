class @ActivatedStat
  constructor: (@character, @description, @stat) ->
    @path = @description.path
    @initChangeFields()
    @stat.onChange () => @reapply()

  initChangeFields: () =>
    if (change = @character.getChangeValue(@path))
      @note = change.note
      @subtype = change.subtype

  activate: () ->
    @character.applyChange @changeDescriptor() unless @isActive()

  deactivate: () ->
    @character.removeChange @path unless !@isActive()
    delete this['subtype']
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
    subtype: @subtype
    note: @note
  }
