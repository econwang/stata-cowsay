program define cowsay

version 12.1

syntax anything(everything), [animal(string asis) as(string)]

* gettoken arg1 : anything
local arg1 `anything'

local arg1_len = strlen(`"`arg1'"')
local arg1_len = `arg1_len'+2

* Error handling: if animal not specified, set it to cow
if ( `"`animal'"' == "" ) local animal cow
if ("`as'" == "") local as text

local animals cow          ///
              pig          ///
              benny        ///
              clippy       ///
              hypnotoad    ///
              egret        ///
              chicken      ///
              poop         ///
              bigcat       ///
              ant          ///
              pumpkin      ///
              ghost        ///
              spider       ///
              rabbit       ///
              smallpig     ///
              snowman      ///
              frog         ///
              fish         ///
              signbunny    ///
              facecat      ///
              behindcat    ///
              stretchycat  ///
              anxiouscat   ///
              longtailcat  ///
              cat          ///
              trilobite    ///
              shark        ///
              buffalo      ///
              grumpycat    ///
              smallcat     ///
              yoda         ///
              mushroom     ///
              endlesshorse ///
              bat          ///
              bat2         ///
              turkey       ///
              monkey       ///
              daemon       ///
              duckling     ///
              duck         ///
              owl

local aslist text error result input
if ( ~`:list as in aslist' ) {
    di as error "Mis-specified display style"
    error 9
}

* Error handling: if animal() specified, make sure that it is a valid choice
if ( ~`:list animal in animals' ) {
    di as error `"CRITICAL COWSAY ERROR: animal chosen (`animal') is not in the menagerie."'
    di as error `"Currently supported animals:"'
    foreach animal of local animals {
        di as error `"    `animal'"'
    }
    di as error `"Defaulting to cow."'
    local animal cow
}

if ( `"`animal'"' == "hypnotoad" ) {
    local arg1     = "All Glory to the HYPNO TOAD!"
    local arg1_len = strlen(`"`arg1'"')
    local arg1_len = `arg1_len'+2
}

* Call animal program
di as `as' `"  {hline `arg1_len'}"'
di as `as' `" < `arg1' >"'
di as `as' `"  {hline `arg1_len'}"'
cowsay_`animal', as(`as')

end

program cowsay_cow
    syntax , as(string)
    di as `as' "         \   ^__^"
    di as `as' "          \  (oo)\_______"
    di as `as' "             (__)\       )\/\"
    di as `as' "                 ||----w |"
    di as `as' "                 ||     ||"
end

program cowsay_pig
    syntax , as(string)
    di as `as' "    \                                    _"
    di as `as' "     \          _   _    __....._     _ '-)-'"
    di as `as' "      \        |_\_/ | .'        '.  '-)-'"
    di as `as' "       \      /      \/            \-'`"
    di as `as' "        \   _| 6 6    `             |"
    di as `as' "         \ /..\                     |"
    di as `as' "           \__/_,          |       /"
    di as `as' "             '--.___   \    \     \"
    di as `as' "                 / /  /`----`;-.   >"
    di as `as' "                / /  /       / /  /"
    di as `as' "               /_/__/       /_/__/"
end

program cowsay_benny
    syntax , as(string)
    di as `as' "    \"
    di as `as' "     \              .-'||'-."
    di as `as' "      \           .'   ||   '."
    di as `as' "       \         /   __||__   \"
    di as `as' "                 | / -    - \ |"
    di as `as' "                 | | 6    6 | |"
    di as `as' "                 \/\____7___/\/"
    di as `as' "         .--------:\:I:II:I:/;--------."
    di as `as' "        /          \ :I::I: /          \"
    di as `as' "       |            '------'            |"
    di as `as' "       |             \____/             |"
    di as `as' "       |      ,    __     ___    ,      |"
    di as `as' "       |======|   /  |   / _ \   |======|"
    di as `as' "       |======|   ^| |  | | | |  |======|"
    di as `as' "       |~~~~~|     | |  | |_| |   |~~~~~|"
    di as `as' "       |     |\   [___]  \___/   /|     |"
    di as `as' "        \    \|                  |/    /"
    di as `as' "         \    \  _ _.-=''=-._ _  /    /'"
    di as `as' "          '\   ' _)\\-++++-//(_ '   /'"
    di as `as' "            ;   (__||      ||__)   ;"
    di as `as' "             ;   ___\      /___   ;"
    di as `as' "              '. ---/-=..=-\--- .'"
    di as `as' "                `''          '' "
