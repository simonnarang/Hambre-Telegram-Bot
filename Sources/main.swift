
/*
 ©Copyright NaWang Labs All Right Reservered by Simon Narang and Will Wang
 */

//Import Important Dependencies

import Foundation

import TelegramBot

import SwiftyJSON


//Telgram-API Setup

var bot = TelegramBot(token: "205431240:AAH12fgfbpCa0aqPy-wYwn9F11H-HMX2HX0")

var router = Router(bot: bot)


//JSON Parsing Setup

var JAYSON = [(String, String)]()

//Router Functions
router["⬅"] = { context in
    
    //Send Keyboard
    var markup = ReplyKeyboardMarkup()
    
    context.respondAsync("Here are possible functions", ["reply_markup": markup])
    
    var button1 = KeyboardButton()
    
    button1.text = "Start"
    
    var button2 = KeyboardButton()
    
    button2.text = "Greet"
    
    var button3 = KeyboardButton()
    
    button3.text = "Settings"
    
    var button4 = KeyboardButton()
    
    button4.text = "About"
    
    var button5 = KeyboardButton()
    
    button5.text = "Wait"
    
    var button6 = KeyboardButton()
    
    button6.text = "Find"
    
    //Keyboard Layout
    markup.keyboard = [ [ button1, button2, button3 ],
                        [ button4, button5, button6 ],
    ]
    
    context.respondAsync("Try them!", ["reply_markup": markup])
    
    return true
}

router["Help"] = { context in
    
    //Send Keyboard
    var markup = ReplyKeyboardMarkup()
    
    context.respondAsync("Here are possible functions", ["reply_markup": markup])
    
    var button1 = KeyboardButton()
    
    button1.text = "Start"
    
    var button2 = KeyboardButton()
    
    button2.text = "Greet"
    
    var button3 = KeyboardButton()
    
    button3.text = "Settings"
    
    var button4 = KeyboardButton()
    
    button4.text = "About"
    
    var button5 = KeyboardButton()
    
    button5.text = "Wait"
    
    var button6 = KeyboardButton()
    
    button6.text = "Find"
    
    markup.keyboard = [ [ button1, button2, button3 ],
                        [ button4, button5, button6 ],
                        
    ]
    
    context.respondAsync("Try them!", ["reply_markup": markup])
    return true
}

router["Greet"] = { context in
    guard var from = context.message?.from else { return false }
    context.respondAsync("Hello, \(from.first_name)!")
    return true
    
}

router["Start"] = { context in
    
    guard var from = context.message?.from else { return false }
    context.respondAsync("Hello there, \(from.first_name)! Nice to meet you! I would recommend typing in 'Help' so you can see my functions")
    
    return true
}

