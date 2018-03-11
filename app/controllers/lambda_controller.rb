class LambdaController < ApplicationController

  def index
    render json: ask_sample
  end 

  def ask_sample
    output = { "version": "1.0",
               "sessionAttributes": { "testattr": "this is sample"},
               "response": { "type": "PlainText",
                             "text": "sample"
    },
    "shouldEndSession": false,
    "directives": [
      {
        "type": "AudioPlayer.Play",
        "playBehavior": "REPLACE_ALL",
        "audioItem": {
          "stream": {
            "token": "url",
            "url": "https://s3-ap-northeast-1.amazonaws.com/utaite-random-sing/SekiA/katsusika.mp3",
            "offsetInMilliseconds": 0
          }
        }
      }
    ]
    }
  end 
end