end

* ---------------------------------------------------------------------
* Animals from https://github.com/sckott/cowsay/blob/master/R/animals.r

program cowsay_clippy
    syntax , as(string)
    di as `as' "    \   "
    di as `as' "     \"
    di as `as' "   __"
    di as `as' "   / \"
    di as `as' "   | |"
    di as `as' "   @ @"
    di as `as' "  || ||"
    di as `as' "  || ||"
    di as `as' "  |\_/|"
    di as `as' "  \___/ GB"
end

* http://chris.com/ascii/index.php?art=television/futurama
program cowsay_hypnotoad
    syntax , as(string)
    local tick = "`"
    di as `as' `"    \          ,'\`\`.._   ,'\`\`."'
    di as `as' `"     \        :,--._:)\,:,._,.:"'
    di as `as' `"      \       :\`--,''   :\`...';\"'
    di as `as' `"               \`,'       \`---'  \`."'
    di as `as' `"               /                 :"'
    di as `as' `"              /                   \"'
    di as `as' `"            ,'                     :\.___,-."'
    di as `as' `"           \`...,---'\`\`\`\`\`\`-..._    |:       \"'
    di as `as' `"             (                 )   ;:    )   \  _,-."'
    di as `as' `"              \`.              (   //          \`'    \"'
    di as `as' `"               :               \`.//  )      )     , ;"'
    di as `as' `"             ,-|\`.            _,'/       )    ) ,' ,'"'
    di as `as' `"            (  :\`.\`-..____..=:.-':     .     _,' ,'"'
    di as `as' `"             \`,'\ \`\`--....-)='    \`._,  \  ,') _ '\`\`._"'
    di as `as' `"          _.-/ _ \`.       (_)      /     )' ; / \ \\`macval(tick)'-.'"'
    di as `as' `"         \`--(   \`-:\`.     \`' ___..'  _,-'   |/   \`.)"'
    di as `as' `"             \`-. \`.\`.\`\`-----\`\`--,  .'"'
    di as `as' `"               |/\`.\\`macval(tick)''        ,','); SSt"'
    di as `as' `"                   \`         (/  (/"'
end

* https://twitter.com/BoingBoing/status/465170473194512384
program cowsay_shortcat
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"    .ﾊ,,ﾊ"'
    di as `as' `"    ( ﾟωﾟ)"'
    di as `as' `"    |つ  つ"'
    di as `as' `"    U " U"'
    di as `as' `"        [BoingBoing]"'
end

* egret by Joan Stark from http://www.chris.com/ascii/joan/www.geocities.com/SoHo/7373/birds.html#egret
program cowsay_egret
    syntax , as(string)
    local tick = "`"
    di as `as' `"    \   "'
    di as `as' `"     \  "'
    di as `as' `"      \"'
    di as `as' `"       \   _,"'
    di as `as' `"      -==<' \` "'
    di as `as' `"          ) /"'
    di as `as' `"         / (_."'
    di as `as' `"        |  ,-,\\`macval(tick)'\"'
    di as `as' `"         \\   \ \"'
    di as `as' `"          \`\,  \ \"'
    di as `as' `"           ||\  \\`macval(tick)'|,"'
    di as `as' `" jgs      _|| \`=\`-'"'
    di as `as' `"         ~~\`~\`"'
end

program cowsay_chicken
    syntax , as(string)
    di as `as' "    \   "
    di as `as' "     \"
    di as `as' "         _"
    di as `as' "       _/ }"
    di as `as' "      \`>' \"
    di as `as' "      \`|   \"
    di as `as' "       |   /'-.     .-."
    di as `as' "        \'     ';\`--' .'"
    di as `as' "         \'.    \`'-./"
    di as `as' "          '.\`-..-;\`"
    di as `as' "            \`;-..'"
    di as `as' "            _| _|"
    di as `as' "            /\` /\` "
end

program cowsay_poop
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"     (   )"'
    di as `as' `"  (   ) ("'
    di as `as' `"   ) _   )"'
    di as `as' `"    ( \_"'
    di as `as' `"  _(_\ \)__"'
    di as `as' `" (____\ ___))"'
end