router["Wait"] = { context in
    
    var markup = ReplyKeyboardMarkup()
    
    context.respondAsync("Bored?", ["reply_markup": markup])
    
    var button1 = KeyboardButton()
    
    button1.text = "RPG"
    
    var button2 = KeyboardButton()
    
    button2.text = "MoretoCome"
    
    var button3 = KeyboardButton()
    
    button3.text = "⬅"
    
    markup.keyboard = [[button1, button2],
                       [button3]
    ]
    
    context.respondAsync("Let's waste some time!", ["reply_markup": markup])
    
    return true
}
router["RPG"] = { context in
    var markup = ReplyKeyboardMarkup()
    context.respondAsync("You walk into a room and find a broken table.", ["reply_markup": markup])
    var button1 = KeyboardButton()
    button1.text = "ExploreTheRoom"
    var button2 = KeyboardButton()
    button2.text = "LeaveTheRoom"
    var button3 = KeyboardButton()
    button3.text = "⬅"
    
    markup.keyboard = [[button1, button2],
                       [button3]
    ]
    
    context.respondAsync("Here are your options", ["reply_markup": markup])
    
    return true
}
router["ExploreTheRoom"] = { context in
    var markup = ReplyKeyboardMarkup()
    context.respondAsync("You have explored the room and have found a knife with a label: 'GeigelCorp Sharpeners'", ["reply_markup": markup])
    var button1 = KeyboardButton()
    button1.text = "KeepLooking"
    var button2 = KeyboardButton()
    button2.text = "GeigelCorp"
    var button3 = KeyboardButton()
    button3.text = "⬅"
    
    markup.keyboard = [[button1, button2],
                       [button3]
    ]
    
    context.respondAsync("Here are your options", ["reply_markup": markup])
    
    return true
}
router["KeepLooking"] = { context in
    var markup = ReplyKeyboardMarkup()
    context.respondAsync("You are looking around and there is nothing else except for cobwebs", ["reply_markup": markup])
    var button1 = KeyboardButton()
    button1.text = "GeigelCorp"
    var button2 = KeyboardButton()
    button2.text = "GeigelCorp"
    var button3 = KeyboardButton()
    button3.text = "⬅"
    
    markup.keyboard = [[button1, button2],
                       [button3]
    ]
    
    context.respondAsync("Here are your options", ["reply_markup": markup])
    
    return true
}
router["GeigelCorp"] = { context in
    var markup = ReplyKeyboardMarkup()
    context.respondAsync("You are walking towards GeigelCorp, a Trillion Dollar Business and a rat runs by.", ["reply_markup": markup])
    var button1 = KeyboardButton()
    button1.text = "StabTheRat"
    var button2 = KeyboardButton()
    button2.text = "ContinueToGeigelCorp"
    var button3 = KeyboardButton()
    button3.text = "⬅"
    
    markup.keyboard = [[button1, button2],
                       [button3]
    ]
    
    context.respondAsync("Here are your options", ["reply_markup": markup])
    
    return true
}
router["StabTheRat"] = { context in
    var markup = ReplyKeyboardMarkup()
    context.respondAsync("You have killed an innocent rat. Shame.", ["reply_markup": markup])
    var button1 = KeyboardButton()
    button1.text = "SaySorry"
    var button2 = KeyboardButton()
    button2.text = "ContinueToGeigelCorp"
    var button3 = KeyboardButton()
    button3.text = "⬅"
    
    markup.keyboard = [[button1, button2],
                       [button3]
    ]
    
    context.respondAsync("Here are your options", ["reply_markup": markup])
    
    return true
}
router["SaySorry"] = { context in
    var markup = ReplyKeyboardMarkup()
    context.respondAsync("You hear a voice: 'That's fine, I never liked rats anyways'", ["reply_markup": markup])
    var button1 = KeyboardButton()
    button1.text = "TurnAround"
    var button2 = KeyboardButton()
    button2.text = "ContinueToGeigelCorp"
    var button3 = KeyboardButton()
    button3.text = "⬅"
    
    markup.keyboard = [[button1, button2],
                       [button3]
    ]
    
    context.respondAsync("Here are your options", ["reply_markup": markup])
    
    return true
}
router["TurnAround"] = { context in
    var markup = ReplyKeyboardMarkup()
    context.respondAsync("Behind you is... the one and only... Mr. Nicholas Geigel", ["reply_markup": markup])
    var button1 = KeyboardButton()
    button1.text = "TellHimAboutTheKnife"
    var button2 = KeyboardButton()
    button2.text = "⬅"
    markup.keyboard = [[button1, button2],
    ]
    
    context.respondAsync("Here are your options", ["reply_markup": markup])
    
    return true
}
router["TellHimAboutTheKnife"] = { context in
    var markup = ReplyKeyboardMarkup()
    context.respondAsync("He says: 'Nobody gives a **** about a knife!'", ["reply_markup": markup])
    var button1 = KeyboardButton()
    button1.text = "GameOver"
    var button2 = KeyboardButton()
    button2.text = "⬅"
    markup.keyboard = [[button1, button2],
    ]
    
    context.respondAsync("Here are your options", ["reply_markup": markup])
    
    return true
}
router["ContinueToGeigelCorp"] = { context in
    var markup = ReplyKeyboardMarkup()
    context.respondAsync("Security Guards have caught you. Before you even make it to the door, you already bleed out from bullet wounds", ["reply_markup": markup])
    var button1 = KeyboardButton()
    button1.text = "GameOver"
    var button2 = KeyboardButton()
    button2.text = "GameOver"
    var button3 = KeyboardButton()
    button3.text = "⬅"
    
    markup.keyboard = [[button1, button2],
                       [button3]
    ]
    
    context.respondAsync("Here are your options", ["reply_markup": markup])
    
    return true
}
router["GameOver"] = { context in
    var markup = ReplyKeyboardMarkup()
    context.respondAsync("Was that fun?", ["reply_markup": markup])
    var button1 = KeyboardButton()
    button1.text = "PlayAgain"

    var button3 = KeyboardButton()
    button3.text = "⬅"
    
    markup.keyboard = [[button1,button3]
    ]
    
    context.respondAsync("Here are your options", ["reply_markup": markup])
    
    return true
}
router["PlayAgain"] = { context in
    var markup = ReplyKeyboardMarkup()
    context.respondAsync("You walk into a room and find a broken table.", ["reply_markup": markup])
    var button1 = KeyboardButton()
    button1.text = "ExploreTheRoom"
    var button2 = KeyboardButton()
    button2.text = "LeaveTheRoom"
    var button3 = KeyboardButton()
    button3.text = "⬅"
    
    markup.keyboard = [[button1, button2],
                       [button3]
    ]
    
    context.respondAsync("Here are your options", ["reply_markup": markup])
    
    return true
    return true
}
router["LeaveTheRoom"] = { context in
    var markup = ReplyKeyboardMarkup()
    context.respondAsync("You have left the room. You feel the ground shaking", ["reply_markup": markup])
    var button1 = KeyboardButton()
    button1.text = "Stay"
    var button2 = KeyboardButton()
    button2.text = "ReturnToTheRoom"
    var button3 = KeyboardButton()
    button3.text = "⬅"
    
    markup.keyboard = [[button1, button2],
                       [button3]
    ]
    
    context.respondAsync("Here are your options", ["reply_markup": markup])
    
    return true
}
router["About"] = { context in
    context.respondAsync("I am designed by NaWang Labs to help you find scrumptious meals around you!")
    return true
}

