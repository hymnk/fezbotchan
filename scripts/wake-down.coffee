module.exports = (robot) ->

  ## 起きた時、slack-adapterがつながるのを待って通知
  cid = setInterval ->
    return if typeof robot?.send isnt 'function'
    robot.send {room: "botchansandbox"}, "ガバリ"
    clearInterval cid
  , 1000

  ## 寝た時、通知してからexitする
  on_sigterm = ->
    robot.send {room: "botchansandbox"}, 'スヤリ'
    setTimeout process.exit, 1000

  if process._events.SIGTERM?
    process._events.SIGTERM = on_sigterm
  else
    process.on 'SIGTERM', on_sigterm
rts = (robot) ->

  ## 起きた時、slack-adapterがつながるのを待って通知
  cid = setInterval ->
    return if typeof robot?.send isnt 'function'
    robot.send {room: "botchansandbox"}, "ガバリ"
    clearInterval cid
  , 1000

  ## 寝た時、通知してからexitする
  on_sigterm = ->
    robot.send {room: "botchansandbox"}, 'スヤリ'
    setTimeout process.exit, 1000

  if process._events.SIGTERM?
    process._events.SIGTERM = on_sigterm
  else
    process.on 'SIGTERM', on_sigterm