program cowsay_bigcat
    syntax , as(string)
    local tick = "`"
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"                \\`macval(tick)'*-."'
    di as `as' `"                 )  _\`-."'
    di as `as' `"                .  : \`. ."'
    di as `as' `"                : _   '  \"'
    di as `as' `"                ; *\` _.   \`*-._"'
    di as `as' `"                \`-.-'          \`-."'
    di as `as' `"                  ;       \`       \`."'
    di as `as' `"                  :.       .       \"'
    di as `as' `"                  .\  .   :   .-'   ."'
    di as `as' `"                  '  \`+.;  ;  '      :"'
    di as `as' `"                  :  '  |    ;       ;-."'
    di as `as' `"                  ; '   : :\`-:     _.\`* ;"'
    di as `as' `"               .*' /  .*' ; .*\`- +'  \`*'"'
    di as `as' `"     [bug]     \`*-*   \`*-*  \`*-*'"'
end

program cowsay_ant
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"       '\__"'
    di as `as' `"      (o )     ___"'
    di as `as' `"      <>(_)(_)(___)"'
    di as `as' `"        < < > >"'
    di as `as' `"        ' ' \` \`  "'
end

program cowsay_pumpkin
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"                  ___"'
    di as `as' `"               ___)__|_"'
    di as `as' `"          .-*'          '*-,"'
    di as `as' `"         /      /|   |\     \"'
    di as `as' `"        ;      /_|   |_\     ;"'
    di as `as' `"        ;   |\           /|  ;"'
    di as `as' `"        ;   | ''--...--'' |  ;"'
    di as `as' `"         \  ''---.....--''  /"'
    di as `as' `"          ''*-.,_______,.-*'  "'
end

program cowsay_ghost
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"     .-."'
    di as `as' `"    (o o)"'
    di as `as' `"    | O \"'
    di as `as' `"     \   \"'
    di as `as' `"      \`~~~'"'
end

program cowsay_spider
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"              |"'
    di as `as' `"              |"'
    di as `as' `"              |"'
    di as `as' `"             __"'
    di as `as' `"          | /  \ |"'
    di as `as' `"         \_\\  //_/"'
    di as `as' `"          .'/()\'."'
    di as `as' `"           \\  //  "'
end

program cowsay_rabbit
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"      ( )_( )"'
    di as `as' `"      (='.'=)"'
    di as `as' `"      (^)_(^) "'
end

program cowsay_smallpig
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"       _//| .-~~~-."'
    di as `as' `"     _/oo  }       }-@"'
    di as `as' `"    ('')_  }       |"'
    di as `as' `"     \`--'| { }--{  }"'
    di as `as' `"          //_/  /_/ "'
end

program cowsay_snowman
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"     _[_]_"'
    di as `as' `"      (")"'
    di as `as' `"  >--( : )--<"'
    di as `as' `"    (__:__) "'
end

program cowsay_frog
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"        (.)_(.)"'
    di as `as' `"     _ (   _   ) _"'
    di as `as' `"    / \/\`-----'\/ \"'
    di as `as' `"  __\ ( (     ) ) /__"'
    di as `as' `"  )   /\ \._./ /\   ("'
    di as `as' `"   )_/ /|\   /|\ \_(  [nosig]"'
end

program cowsay_fish
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"  ><((((º>  ><((((º>  ><((((º>  ><((((º>  ><((((º>"'
    di as `as' `"      Kiyoko Gotanda"'
end

program cowsay_signbunny
    syntax , as(string)
    di as `as' `"       ||"'
    di as `as' `"(\__/) ||"'
    di as `as' `"(•ㅅ•) ||"'
    di as `as' `"/   づ"'
end

program cowsay_facecat
    syntax , as(string)
    di as `as' `"    \"'
    di as `as' `"      \"'
    di as `as' `"         /\ /\"'
    di as `as' `"         (O o)"'
    di as `as' `"        =(:^:)="'
    di as `as' `"           U  "'
end

program cowsay_behindcat
    syntax , as(string)
    di as `as' `"      \"'
    di as `as' `"        \"'
    di as `as' `"          \"'
    di as `as' `"            |\___/|"'
    di as `as' `"            )     ("'
    di as `as' `"           =\     /="'
    di as `as' `"             )===("'
    di as `as' `"            /     \"'
    di as `as' `"            |     |"'
    di as `as' `"           /       \"'
    di as `as' `"           \       /"'
    di as `as' `"      jgs   \__  _/"'
    di as `as' `"              ( ("'
    di as `as' `"               ) )"'
    di as `as' `"              (_("'