router["Settings"] = { context in
    
    var markup = ReplyKeyboardMarkup()
    
    context.respondAsync("Settings", ["reply_markup": markup])
    
    var button1 = KeyboardButton()
    
    button1.text = "Send Contact"
    
    button1.request_contact = true
    
    var button2 = KeyboardButton()
    
    button2.text = "Send Location"
    
    button2.request_location = true
    
    var button3 = KeyboardButton()
    
    button3.text = "⬅"
    
    markup.keyboard = [ [ button1, button2 ],
                        [ button3]
    ]
    
    context.respondAsync("Here are the options", ["reply_markup": markup])
    
    return true
}

router["Breakfast"] = { context in
    
    context.respondAsync("Looking for restaurants...")
    
    return true
}

router["Brunch"] = { context in
    context.respondAsync("Looking for restaurants...")
    
    return true
}

router["Lunch"] = { context in
    context.respondAsync("Looking for restaurants...")
    return true
}

router["Linner"] = { context in
    context.respondAsync("Looking for restaurants...")
    return true
}

router["Dinner"] = { context in
    context.respondAsync("Looking for restaurants...")
    return true
}

router["Night"] = { context in
    context.respondAsync("Looking for restaurants...")
    return true
}

router["Find"] = { context in
    
    //setup buttons to select meal
    var markup = ReplyKeyboardMarkup()
    
    context.respondAsync("Looking for restaurants...", ["reply_markup": markup])
    
    var button1 = KeyboardButton()
    
    button1.text = "Breakfast"
    
    var button2 = KeyboardButton()
    
    button2.text = "Brunch"
    
    var button3 = KeyboardButton()
    
    button3.text = "Lunch"
    
    var button4 = KeyboardButton()
    
    button4.text = "Linner"
    
    var button5 = KeyboardButton()
    
    button5.text = "Dinner"
    
    var button6 = KeyboardButton()
    
    button6.text = "Night"
    
    var button10 = KeyboardButton()
    
    button10.text = "⬅"
    
    markup.keyboard = [ [ button1, button2, button3 ],
                        [ button4, button5, button6 ],
                        [ button10]
    ]
    
    context.respondAsync("Here are the options", ["reply_markup": markup])
    
    var baseUrl = "https://hambre-herro.rhcloud.com/"
    var urlComponents = URLComponents(string: baseUrl)
    var finalUrl = urlComponents?.url
    var request = URLRequest(url: finalUrl!)
    request.httpMethod = "GET"
    let task = URLSession.shared().dataTask(with: request)
    { data, response, error in
        if error != nil
        {
            context.respondAsync("My tongue tells me that trouble is on the way")
            print("error in the math")
            print(error)
        }
        else
        {
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            context.respondAsync("Here are your tastebud tinglers: \n\(responseString)")
            print("no error")
        }
    }
    
    task.resume()
    
    return true
    
}

//Print to show that console is working
print("Ready to accept commands")

while var update = bot.nextUpdateSync() {
    
    print("--- update: \(update.debugDescription)")
    
    try router.process(update: update)
    
}

//Say if bot is failing
fatalError("Server stopped due to error: \(bot.lastError)")
