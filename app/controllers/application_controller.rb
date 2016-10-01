##
# One-page app so doing things here we normally would not do
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # thanks to http://www.imdb.com/character/ch0000002/quotes
  QUOTES = ["I use them for smuggling. I never thought I'd be smuggling myself in them. This is ridiculous.", "Marching into a detention area is not what I had in mind.", "Better her than me!", "Look out he's loose!", "I'll get him!", "That's right, yeah. Got some old debts I gotta pay off with this stuff. Even if I didn't, you don't think I'd be fool enough to stick around here, do you? Why don't you come with us? You're pretty good in a fight. We could use you.", "What good is a reward if you ain't around to use it? Besides, attacking that battle station is not my idea of courage. It's more like, suicide.", "[as Luke walks away] Hey, Luke. May the Force be with you.", "What're you looking at? I know what I'm doing.", "Yes, Greedo. I was just going to see your boss. Tell Jabba I've got his money.", "Yeah, but this time I've got the money.", "[stealthily going for his blaster] I don't have it with me. Tell Jabba...", "Even I get boarded sometimes. Do you think I had a choice?", "Over my dead body!", "Yeah, I'll bet you have.", "Sorry about the mess.", "[sounding official] Uh, everything's under control. Situation normal.", "[getting nervous] Uh, we had a slight weapons malfunction, but uh... everything's perfectly all right now. We're fine. We're all fine here now, thank you. How are you?", "Uh, uh... negative, negative. We had a reactor leak here now. Give us a few minutes to lock it down. Large leak, very dangerous.", "Uh...", "Boring conversation anyway. LUKE, WE'RE GONNA HAVE COMPANY!", "Well, you can forget your troubles with those Imperial slugs. I told you I'd outrun 'em.", "Don't everyone thank me at once.", "Hokey religions and ancient weapons are no match for a good blaster at your side, kid.", "I'm captain of the Millennium Falcon. Chewie here tells me you're lookin' for passage to the Alderaan system?", "Fast ship? You've never heard of the Millennium Falcon?", "It's the ship that made the Kessel Run in less than twelve parsecs. I've outrun Imperial starships. Not the local bulk cruisers mind you, I'm talking about the big Corellian ships now. She's fast enough for you old man. What's the cargo?", "[chuckles] What is it? Some kind of local trouble?", "She'll make point five past lightspeed. She may not look like much, but she's got it where it counts, kid. I've made a lot of special modifications myself.", "Wonderful girl. Either I'm going to kill her or I'm beginning to like her.", "I don't what we're gonna do now. Even if I could take off, I could never get past the tractor beam.", "Damn fool, I knew you were going to say that.", "Get in there, you big furry oaf! I don't care what you smell!", "This is *not* gonna work.", "I *did* say so before.", "Look, Your Worshipfulness, let's get one thing straight. I take orders from just one person: me.", "No reward is worth this.", "Nice! Come on.", "Great, kid! Don't get cocky.", "It is for me, sister. Look, I ain't in this for your revolution, and I'm not in it for you, Princess. I expect to be well paid. I'm in it for the money.", "I'm tryin' not to, kid.", "[baiting him] Still, she's got a lot of spirit. I don't know, whaddya think? You think a princess and a guy like me...", "What good's a reward if you ain't around to use it? Besides, attacking that battle station ain't my idea of courage. It's more like... suicide.", "Hey, Luke... may the Force be with you.", "What're you lookin' at? I know what I'm doin'.", "Let him have it. It's not wise to upset a Wookiee.", "That's 'cause droids don't pull people's arms out of their sockets when they lose. Wookiees are known to do that.", "Not a bad bit of rescuing, huh? You know, sometimes I amaze even myself.", "Bring 'em on, I'd prefer a straight fight to all this sneaking around.", "Where did you dig up that old fossil?", "Yeah, great at getting us into trouble.", "And hope they don't have blasters.", "YAHOOO!", "You're all clear, kid, now let's *blow* this thing and go home!", "Easy? You call that easy?", "Not this ship, sister.", "What's so important? What's he carrying?", "One thing's for sure, we're all gonna be a lot thinner.", "What kept you?", "Garbage chute. Really wonderful idea. What an incredible smell you've discovered! Let's get out of here! Get away from there...", "Absolutely, Your Worship. Look, I had everything under control until you led us down here! Now it's not going to take them long to figure out what happened to us.", "It's worse.", "[sarcastically] Maybe you'd like it back in your cell, your highness.", "Good against remotes is one thing. Good against the living, that's something else.", "[indicating Luke] He's the brains, sweetheart!", "Jabba, you're a wonderful human being.", "Great shot, kid, that was one in a million!", "Kid, I've flown from one side of this galaxy to the other, and I've seen a lot of strange stuff, but I've never seen *anything* to make me believe that there's one all-powerful Force controlling everything. 'Cause no mystical energy field controls *my* destiny. It's all a lot of simple tricks and nonsense.", "[interested] Rich?", "What?", "I don't know, I can imagine quite a bit.", "Sure hope the old man got that tractor beam out of commission, or this is gonna be a real short trip. Okay, hit it!", "[after Leia blasts a vent] What the hell are you doing?", "Can't get out that way.", "[sarcastic] Maybe you'd like it back in your cell, your Highness.", "Stay sharp. There's two more coming in. They're gonna try and cut us off.", "Watch your mouth, kid, or you're gonna find yourself floating home! We'll be safe enough once we make the jump to hyperspace. Besides, I know a few maneuvers. We'll lose 'em.", "Here's where the fun begins.", "It'll take a few moments to get the coordinates from the navi-computer.", "Traveling through hyperspace ain't like dusting crops, boy! Without precise calculations we could fly right through a star, or bounce too close to a supernova and that'd end your trip real quick, wouldn't it.", "[slaps Luke's hand away] We're losing a deflector shield. Go strap yourselves in. I'm going to make the jump to light speed.", "Yes, Greedo. As a matter of fact, I was just going to see your boss.", "Tell Jabba that I've got his money.", "Yeah, but this time, I've got the money.", "I don't have it WITH me.", "Tell Jabba...", "Even I get boarded sometimes. Do you think I have a choice.", "Over my dead body.", "Yes, I bet you have.", "Sorry about the mess.", "That's your imagination.", "What?", "Right here, Jabba.", "I've been waiting for you.", "You didn't think I was gonna run, did you?", "Look, Jabba, next time you wanna talk to me, come see me yourself. Don't send one of these twerps.", "Look, Jabba, even I get boarded sometimes.", "Did you think I had a choice? But I got a nice easy charter now; I'll pay you back, plus a little extra. I just need a little more time.", "Fifteen, Jabba, and don't push it.", "Jabba, you're a wonderful human being.", "[stepping on board the Millennium Falcon] Chewie... we're home.", "This map's not complete. It's just a piece. Ever since Luke disappeared, people have been looking for him.", "He was training a new generation of Jedi. One boy, an apprentice, turned against him, destroyed it all. Luke felt responsible. He just walked away from everything.", "A lot of rumors. Stories. People that knew him best think he went looking for the first Jedi temple.", "I used to wonder about that myself. Thought it was a bunch of mumbo-jumbo. A magical power holding together good and evil, the dark side and the light. Crazy thing is... it's true. The Force. The Jedi... All of it... It's all true.", "You might need this.", "I know you do. That's why I'm giving it to you. Take it. You know how to use one of those?", "Little bit more to it than that. You got a lot to learn.", "I've got a bad feeling about this.", "I used to be.", "Escape now, hug later.", "Who had it? Ducain?", "Who stole it from me! Well, you tell him that Han Solo just stole back the Millennium Falcon for good.", "Twelve!", "Fourteen.", "What was your job when you were based here?", "Sanitation? Then how do you know how to disable the shields?", "People are counting on us. The galaxy is counting on us.", "That's not how the Force works!", "You changed your hair.", "No, new jacket.", "Okay. How do we blow it up? There's always a way to do that.", "Ben!", "Kylo Ren: I've been waiting for this day for a long time.", "Take off that mask. You don't need it.", "The face of my son.", "That's what Snoke wants you to believe, but it's not true. My son is alive.", "Snoke is using you for your power. When he gets what he wants, he'll crush you. You know it's true.", "No, it's not. Leave here with me. Come home. We miss you.", "Yes. Anything.", "[softly] Oh, boy.", "Hey, Maz.", "Chewie's working on the Falcon.", "That's why I did it. So you'd miss me.", "My help?", "Yeah. I knew him. I knew Luke.", "I wouldn't be nice to you. Doesn't pay much.", "I'm thinking about it.", "Did you just call me Solo?", "Listen, Big Deal. You got another problem. Women always figure out the truth. Always.", "You hurt Chewie, you're gonna deal with me!", "Same thing I always do. Talk my way out of it.", "Yes, I do. Every time.", "[to Finn] Bring it down. Bring it down.", "Oh, really? You're cold?", "And 'that thing' can understand you, too, so watch it.", "Hey, can I try that?", "I like this thing.", "Where'd you get this ship?", "Jakku? That junkyard?", "[to Chewbacca] Told you we should have double-checked the Western Reaches.", "Hey! Some moof-milker put a compressor on the ignition line.", "Leia.", "Do what?", "I'm trying to be helpful.", "Is there a garbage chute? Trash compactor?", "Watch the thrust. We're going out of here at lightspeed.", "I never ask that question 'till after I've done it.", "You think it was luck that Chewie and I found the Falcon? If we can find it on our scanners, the First Order's not far behind. Wanna get BB-8 to the Resistance? Maz Kanata's our best bet.", "Relax, kid. She's run this watering hole for a thousand years. Maz is a bit of an acquired taste, so let me do the talking. And whatever you do, don't stare.", "Any of it.", "Finn, be careful with those. They're explosives.", "[to BB-8] Move, ball.", "I never made a deal with Kanjuklub!", "Tasu Leech. Good to see you.", "Boys, you're both gonna get what I promised. Have I ever not delivered for you before?", "What was the second time?", "Oh, don't tell me a Rathtar's gotten loose.", "I'm hauling Rathtars. Oh, great. It's the Guavian Death Gang. Must have tracked us from Nantoon.", "They're big and they're dangerous.", "[looking at Chewie] We'll get you there.", "If I told you, you wouldn't like it.", "Their shields have a fractional refresh rate. Keeps anything traveling slower than lightspeed from getting through.", "Listen to me, will you? I know every time you... Every time you look at me you're reminded of him.", "There's nothing more we could have done. There's too much Vader in him.", "We both had to deal with it in our own way. I went back to the only thing I was ever any good at.", "We lost our son. Forever.", "If Luke couldn't reach him, how could I?", "[Rey rushes by him into the Falcon's cockpit] Hey, where are you going?", "I hate that guy.", "Who's scruffy-looking?", "Never tell me the odds.", "Shh.", "Don't get excited.", "Sorry sweetheart. I haven't got time for anything else.", "It's not my fault.", "Afraid I was gonna leave without giving you a goodbye kiss?", "I can arrange that. You could use a good kiss.", "Well Princess, it looks like you managed to keep me here a while longer.", "That's a good story. I think you just can't bear to let a gorgeous guy like me out of your sight.", "Laugh it up, fuzzball.", "[cutting open his dead Tauntaun and shoving Luke inside] This may smell bad, kid, but it'll keep you warm until I get the shelter up... Ugh. And I thought they smelled bad on the *outside*.", "You said you wanted to be around when I made a mistake, well, this could be it, sweetheart.", "Yeah, me too.", "They'd be crazy to follow us, wouldn't they?", "Not entirely stable. I'm glad you're here to tell us these things. Chewie! Take the Professor in back and plug him into the hyperdrive!", "[also sarcastic] It might!", "Hey, Your Worship, I'm only trying to help.", "Sure, Leia.", "I do, I really do. You could be a little nicer, though. Come on, admit it. Sometimes you think I'm all right.", "Scoundrel? Scoundrel? I like the sound of that.", "Stop what?", "My hands are dirty, too. What are you afraid of?", "You're trembling.", "You like me because I'm a scoundrel. There aren't enough scoundrels in your life.", "I'm nice men.", "Ah, repairs. I was hoping you could help me out.", "YOUR ship? Hey, remember you lost her to me, fair and square.", "Why not?", "No time to discuss this as a committee.", "I'm not really interested in your opinion 3PO.", "[as Chewie tries to fight off the imperials and free Han] No! Stop, Chewie, stop! Chewie! Chewie this won't help me! Hey! Save your strength. There'll be another time. The Princess. You have to take care of her. You hear me? Huh?", "I know.", "No, no problem. Why?", "[to C-3PO] Hurry up, goldenrod! Or you're gonna be a permanent resident!", "Oh, yeah? Watch this.", "I think we're in trouble.", "We're in trouble!", "Well, that was a long time ago, I'm sure he's forgotten about that.", "Thank you. Thank you very much.", "Horizontal boosters. Alluvial dampers? Ow! That's not it, bring me the Hydrospanner. I don't know how we're going to get out of this one.", "OW! Chewie!", "How ya feeling kid? You don't look so bad to me. You look strong enough to pull the ears off a gundark.", "That's two you owe me junior.", "I'm sorry too.", "I'm not going to argue with that.", "Loud and clear, kid. What's up?", "There isn't enough life on this ice cube to fill a space cruiser. Sensors are placed. I'm going back.", "Then I'll see you in Hell!", "[after being tortured] I feel terrible.", "This is no cave.", "What's going on... Buddy?", "[C-3PO won't stop complaining] Either shut him up or shut him down!", "We need?", "Well, what about YOU need?", "You probably don't.", "Come on you want me to stay because of the way you feel about me.", "No! That's not it. Come on.", "A-ha! Come on!", "Am I? Then why are you following me afraid I was gonna leave without giving you a goodbye kiss?", "I could arrange that!", "You could use a good kiss!", "Deck officer! Deck officer!", "[when a toolbox falls on his head] OOOOW!", "Boba Fett? Boba Fett? Where?", "[flying across the deserts of Tatooine] I think my eyes are getting better. Instead of a big dark blur, I see a big bright blur.", "You're gonna die here, you know. Convenient.", "Well, look at you! A General, huh?", "Well, don't look at me, pal. I just said you were a fair pilot. I didn't know they were looking for somebody to *lead* this crazy attack.", "Well, who says they didn't? Only I ain't crazy.", "I'm sure Luke wasn't on that thing when it blew.", "You love him,", "don't you?", "All right. I understand. Fine. When he comes back, I won't get in the way.", "Did you tell Luke? Is that who you could tell?", "Hey, Luke, thanks. Thanks for coming after me. I owe you one.", "Wait, I know that laugh...", "It's your imagination, kid. Come on. Let's keep a little optimism here.", "[disguised as an Imperial] It's over, Commander. The rebels have been routed and they're fleeing into the woods. We need reinforcements to continue the pursuit.", "Chewie and I'll take care of this, you stay here.", "Hey, it's me.", "I think my eyes are getting better. Instead of a big dark blur, I see a big light blur.", "You're going to die here, you know. Convenient.", "Well, why don't you use your divine influence and get us out of this?", "Proper?", "I love you.", "Good, I hate long waits.", "Doesn't sound so bad.", "On second thought, let's pass on that, huh?", "Then we'll do it real quiet-like.", "Together again, huh?", "How we doin'?", "That bad, huh?", "Now don't get jittery, Luke. There are a lot of command ships. Keep your distance, though, Chewie, but don't *look* like you're trying to keeping your distance.", "*I* don't know. Fly casual.", "3PO. You tell that slimy piece of worm-ridden filth, he'll get no such pleasure from us.", "Right?", "Who are you?", "Good. How far is it? Ask him.", "We need some fresh supplies too.", "Try and get our weapons back.", "Hurry up, will ya? Haven't got all day!", "I have a really bad feeling about this.", "Just what I always wanted.", "Chewie? Chewie, is that you?", "Ch-Chewie! I can't see, pal. What's going on?", "Luke? Luke's crazy! He can't even take care of himself, much less rescue anybody.", "A Jedi Knight? Jeez, I'm out of it for a little while, everyone gets delusions of grandeur!", "[to Chewie about the Ewoks] Well, short help is better than no help at all.", "[as Lando is being dragged down by Sarlaac] Chewie, give me the gun! Don't move, Lando!", "It's alright, I can see a lot better! Don't move!", "Somehow I got the feeling that didn't work very much"].freeze

  def han
    @quote = quote
    @image = picture

    q_div = "<div class=\"quote\"><%= @quote %></div>\n"
    p_div = "<div class=\"image\"><img src=\"<%= @image %>\"></div>\n"

    render inline: q_div + p_div
  end

  private

  def quote
    QUOTES[Random.rand(QUOTES.size - 1)]
  end

  def picture
    pictures[Random.rand(pictures.size - 1)].keys.first
  end

  def pictures
    @@results ||= fetch_images
  end

  def fetch_images
    puts "fetching images from Bing"
    BingSearch.account_key = ENV['BING_KEY']
    BingSearch.image('Han Solo').map { |p| { p.media_url => p.thumbnail.media_url } }
  end
end