end

program cowsay_stretchycat
    syntax , as(string)
    di as `as' `"    \"'
    di as `as' `"      \"'
    di as `as' `"        \"'
    di as `as' `"                        ,/|         _.--‛‛^\`\`-...___.._.,;"'
    di as `as' `"                      /, \‛.     _-‛          ,--,,,--‛‛‛"'
    di as `as' `"                     {  \    \`_-‛‛       ‛    /}‛"'
    di as `as' `"Jill                    \`;;‛             ;   ; ;"'
    di as `as' `"                  ._.--‛‛     ._,,, _..‛  .;.‛"'
    di as `as' `"                  (,_....----‛‛‛     (,..--‛‛"'
end

program cowsay_anxiouscat
    syntax , as(string)
    local tick  = "`"
    local quote = `"""'
    di as `as' `"    \"'
    di as `as' `"      \"'
    di as `as' `"        \"'
    di as `as' `"        /\_/\         _"'
    di as `as' `"       /\`\`   \       / )"'
    di as `as' `"       |n n   |__   ( ("'
    di as `as' `"      =(Y =.‛\`   \`\  \ \"'
    di as `as' `"      {\``quote'\`        \  ) )`macval(\`)' "'
    di as `as' `"      {       /    |/ /"'
    di as `as' `"       \\   ,(     / /"'
    di as `as' `"        ) ) /-‛\  ,_.‛"'
    di as `as' `"  jgs  (,(,/ ((,,/"'
end

program cowsay_longtailcat
    syntax , as(string)
    di as `as' `"    \"'
    di as `as' `"      \"'
    di as `as' `"        \"'
    di as `as' `"     /\-/\"'
    di as `as' `"    /a a  \                                 _"'
    di as `as' `"   =\ Y  =/-~~~~~~-,_______________________/ )"'
    di as `as' `"     ‛^--‛          ________________________/"'
    di as `as' `"       \           /"'
    di as `as' `"       ||  |---‛\  \"'
    di as `as' `"  jgs  (_(__|   ((__|"'
end

program cowsay_cat
    syntax , as(string)
    di as `as' `"    \"'
    di as `as' `"      \"'
    di as `as' `"        \"'
    di as `as' `"            |\___/|"'
    di as `as' `"          ==) ^Y^ (=="'
    di as `as' `"            \  ^  /"'
    di as `as' `"             )=*=("'
    di as `as' `"            /     \"'
    di as `as' `"            |     |"'
    di as `as' `"           /| | | |\"'
    di as `as' `"           \| | |_|/\"'
    di as `as' `"      jgs  //_// ___/"'
    di as `as' `"               \_)"'
end

program cowsay_trilobite
    syntax , as(string)
    di as `as' `"    \"'
    di as `as' `"      \"'
    di as `as' `"        \"'
    di as `as' `"          _____"'
    di as `as' `"       .'\` ,-. \`'."'
    di as `as' `"      /   ([ ])   \"'
    di as `as' `"     /.-""\`(\`)\`""-.\\` "'
    di as `as' `"      <'\`\`\`(.)\`\`\`'>"'
    di as `as' `"      <'\`\`\`(.)\`\`\`'>"'
    di as `as' `"       <'\`\`(.)\`\`'>"'
    di as `as' `"   sk   <\`\`\_/\`\`>"'
    di as `as' `"         \`'---'\` "'
end

program cowsay_shark
    syntax , as(string)
    di as `as' `"    \"'
    di as `as' `"      \"'
    di as `as' `"        \"'
    di as `as' `"              /""-._"'
    di as `as' `"              .       '-,"'
    di as `as' `"               :          '',"'
    di as `as' `"                ;      *     '."'
    di as `as' `"                 ' *         () '."'
    di as `as' `"                   \               \"'
    di as `as' `"                    \      _.---.._ '."'
    di as `as' `"                    :  .' _.--''-''  \ ,'"'
    di as `as' `"        .._           '/.'             . ;"'
    di as `as' `"        ; \`-.          ,                \'"'
    di as `as' `"         ;   \`,         ;              ._\"'
    di as `as' `"          ;    \     _,-'                ''--._"'
    di as `as' `"          :    \_,-'                          '-._"'
    di as `as' `"          \ ,-'                       .          '-._"'
    di as `as' `"          .'         __.-'';            \...,__       '."'
    di as `as' `"        .'      _,-'        \              \   ''--.,__  '\"'
    di as `as' `"        /    _,--' ;         \              ;           \^.}"'
    di as `as' `"        ;_,-' )     \  )\      )            ;"'
    di as `as' `"             /       \/  \_.,-'             ;"'
    di as `as' `"            /                              ;"'
    di as `as' `"         ,-'  _,-'''-.    ,-.,            ;      PFA"'
    di as `as' `"      ,-' _.-'        \  /    |/'-._...--'"'
    di as `as' `"     :--\`\`             )/"'
    di as `as' `"  '"'
end

program cowsay_buffalo
    syntax , as(string)
    di as `as' `"    \"'
    di as `as' `"      \"'
    di as `as' `"        \"'
    di as `as' `"                   _.-\`\`\`\`'-,_"'
    di as `as' `"         _,.,_ ,-'\`           \`'-.,_"'
    di as `as' `"       /)     (                   '\`\`-."'
    di as `as' `"      ((      ) )                      \`\"'
    di as `as' `"        \)    (_/                        )\"'
    di as `as' `"        |       /)           '    ,'    / \"'
    di as `as' `"        \`\    ^'            '     (    /  ))"'
    di as `as' `"          |      _/\ ,     /    ,,\`\   (  "\` "'
    di as `as' `"          \Y,   |   \  \  | \`\`\`\`| / \_ \"'
    di as `as' `"            \`)_/      \  \  )    ( >  ( >"'
    di as `as' `"                       \( \(     |/   |/"'
    di as `as' `"          mic & dwb  /_(/_(    /_(  /_("'
end

program cowsay_grumpycat
    syntax , as(string)
    di as `as' `"    \"'
    di as `as' `"      \"'
    di as `as' `"        \"'
    di as `as' `"      ﾊ _ ﾊ"'
    di as `as' `"      ಠ X ಠ"'
end

program cowsay_smallcat
    syntax , as(string)
    di as `as' `"    \"'
    di as `as' `"     \"'
    di as `as' `"      \"'
    di as `as' `"         /\_/\"'
    di as `as' `"        ( o.o )"'
    di as `as' `"         > ^ <  "'
end

program cowsay_yoda
    syntax , as(string)
    local tick  = "`"
    local quote = `"""'
    di as `as' `"    \   "'
    di as `as' `"     \"'
    di as `as' `"                   ____"'
    di as `as' `"                _.' :  \`._"'
    di as `as' `"            .-.'\`.  ;   .'\`.-."'
    di as `as' `"   __      / : ___\ ;  /___ ; \      __"'
    di as `as' `"  ,'_ ""--.:__;".-.";: :".-.":__;.--"" _\`,"'
    di as `as' `"  :' \`.t""--.. '<@.\`;_  ',@>\` ..--""j.' \`;"'
    di as `as' `"       \`:-.._J '-.-'L__ \`-- ' L_..-;'"'
    di as `as' `"          `quote'-.__ ;  .-`quote'  `quote'-.  : __.-`quote'"'
    di as `as' `"             L ' /.------.\ ' J"'
    di as `as' `"             `quote'-.   `quote'--`quote'   .-`quote'"'
    di as `as' `"             __.l`quote'-:_JL_;-`quote';.__"'
    di as `as' `"         .-j/'.;  ;`quote'`quote'`quote'`quote'  / .'\"-."'
    di as `as' `"         .' /:\`. `quote'-.:     .-`quote' .';  \`."'
    di as `as' `"      .-`quote'  / ;  `quote'-. `quote'-..-`quote' .-`quote'  :    `quote'-."'
    di as `as' `"  .+`quote'-.  : :      `quote'-.__.-`quote'      ;-._   \"'
    di as `as' `"  ; \  \`.; ;                    : : `quote'+. ;"'
    di as `as' `"  :  ;   ; ;                    : ;  : \:"'
    di as `as' `"  ;  :   ; :                    ;:   ;  :"'
    di as `as' `"  : \  ;  :  ;                  : ;  /  ::"'
    di as `as' `"  ;  ; :   ; :                  ;   :   ;:"'
    di as `as' `"  :  :  ;  :  ;                : :  ;  : ;"'
    di as `as' `"  ;\    :   ; :                ; ;     ; ;"'
    di as `as' `"  : \`.`quote'-;   :  ;              :  ;    /  ;"'
    di as `as' `" ;    -:   ; :              ;  : .-`quote'   :"'
    di as `as' `"  :\     \  :  ;            : \.-`quote'      :"'
    di as `as' `"  ;\`.    \  ; :            ;.'_..--  / ;"'
    di as `as' `"  :  `quote'-.  `quote'-:  ;          :/.`quote'      .'  :"'
    di as `as' `"   \         \ :          ;/  __        :"'
    di as `as' `"    \       .-\`.\        /t-`quote'`quote'  `quote':-+.   :"'
    di as `as' `"     \`.  .-`quote'    \`l    __/ /\`. :  ; ; \  ;"'
    di as `as' `"       \   .-`quote' .-`quote'-.-`quote'  .' .'j \  /   ;/"'
    di as `as' `"        \ / .-`quote'   /.     .'.' ;_:'    ;"'
    di as `as' `"  :-`quote'`quote'-.\`./-.'     /    \`.___.'"'
    di as `as' `"               \ \`t  ._  /  bug"'
    di as `as' `"                "-.t-._:'"'
end

program cowsay_mushroom
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \  "'
    di as `as' `"      \"'
    di as `as' `"                ________"'
    di as `as' `"           __--´      ° \`--__"'
    di as `as' `"       __-´     °      °     \`-__"'
    di as `as' `"     (´    °    °          °     \`)"'
    di as `as' `"     (° °|    |°         ° |    | )"'
    di as `as' `"      \`'''''''''\`|'''''|´''''''''´"'
    di as `as' `"                 |     |"'
    di as `as' `"                 |:::::|"'
    di as `as' `"               /:|:::::|:\"'
    di as `as' `"              /::|:::::|::\"'
    di as `as' `"                 |     |"'
    di as `as' `"                 |^   ^|"'
    di as `as' `"                 |  _  | [FK]"'
    di as `as' `"                 |_____|"'
end

program cowsay_endlesshorse
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \  "'
    di as `as' `"      \"'
    di as `as' `"       ,"'
    di as `as' `"    _,,)\.~,,._"'
    di as `as' `"     (()\`  \`\`)\))),,_"'
    di as `as' `"      |     \ ''((\)))),,_          ____"'
    di as `as' `"      |6\`   |   ''((\())) "-.____.-"    \`-.-,"'
    di as `as' `"      |    .'\    ''))))'                  \)))"'
    di as `as' `"      |   |   \`.     ''                     (((("'
    di as `as' `"      \, _)     \/                          |))))"'
    di as `as' `"       \`'        |                          ((((("'
    di as `as' `"                 \                  |       ))))))"'
    di as `as' `"                  \`|    |           ,\     /(((((("'
    di as `as' `"                   |   / \`-.______.<  \   |  )))))"'
    di as `as' `"                   |   |  /         \`. \  \  (((("'
    di as `as' `"                   |  / \ |           \`.\  | ((("'
    di as `as' `"                   \  | | |             )| |  ))"'
    di as `as' `"                    | | | |             || |  '   [endless.horse]"'
    di as `as' `"                    | | | |             || |"'
end

program cowsay_bat
    syntax , as(string)
    di as `as' `"              \   "'
    di as `as' `"               \  "'
    di as `as' `"                \"'
    di as `as' `"        __.--'\     \.__./     /'--.__"'
    di as `as' `"    _.-'       '.__.'    '.__.'       '-._"'
    di as `as' `"  .'                                      '."'
    di as `as' `" /                                          \"'
    di as `as' `"|                                            |"'
    di as `as' `"|                                            |"'
    di as `as' `" \         .---.              .---.         /"'
    di as `as' `"  '._    .'     '.''.    .''.'     '.    _.'"'
    di as `as' `"     '-./            \  /           \.-'"'
    di as `as' `"                      ''mrf"'
end

program cowsay_bat2
    syntax , as(string)
    di as `as' `"              \   "'
    di as `as' `"               \  "'
    di as `as' `"                \"'
    di as `as' `"_____________________                              _____________________"'
    di as `as' `"\`-._                 \           |\__/|           /                 _.-'"'
    di as `as' `"    \                 \          |    |          /                 /"'
    di as `as' `"     \                 \`-_______/      \_______-'                 /"'
    di as `as' `"      |                                                          |"'
    di as `as' `"      |                                                          |"'
    di as `as' `"      |                                                          |"'
    di as `as' `"      /                                                          \"'
    di as `as' `"     /_____________                                  _____________\"'
    di as `as' `"                   \`----._                    _.----'"'
    di as `as' `"                          \`--.            .--'"'
    di as `as' `"                              \`-.      .-'"'
    di as `as' `"                                 \    / :F_P:"'
    di as `as' `"                                  \  /"'
    di as `as' `"                                   \/"'
end

program cowsay_turkey
    syntax , as(string)
    di as `as' `"              \   "'
    di as `as' `"               \  "'
    di as `as' `"                \"'
    di as `as' `"               .--."'
    di as `as' `"              /} p \             /}"'
    di as `as' `"             \`~)-) /           /\` }"'
    di as `as' `"              ( / /          /\`}.' }"'
    di as `as' `"               / / .-'""-.  / ' }-'}"'
    di as `as' `"              / (.'       \/ '.'}_.}"'
    di as `as' `"             |            \`}   .}._}"'
    di as `as' `"             |     .-=-';   } ' }_.}"'
    di as `as' `"             \    \`.-=-;'  } '.}.-}"'
    di as `as' `"              '.   -=-'    ;,}._.}"'
    di as `as' `"                \`-,_  __.'\` '-._}"'
    di as `as' `"              jgs   \`|||"'
    di as `as' `"                   .=='=,"'
end

program cowsay_monkey
    syntax , as(string)
    local tick  = "`"
    local quote = `"""'
    di as `as' `"              \   "'
    di as `as' `"               \  "'
    di as `as' `"                \"'
    di as `as' `"                  .="=."'
    di as `as' `"                _/.-.-.\_     _"'
    di as `as' `"               ( ( o o ) )    ))"'
    di as `as' `"                |/  `quote'  \|    //"'
    di as `as' `"                 \'---'/    //"'
    di as `as' `"           jgs   /\``quote'`quote'`quote'\`\\  ((`macval(\`)' "'
    di as `as' `"                / /_,_\ \\  \\"'
    di as `as' `"                \_\_'__/  \  ))"'
    di as `as' `"                /\`  /\`~\   |//"'
    di as `as' `"               /   /    \  /"'
    di as `as' `"          ,--\`,--'\/\    /"'
    di as `as' `"          '-- "--'  '--'"'
end

program cowsay_daemon
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \  "'
    di as `as' `"      \"'
    di as `as' `"            ,        ,"'
    di as `as' `"           /(        )\` "'
    di as `as' `"           \ \___   / |"'
    di as `as' `"            /- _  \`-/  '"'
    di as `as' `"           (/\/ \ \   /\"'
    di as `as' `"           / /   | \`    "'
    di as `as' `"           O O   ) /    |"'
    di as `as' `"           \`-^--'\`<     '"'
    di as `as' `"          (_.)  _  )   /"'
    di as `as' `"           \`.___/\`    /"'
    di as `as' `"             \`-----' /"'
    di as `as' `"<----.     __ / __   \"'
    di as `as' `"<----|====O)))==) \) /===="'
    di as `as' `"<----'    \`--' \`.__,' \"'
    di as `as' `"             |        |"'
    di as `as' `"              \       /"'
    di as `as' `"        ______( (_  / \______"'
    di as `as' `"      ,'  ,-----'   |        \"'
    di as `as' `"      \`--{__________)        \/ [nosig]"'
end

program cowsay_duckling
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \  "'
    di as `as' `"      \"'
    di as `as' `"       \"'
    di as `as' `"        >o  ."'
    di as `as' `"         ===    [ab]"'
end

program cowsay_duck
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \  "'
    di as `as' `"      \"'
    di as `as' `"         __"'
    di as `as' `"        /o \"'
    di as `as' `"      <=   |         =="'
    di as `as' `"        |__|        /==="'
    di as `as' `"        |   \______/  ="'
    di as `as' `"        \     ====   /"'
    di as `as' `"         \__________/     [ab]"'
end

program cowsay_owl
    syntax , as(string)
    di as `as' `"    \   "'
    di as `as' `"     \  "'
    di as `as' `"      \"'
    di as `as' `"       /\___/\"'
    di as `as' `"       {o}{o}|"'
    di as `as' `"       \ v  /|"'
    di as `as' `"       |    \ \"'
    di as `as' `"        \___/_/       [ab] "'
    di as `as' `"          | | "'
end
