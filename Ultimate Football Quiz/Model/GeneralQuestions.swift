//
//  GeneralQuestions.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 31/07/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import Foundation


struct GeneralQuestion{
    
    var questionNumber = 0
    var ranNum = generateRandomNumber(0, 50, 10)
    var score = 0
    
    let GeneralQuestion = [
        QuestionAnswerManager(Question: "What team is the Red Devils?", ChoiceOne: "Manchester United" , ChoiceTwo: "Liverpool" , ChoiceThree: "Stoke",  ChoiceFour: "Sunderland", Answer: "Manchester United"),
        
        QuestionAnswerManager(Question: "Who does Chevrolet (Car) do a shirt sponsorship with?", ChoiceOne: "Barcelona " ,ChoiceTwo: "Manchester United", ChoiceThree: "PSG", ChoiceFour: "Brighton" , Answer: "Manchester United"),
        
        QuestionAnswerManager(Question: "During the 10-11 season, what club did Wayne Rooney play for? ", ChoiceOne: "Manchester United" ,ChoiceTwo: "Everton", ChoiceThree: "Arsenal", ChoiceFour: "AC Milan", Answer: "Manchester United"),
        
        QuestionAnswerManager(Question: "How many clubs did David Beckham play for? ", ChoiceOne: "7" ,ChoiceTwo: "8", ChoiceThree: "6", ChoiceFour: "5", Answer: "7"),
        
        QuestionAnswerManager(Question: "Manchester United famously wears red,but what colours did they wear before adopting red? ", ChoiceOne:"Red and orange"  ,ChoiceTwo:"Green and gold" , ChoiceThree:"Blue and Pink" , ChoiceFour:"Black and yellow"  , Answer:"Green and gold" ),
        
        QuestionAnswerManager(Question:"Which club is associated with 'Galacticos'?" , ChoiceOne:"Juventus" ,ChoiceTwo:"Barcelona" , ChoiceThree:"Real Madrid" , ChoiceFour:"PSG" , Answer:"Real Madrid" ),
        
        QuestionAnswerManager(Question:"Which manager was famously said to have given players 'the Hairdryer Treatment'?" , ChoiceOne:"Giggs" ,ChoiceTwo:"Neville" , ChoiceThree:"Ronaldo" , ChoiceFour:"Ferguson" , Answer:"Ferguson" ),
        
        QuestionAnswerManager(Question:"Which club is sometimes referred to as FC Hollywood?" , ChoiceOne:"Bayern Munich" ,ChoiceTwo:"Real Madrid" , ChoiceThree:"Manchester United" , ChoiceFour:"Atletico Madrid" , Answer:"Bayern Munich" ),
        
        QuestionAnswerManager(Question:"After Juventus, AC Milan and Inter, with nine Scudettos, which team has won the most Serie A titles?" , ChoiceOne:"Rome" ,ChoiceTwo:"Venice" , ChoiceThree:"Genoa" , ChoiceFour:"Florence" , Answer:"Genoa" ),
        
        QuestionAnswerManager(Question:"In Spanish football, what is 'the Pichichi'?" , ChoiceOne:"Award to best player" ,ChoiceTwo:"Award to Managers" , ChoiceThree:"Award to referee" , ChoiceFour:"Award to the goalscorer" , Answer:"Award to the goalscorer" ),
        
        QuestionAnswerManager(Question:"In video game FIFA 20, team Piemonte Calcio represents which real-life club?" , ChoiceOne:"Juventus" ,ChoiceTwo:"Inter Milan" , ChoiceThree:"AC Milan" , ChoiceFour:"Sevilla" , Answer:"Juventus" ),
        
        QuestionAnswerManager(Question:"Which MLS franchise team does David Beckham own?" , ChoiceOne:"Orlando City" ,ChoiceTwo:"Inter Miami" , ChoiceThree:"Chicago Fire" , ChoiceFour:"Toronto FC" , Answer:"Inter Miami" ),
        
        QuestionAnswerManager(Question:"Which American businessman became owner of Aston Villa in 2006?" , ChoiceOne:"Randy Lerner" ,ChoiceTwo:"Tony Xia" , ChoiceThree:"Doug Ellis" , ChoiceFour:"Rémi Garde" , Answer:"Randy Lerner" ),
        
        QuestionAnswerManager(Question:"Which mercurial French footballer joined Marseille from West Ham United in January 2017?" , ChoiceOne:"Florian Thauvin" ,ChoiceTwo:"Dimitri Payet" , ChoiceThree:"Steve Mandanda" , ChoiceFour:"Morgan Sanson" , Answer:"Dimitri Payet" ),
        
        QuestionAnswerManager(Question:"Which Bolton Wanderers midfielder scored 14 goals in over 100 appearances following a move from PSG in 2002?" , ChoiceOne:"Daniel Amokachi" ,ChoiceTwo:"Taribo West" , ChoiceThree:"Jay-Jay Okocha" , ChoiceFour:"Nwankwo Kanu" , Answer:"Jay-Jay Okocha" ),
        
        QuestionAnswerManager(Question:"Which English midfielder made his international debut in England's 6–0 win against Luxembourg in September 1999?" , ChoiceOne:"Lee Bowyer" ,ChoiceTwo:"Darius Vassell" , ChoiceThree:"Titus Bramble" , ChoiceFour:"Kieron Dyer" , Answer:"Kieron Dyer" ),
        
        QuestionAnswerManager(Question:"Who was the oldest outfield player in England's 2002 World Cup Finals squad?" , ChoiceOne:"Teddy Sheringham" ,ChoiceTwo:"Paul Ince" , ChoiceThree:"Paul Gascoigne" , ChoiceFour:"Mark Hughes" , Answer:"Teddy Sheringham" ),
        
        QuestionAnswerManager(Question:"Who was the youngest outfield player in England's Euro 2004 Finals squad?" , ChoiceOne:"Frank Lampard" ,ChoiceTwo:"Wayne Rooney" , ChoiceThree:"Alex Ferguson" , ChoiceFour:"Zlatan Ibrahimović" , Answer:"Wayne Rooney" ),
        
        QuestionAnswerManager(Question:"Which Australian defender made 279 Premier League appearances for Blackburn Rovers, West Ham United and Everton?" , ChoiceOne:"Brett Emerton" ,ChoiceTwo:"Vince Grella" , ChoiceThree:"Lucas Neill" , ChoiceFour:"Mark Bresciano" , Answer:"Lucas Neill" ),
        
        QuestionAnswerManager(Question:"As of 2020, who is the only Brazilian to have managed in the English Premier League?" , ChoiceOne:"Vanderlei Luxemburgo" ,ChoiceTwo:"Mano Menezes" , ChoiceThree:"Carlos Caetano Bledorn Verri" , ChoiceFour:"Luiz Felipe Scolari" , Answer:"Luiz Felipe Scolari" ),
        
        QuestionAnswerManager(Question:"Which team has won the top flight of English football the most times?", ChoiceOne:"Everton" ,ChoiceTwo:"Watford" , ChoiceThree:"Manchester United" , ChoiceFour:"Liverpool" , Answer:"Everton" ),
        
        QuestionAnswerManager(Question:"Which Dutch striker finished as top scorer in the Premier League in 1999 and 2001?" , ChoiceOne:"Eiður Guðjohnsen" ,ChoiceTwo:"Jimmy Floyd Hasselbaink" , ChoiceThree:"Mario Melchiot" , ChoiceFour:"Mark Viduka" , Answer:"Jimmy Floyd Hasselbaink" ),
        
        QuestionAnswerManager(Question:"Which striker is the current all-time top scoring Belgian in the English Premier League?" , ChoiceOne:"Alexis Sánchez" ,ChoiceTwo:"Antonio Valencia" , ChoiceThree:"Romelu Lukaku" , ChoiceFour:"Antonio Valencia" , Answer:"Romelu Lukaku"),
        
        QuestionAnswerManager(Question:"Which English club won the FA Cup in 2014 and 2015?" , ChoiceOne:"Arsenal" ,ChoiceTwo:"Manchester City" , ChoiceThree:"Liverpool" , ChoiceFour:"Chelsea" , Answer:"Arsenal" ),
        
        QuestionAnswerManager(Question:"Which Finnish defender made over 300 appearances for Liverpool between 1999 and 2009?" , ChoiceOne:"John Arne Riise" ,ChoiceTwo:"Sami Hyypiä" , ChoiceThree:"Jari Litmanen" , ChoiceFour:"Vladimír Šmicer" , Answer:"Sami Hyypiä" ),
        
        QuestionAnswerManager(Question:"Which English Manchester City defender had a short loan spell at Fiorentina in the 2014-15 season?" , ChoiceOne:"Nedum Onuoha" ,ChoiceTwo:"Pablo Zabaleta" , ChoiceThree:"Micah Richards" , ChoiceFour:"David Silva" , Answer:"Micah Richards" ),
        
        QuestionAnswerManager(Question:"Which German goalkeeper had two spells with Arsenal between 2003 and 2011?" , ChoiceOne:"Christoph Metzelder" ,ChoiceTwo:"Michael Ballack" , ChoiceThree:"Oliver Kahn" , ChoiceFour:"Jens Lehmann" , Answer:"Jens Lehmann" ),
        
        QuestionAnswerManager(Question:"Which England international made their full international debut first? " , ChoiceOne:"Danny Welbeck" ,ChoiceTwo:"Theo Walcott" , ChoiceThree:"Jack Wilshere" , ChoiceFour:"Peter Crouch" , Answer:"Peter Crouch" ),
        
        QuestionAnswerManager(Question:"As of 2020, who is the only Albanian to have played in the English Premier League having played for Sunderland in 2009-10?" , ChoiceOne:"Lorik Cana" ,ChoiceTwo:"Mamadou Niang" , ChoiceThree:"Fernando Muslera" , ChoiceFour:"Erjon Bogdani" , Answer:"Lorik Cana" ),
        
        QuestionAnswerManager(Question:"Who scored the first Premier League hat trick when Manchester United beat Tottenham 5-2 in August 1992?" , ChoiceOne:"Brian McClair" ,ChoiceTwo:"Eric Cantona" , ChoiceThree:"Roy Keane" , ChoiceFour:"Mark Hughes" , Answer:"Eric Cantona" ),
        
        QuestionAnswerManager(Question:"As of 2020, which club had the highest number of different managers whilst a Premier League club?" , ChoiceOne:"Newcastle United" ,ChoiceTwo:"Sunderland" , ChoiceThree:"Everton" , ChoiceFour:"Wolves" , Answer:"Newcastle United" ),
        
        QuestionAnswerManager(Question:"England played six matches in total at Euro 1988 and Euro 1992. How many of them did they win?" , ChoiceOne:"Two" ,ChoiceTwo:"One" , ChoiceThree:"None" , ChoiceFour:"Three" , Answer:"None" ),
        
        QuestionAnswerManager(Question:"Who played in a European Championship final when only 19 years and 150 days old?" , ChoiceOne:"Wayne Rooney" ,ChoiceTwo:"Pedro" , ChoiceThree:"Luis Nani" , ChoiceFour:"Cristiano Ronaldo" , Answer:"Cristiano Ronaldo" ),
        
        QuestionAnswerManager(Question:"Which country has hosted the Euros on their own and with another co-host?" , ChoiceOne:"Switzerland" ,ChoiceTwo:"Austria" , ChoiceThree:"Belgium" , ChoiceFour:"Sweden" , Answer:"Belgium" ),
        
        QuestionAnswerManager(Question:"Which country had the youngest squad at Euro 2016?" , ChoiceOne:"Iceland" ,ChoiceTwo:"England" , ChoiceThree:"Wales" , ChoiceFour:"France" , Answer:"England" ),
        
        
        QuestionAnswerManager(Question:"Who won UEFA's player of the tournament award at Euro 1996?" , ChoiceOne:"Alan Shearer" ,ChoiceTwo:"Matthias Sammer" , ChoiceThree:"Teddy Sheringham" , ChoiceFour:"Paul Gascoigne" , Answer:"Matthias Sammer" ),
        
        QuestionAnswerManager(Question:"The winners of the UEFA Champions League and the UEFA Europa League compete for which sporting trophy?" , ChoiceOne:"No trophy" ,ChoiceTwo:"UEFA Super Cup" , ChoiceThree:"UEFA Sony's Super Cup" , ChoiceFour:"Club World Cup" , Answer:"UEFA Super Cup" ),
        
        QuestionAnswerManager(Question: "La Liga is the name of which European country’s professional football association?" , ChoiceOne:"Spain" ,ChoiceTwo:"Germany" , ChoiceThree:"Greece" , ChoiceFour:"Malta" , Answer:"Spain" ),
        
        QuestionAnswerManager(Question:"How much did Sporting Lisbon receive for the transfer of 17 years old, Cristiano Ronaldo?" , ChoiceOne:"£12 Million" ,ChoiceTwo:"£24.5 Million" , ChoiceThree:"£8 Million" , ChoiceFour:"£43.2 Million" , Answer:"£12 Million" ),
        
        QuestionAnswerManager(Question:"Harry Kane was the top scorer of the World Cup 2018. Who came second?" , ChoiceOne:"Griezmann" ,ChoiceTwo:"Lukaku" , ChoiceThree:"Mbappé & Lukaku" , ChoiceFour:"Griezmann & Lukaku" , Answer:"Griezmann & Lukaku" ),
        
        QuestionAnswerManager(Question:"Which German striker was known as Der Bomber?" , ChoiceOne:"Franz Beckenbauer" ,ChoiceTwo:"Gerd Muller" , ChoiceThree:"Uwe Seeler" , ChoiceFour:"Paul Breitner" , Answer:"Gerd Muller" ),
        
        QuestionAnswerManager(Question:"Name the football club with which Jose Mourinho first became a top-tier manager?" , ChoiceOne:"FC Porto" ,ChoiceTwo:"Inter" , ChoiceThree:"Benfica" , ChoiceFour:"Chelsea" , Answer:"Benfica" ),
        
        QuestionAnswerManager(Question:"Jamie Carragher made his first team debut for Liverpool under which manager?" , ChoiceOne:"Roy Evans" ,ChoiceTwo:"Ronnie Moran" , ChoiceThree:"Graeme Souness" , ChoiceFour:"Bill Shankly" , Answer:"Roy Evans" ),
        
        QuestionAnswerManager(Question:"Which retail billionaire became owner of Newcastle United in 2007?" , ChoiceOne:"Peter Cowgill" ,ChoiceTwo:"Mohammad Bin Salman" , ChoiceThree:"Amanda Staveley" , ChoiceFour:"Mike Ashley" , Answer:"Mike Ashley" ),
        
        QuestionAnswerManager(Question:"How many Ballon d’Or awards has Lionel Messi won?" , ChoiceOne:"Five" ,ChoiceTwo:"Nine" , ChoiceThree:"Six" , ChoiceFour:"Eight" , Answer:"Six" ),
        
        QuestionAnswerManager(Question:"Who is the only player to win the Champions League with three different clubs?" , ChoiceOne:"Clarence Seedorf" ,ChoiceTwo:"Edgar Davids" , ChoiceThree:"Paolo Maldini" , ChoiceFour:"Roberto Carlos" , Answer:"Clarence Seedorf" ),
        
        QuestionAnswerManager(Question:"Where was the 1980 European Cup Winners’ Cup Final held?" , ChoiceOne:"Sweden" ,ChoiceTwo:"Switzerland" , ChoiceThree:"France" , ChoiceFour:"Belgium" , Answer:"Belgium" ),
        
        QuestionAnswerManager(Question:"Where was the 2006 Champions League Final held?" , ChoiceOne:"Paris" ,ChoiceTwo:"Istanbul" , ChoiceThree:"London" , ChoiceFour:"Lisbon" , Answer:"Paris"),
        
        QuestionAnswerManager(Question:"Who scored Liverpool’s only goal in the 1978 European Cup Final?", ChoiceOne:"Ian Rush"  ,ChoiceTwo:"Steve Heighway" , ChoiceThree:"Kenny Dalglish" , ChoiceFour:"Graeme Souness" , Answer:"Kenny Dalglish" ),
        
        QuestionAnswerManager(Question:"What is Pele’s real and full name?" , ChoiceOne:"Edson Arantes" ,ChoiceTwo:"Edson Arantes do Nascimento" , ChoiceThree:"Dico do Nascimento" , ChoiceFour:"Pele" , Answer:"Edson Arantes do Nascimento" ),
        
        QuestionAnswerManager(Question:"Who was the first footballer to be knighted?" , ChoiceOne:"Stanley Matthews" ,ChoiceTwo:"Matt Busby" , ChoiceThree:"Bobby Moore" , ChoiceFour:"Bobby Charlton" , Answer:"Stanley Matthews" ),
        
        QuestionAnswerManager(Question:"When did the Football referees first use whistles?" , ChoiceOne:"1864" ,ChoiceTwo:"1723" , ChoiceThree:"1878" , ChoiceFour:"1920" , Answer:"1878" ),
        
        QuestionAnswerManager(Question:"Which country won the 2010 Africa Cup of Nations?", ChoiceOne:"Egypt" ,ChoiceTwo:"Ghana" , ChoiceThree:"Algeria" , ChoiceFour:"Nigeria" , Answer:"Egypt" ),
        
        QuestionAnswerManager(Question:"Which football team won the 2011 FA Cup?" , ChoiceOne:"Stoke" ,ChoiceTwo:"Arsenal" , ChoiceThree:"Manchester City" , ChoiceFour:"Wigan Athletic" , Answer:"Manchester City" ),
        
        QuestionAnswerManager(Question:"Which team won the 1994 World Cup?" , ChoiceOne:"Italy" ,ChoiceTwo:"Brazil" , ChoiceThree:"Sweden" , ChoiceFour:"Bulgaria" , Answer:"Brazil"),
        
        QuestionAnswerManager(Question:"Which team won the 1998 World Cup?" , ChoiceOne:"France" ,ChoiceTwo:"Italy" , ChoiceThree:"Netherlands" , ChoiceFour:"Brazil" , Answer:"France" ),
        
        QuestionAnswerManager(Question:"Which team won the 2002 World Cup?" , ChoiceOne:"Germany" ,ChoiceTwo:"Turkey" , ChoiceThree:"Brazil" , ChoiceFour:"Netherlands" , Answer:"Brazil" ),
        
        QuestionAnswerManager(Question:"Which team won the 2006 World Cup?" , ChoiceOne:"Portugal" ,ChoiceTwo:"France" , ChoiceThree:"Germany" , ChoiceFour:"Italy" , Answer:"Italy" ),
        
        QuestionAnswerManager(Question:"Which team won the 2010 World Cup?" , ChoiceOne:"Spain" ,ChoiceTwo:"Uruguay" , ChoiceThree:"Uruguay" , ChoiceFour:"Germany" , Answer:"Spain" ),
        
        QuestionAnswerManager(Question:"Which team won the 2014 World Cup?" , ChoiceOne:"England" ,ChoiceTwo:"Germany" , ChoiceThree:"France" , ChoiceFour:"Argentina" , Answer:"Germany" ),
        
        QuestionAnswerManager(Question:"Which team won the 2018 World Cup?" , ChoiceOne:"France" ,ChoiceTwo:"Croatia" , ChoiceThree:"England" , ChoiceFour:"Belgium" , Answer:"France" ),
        
        QuestionAnswerManager(Question:"What does UEFA stand for?" , ChoiceOne:"Union of European Football Associations" ,ChoiceTwo:"Confederación Sudamericana de Fútbol " , ChoiceThree:"Asian Football Confederation " , ChoiceFour:"Confederation of Independent Football Associations" , Answer:"Union of European Football Associations" ),
        
        QuestionAnswerManager(Question:"In April 2011 Louis van Gaal was sacked as coach of which football club?" , ChoiceOne:"AFC Ajax" ,ChoiceTwo:"Netherlands" , ChoiceThree:"Bayern Munich" , ChoiceFour:"AZ Alkmaar" , Answer:"Bayern Munich" ),
        
        QuestionAnswerManager(Question: "Mo Salah joined Liverpool from which Italian club?", ChoiceOne:"Roma" ,ChoiceTwo:"Fiorentina" , ChoiceThree:"Atlanta" , ChoiceFour:"Torino F.C." , Answer:"Roma" ),
        
        QuestionAnswerManager(Question:"Michel Platini scored a record 9 goals in which UEFA Euro tournament?" , ChoiceOne:"1994" ,ChoiceTwo:"1984" , ChoiceThree:"1988" , ChoiceFour:"1980" , Answer:"1984" ),
        
        QuestionAnswerManager(Question:"Who is the only player to score in 17 different Champions League seasons?", ChoiceOne:"Bergkamp" ,ChoiceTwo: "Henry", ChoiceThree:"Scholes" , ChoiceFour:"Giggs" , Answer:"Giggs" ),
        
        QuestionAnswerManager(Question:"Zlatan Ibrahimovic has won the UEFA Champions League how many times?" , ChoiceOne:"0" ,ChoiceTwo: "2", ChoiceThree:"1" , ChoiceFour:"3" , Answer:"0" ),
        
        QuestionAnswerManager(Question:"Ryan Giggs has made more champions league appearances than any other player. For which club did he play all those games?" , ChoiceOne:"Manchester United" ,ChoiceTwo:"Arsenal" , ChoiceThree:"Barcelona" , ChoiceFour:"Barcelona" , Answer:"Manchester United" ),
        
        QuestionAnswerManager(Question:"In 1950 Uruguay played four matches before and then won the World Cup title. How many matches did the runners-up from Brazil play at this tournament?" , ChoiceOne:"0" ,ChoiceTwo:"5" , ChoiceThree:"10" , ChoiceFour:"6" , Answer:"6" ),
        
        QuestionAnswerManager(Question: "Who lost to Bayern Munich on penalties in the 2001 Champions League final?", ChoiceOne:"Barcelona" ,ChoiceTwo:"Valencia" , ChoiceThree:"Arsenal" , ChoiceFour:"Real Madrid" , Answer:"Valencia" ),
        
        QuestionAnswerManager(Question:"Bo Johansson was the coach of which National Side in the 1998 FIFA World Cup?" , ChoiceOne:"Ireland" ,ChoiceTwo:"Austria" , ChoiceThree:"Denmark" , ChoiceFour:"Finland" , Answer:"Denmark" ),
        
        QuestionAnswerManager(Question:"RSC Anderlecht, who have appeared in the Champions League, are from which country?", ChoiceOne:"Belgium" ,ChoiceTwo:"Estonia" , ChoiceThree:"Belarus" , ChoiceFour:"Croatia" , Answer:"Belgium" ),
        
        QuestionAnswerManager(Question:"What was introduced at the 2018 FIFA World Cup?" , ChoiceOne:"VAR" ,ChoiceTwo:"Water Break" , ChoiceThree:"Reserves players being able to collect medals" , ChoiceFour:"Bigger TV deals" , Answer:"VAR" ),
        
        QuestionAnswerManager(Question:"Brazil beat which country 2-0 in the 2002 World Cup Final?" , ChoiceOne:"Germany" ,ChoiceTwo:"Denmark" , ChoiceThree:"Argentina" , ChoiceFour:"Ireland" , Answer:"Germany" ),
        
        QuestionAnswerManager(Question:"Which English football club was previously known as both 'Excelsior' and 'New Brompton'?" , ChoiceOne:"Ipswich Town F.C." ,ChoiceTwo:"Gillingham" , ChoiceThree: "Portsmouth F.C.", ChoiceFour:"Sunderland A.F.C." , Answer:"Gillingham" ),
        
        QuestionAnswerManager(Question:"The Hawthorns is home to which English football club?" , ChoiceOne:"Liverpool F.C." ,ChoiceTwo:"Leeds United" , ChoiceThree: "West Bromwich Albion", ChoiceFour:"Brentford F.C." , Answer:"West Bromwich Albion" ),
        
        QuestionAnswerManager(Question:"Which Liverpool defender won the PFA Player of the Year award in 2018-19?" , ChoiceOne:"Roberto Firmino" ,ChoiceTwo:"Alisson Becker" , ChoiceThree: "Mohamed Salah", ChoiceFour:"Virgil van Dijk" , Answer:"Virgil van Dijk" ),
            
            QuestionAnswerManager(Question:"Which English midfielder won 30 caps for his country, scoring seven goals? His injury record earned him the nickname 'Sick Note'." , ChoiceOne:"Darren Anderton" ,ChoiceTwo:"Ledley King" , ChoiceThree:"Teddy Sheringham" , ChoiceFour:"Steve McManaman" , Answer:"Darren Anderton"),
            
            QuestionAnswerManager(Question:"Born in Glasgow in 1962, which midfielder won 73 caps for the Republic of Ireland whilst playing for Oxford United, Liverpool, Aston Villa and Crystal Palace?" , ChoiceOne:"Steve Staunton" ,ChoiceTwo:"Ray Houghton" , ChoiceThree:"Paul McGrath" , ChoiceFour:"Kevin Sheedy" , Answer:"Ray Houghton" ),
            
            QuestionAnswerManager(Question:"Which English defender became the first to move between two English clubs for over £30 million in 2002?" , ChoiceOne:"Ryan Giggs" ,ChoiceTwo: "John Terry", ChoiceThree:"Rio Ferdinand" , ChoiceFour: "Nemanja Vidić", Answer:"Rio Ferdinand" ),
            
            QuestionAnswerManager(Question:"AZ have played in the Champions League. Which country are they from?" , ChoiceOne:"Russia" , ChoiceTwo:"Belgium" , ChoiceThree:"Netherlands" , ChoiceFour:"Germany" , Answer:"Netherlands" ),
            
            QuestionAnswerManager(Question:"How many hat tricks has Luiz Adriano scored in the Champions League?" , ChoiceOne:"1" , ChoiceTwo:"8" , ChoiceThree:"3" , ChoiceFour:"5" , Answer:"3" ),
            
            QuestionAnswerManager(Question:"What was the final score when Barcelona beat Manchester United to win the 2009 Champions League final?" , ChoiceOne:"2-0" , ChoiceTwo:"2-1" , ChoiceThree:"1-0" , ChoiceFour:"3-2" , Answer:"2-0" ),
            
            QuestionAnswerManager(Question:"With 26 victories in the European Football Championship finals, which nation holds the record for most tournament wins?" , ChoiceOne:"Argentina" , ChoiceTwo:"Germany" , ChoiceThree:"England" , ChoiceFour:"Brazil" , Answer:"Germany" ),
            
            QuestionAnswerManager(Question:"Who beat Hungary 3-2 in the 1954 World Cup final?" , ChoiceOne:"Ireland" , ChoiceTwo:"Denmark" , ChoiceThree:"Germany" , ChoiceFour:"Croatia" , Answer:"Germany" ),
            
            QuestionAnswerManager(Question:"Which was the first nation to win the World Cup five times?" , ChoiceOne: "Brazil", ChoiceTwo: "Finland", ChoiceThree:"Austria" , ChoiceFour:"Belgium" , Answer:"Brazil" ),
            
            QuestionAnswerManager(Question:"What was the official attendance of the Euro 2008 final held in Vienna?" , ChoiceOne:"3890" , ChoiceTwo: "190392", ChoiceThree:"89739" , ChoiceFour:"51428" , Answer:"51428" ),
            
            QuestionAnswerManager(Question:"Who was the first sponsor of the Premier League?" , ChoiceOne:"Budweiser" , ChoiceTwo:"Carling" , ChoiceThree:"Barclays" , ChoiceFour:"Barclaycard" , Answer:"Carling" ),
            
            QuestionAnswerManager(Question:"Which team won the first Premier League title?" , ChoiceOne:"Queens Park Rangers" , ChoiceTwo:"Aston Villa" , ChoiceThree:"Manchester United" , ChoiceFour:"Blackburn Rovers" , Answer:"Manchester United" ),
            
            QuestionAnswerManager(Question:"Which player has made the most appearances in the Premier League?" , ChoiceOne:"Gareth Barry" , ChoiceTwo:"Frank Lampard" , ChoiceThree:"James Milner" , ChoiceFour:"Ryan Giggs" , Answer:"Gareth Barry" ),
            
            QuestionAnswerManager(Question:"With 260 goals, who is the Premier league's all-time top scorer?" , ChoiceOne:"Thierry Henry" , ChoiceTwo:"Alan Shearer" , ChoiceThree:"Sergio Agüero" , ChoiceFour:"Andrew Cole" , Answer:"Alan Shearer" ),
            
            QuestionAnswerManager(Question:"With 202 clean sheets, which goalkeeper has the best record in the Premier League?" , ChoiceOne:"Peter Schmeichel " , ChoiceTwo:"David De Gea" , ChoiceThree:"David James" , ChoiceFour:"Petr Cech" , Answer:"Petr Cech" ),
            
            QuestionAnswerManager(Question:"Who has substituted the most times in Premier League?" , ChoiceOne:"Theo Walcott" , ChoiceTwo:"Ryan Giggs" , ChoiceThree:"Aaron Lennon" , ChoiceFour:"Peter Crouch" , Answer:"Ryan Giggs" ),
            
            QuestionAnswerManager(Question:"Who won the premier League in the 2015-16 season?" , ChoiceOne:"Leicester City" , ChoiceTwo:"Manchester City" , ChoiceThree:"AFC Bournemouth" , ChoiceFour:"Chelsea" , Answer:"Leicester City" ),
            
            QuestionAnswerManager(Question:"In which year was the league's name changed from FA premier League to Premier League?" , ChoiceOne:"2007" , ChoiceTwo:"2008" , ChoiceThree:"2009" , ChoiceFour:"2010" , Answer:"2007" ),
            
            QuestionAnswerManager(Question:"The fastest goal scored in Premier League history came in 7.69 secs, who scored it?" , ChoiceOne:"Shane Long" , ChoiceTwo:"Ladley King" , ChoiceThree:"Alan Shearer" , ChoiceFour:"Christian Eriksen" , Answer:"Shane Long" ),
            
            QuestionAnswerManager(Question:"Who was awarded the first player of the season award?" , ChoiceOne:"Alan Shearer" , ChoiceTwo:"Peter Schmeichel" , ChoiceThree:"Teddy Sheringham" , ChoiceFour:"Andrew Cole" , Answer:"Alan Shearer" ),
            
            QuestionAnswerManager(Question:"Who was awarded the first golden boot award?" , ChoiceOne:"Alan Shearer" , ChoiceTwo:"Jimmy Floyd" , ChoiceThree:"Teddy Sheringham" , ChoiceFour:"Andrew Cole" , Answer:"Teddy Sheringham" ),
            
            QuestionAnswerManager(Question:"Which club has the most amount of Premier League titles?" , ChoiceOne:"Manchester United" , ChoiceTwo:"Arsenal" , ChoiceThree:"Newcastle" , ChoiceFour:"Chelsea" , Answer:"Manchester United" ),
            
            QuestionAnswerManager(Question:"How many Premier League titles does Manchester United have?" , ChoiceOne:"13" , ChoiceTwo:"21" , ChoiceThree:"20" , ChoiceFour:"14" , Answer:"13" ),
            
            QuestionAnswerManager(Question:"Which club has the biggest Premier League title-winning margin?" , ChoiceOne:"Manchester City" , ChoiceTwo:"Portsmouth" , ChoiceThree:"Arsenal" , ChoiceFour:"Blackburn Rovers" , Answer:"Manchester City" ),
            
            QuestionAnswerManager(Question:"What is the biggest Premier League title-winning points margin?" , ChoiceOne:"22" , ChoiceTwo:"21" , ChoiceThree:"19" , ChoiceFour:"14" , Answer:"19" ),
            
            QuestionAnswerManager(Question:"Which club has the smallest Premier League title-winning margin?" , ChoiceOne:"Manchester City" , ChoiceTwo:"Arsenal" , ChoiceThree:"Manchester United" , ChoiceFour:"Leicester City" , Answer:"Manchester City" ),
            
            QuestionAnswerManager(Question:" In season 2011/12, What was the point and goal difference margin between Manchester United and Manchester City?" , ChoiceOne:"0 points 8 GD" , ChoiceTwo:"3 points 2 GD" , ChoiceThree:"1 points 18 GD" , ChoiceFour:"3 points 58 GD" , Answer:"0 points 8 GD" ),
            
            QuestionAnswerManager(Question:"Which club has had the most amount of draws in one season?" , ChoiceOne:"Manchester City" , ChoiceTwo:"Newcastle United" , ChoiceThree:"Aston Villa" , ChoiceFour:"Sunderland" , Answer:"Manchester City" ),
            
            QuestionAnswerManager(Question:"Which two clubs have had the least amount of draws in one season?" , ChoiceOne:"Spurs and Man City" , ChoiceTwo:"Man Utd and Man City" , ChoiceThree:"Arsenal & Spurs" , ChoiceFour:"Chelsea and Man Utd" , Answer:"Spurs and Man City" ),
            
            QuestionAnswerManager(Question:"In season 18/19, how many draws did Manchester City have?" , ChoiceOne:"0" , ChoiceTwo:"3" , ChoiceThree:"2" , ChoiceFour:"1" , Answer:"2" ),
            
            QuestionAnswerManager(Question:"Which club has the most Premier league points in a season?" , ChoiceOne:"Manchester City" , ChoiceTwo:"Liverpool" , ChoiceThree:"Manchester United" , ChoiceFour:"Arsenal" , Answer:"Manchester City" ),
            
            QuestionAnswerManager(Question:"Manchester City has accumulated the most amount of points in one season, but how many points did they gain?" , ChoiceOne:"98" , ChoiceTwo:"100" , ChoiceThree:"102" , ChoiceFour:"99" , Answer:"100" ),
            
            QuestionAnswerManager(Question:"What club has had the fewest Premier league points in a season?" , ChoiceOne:"Derby County" , ChoiceTwo:"Nottingham Forest" , ChoiceThree:"Crystal Palace" , ChoiceFour:"West Ham" , Answer:"Derby County" ),
            
            QuestionAnswerManager(Question:"How many points did Derby County have during the season 07/08?" , ChoiceOne:"10" , ChoiceTwo:"22" , ChoiceThree:"11" , ChoiceFour:"17" , Answer:"11" ),
            
            QuestionAnswerManager(Question:"Which club currently has the most Premier League wins in a season?" , ChoiceOne:"Manchester City" , ChoiceTwo:"Manchester United" , ChoiceThree:"Liverpool" , ChoiceFour:"Arsenal" , Answer:"Manchester City" ),
            
            QuestionAnswerManager(Question:"Manchester City has accumulated the most wins in a season, but how many wins is it?" , ChoiceOne:"32" , ChoiceTwo:"30" , ChoiceThree:"35" , ChoiceFour:"28" , Answer:"32" ),
            
            QuestionAnswerManager(Question:"Derby County has accumulated the least amount of wins in a season, but how many was it?" , ChoiceOne:"1" , ChoiceTwo:"4" , ChoiceThree: "3", ChoiceFour:"0" , Answer:"1" ),
            
            QuestionAnswerManager(Question:"How many wins did Manchester United have during the season 2010/11?" , ChoiceOne:"20" , ChoiceTwo:"18" , ChoiceThree:"30" , ChoiceFour:"25" , Answer:"18" ),
            
            QuestionAnswerManager(Question:"How many wins did Chelsea have during the season 2005/06?" , ChoiceOne:"20" , ChoiceTwo:"18" , ChoiceThree:"30" , ChoiceFour:"25" , Answer:"18" ),
            
            QuestionAnswerManager(Question:"How many wins did Manchester City have during the season 2018/19?" , ChoiceOne:"20" , ChoiceTwo:"18" , ChoiceThree:"30" , ChoiceFour:"25", Answer:"18" ),
            
            QuestionAnswerManager(Question:"Which club has the most premier league away wins in a season?" , ChoiceOne:"Manchester United" , ChoiceTwo:"Manchester City", ChoiceThree:"Arsenal" , ChoiceFour:"Chelsea" , Answer:"Manchester City" ),
            
            QuestionAnswerManager(Question:"Which two club has the fewest Premier League home wins in a season?" , ChoiceOne:"Sunderland & Derby" , ChoiceTwo:"Sunderland & Norwich" , ChoiceThree:"Derby & Norwich" , ChoiceFour:"Leicester City & Derby" , Answer:"Sunderland & Derby" ),
            
            QuestionAnswerManager(Question:"Which team won the first ever premier league title?" , ChoiceOne:"Manchester United" , ChoiceTwo:"Blackburn Rovers" , ChoiceThree:"Leeds United" , ChoiceFour:"Aston Villa" , Answer:"Manchester United" ),
            
            QuestionAnswerManager(Question:"Due to the panmedic during 2020, Football had to stop but what was the last match that was played in the PL?" , ChoiceOne:"Leicester vs Aston Villa" , ChoiceTwo:"Man Utd vs Man City" , ChoiceThree:"Chelsea vs Everton", ChoiceFour:"Liverpool vs Bournemouth" , Answer:"Leicester vs Aston Villa" ),
            
            QuestionAnswerManager(Question:"Due to the panmedic during 2020, What day was the last premier league match played?" , ChoiceOne:"7 March" , ChoiceTwo:"8 March" , ChoiceThree:"9 March" , ChoiceFour:"10 March" , Answer:"9 March" ),
            
            QuestionAnswerManager(Question:"Due to the panmedic during 2020, What has the first match to have been cancelled?" , ChoiceOne:"Chelsea vs Everton", ChoiceTwo:"Arsenal vs Man City" , ChoiceThree:"Man Utd vs Man City" , ChoiceFour:"Liverpool vs Bournemouth" , Answer:"Arsenal vs Man City" ),
            
            QuestionAnswerManager(Question:"During the 19/20, which club had the lowest points in the league?" , ChoiceOne:"Norwich City" , ChoiceTwo:"Watford" , ChoiceThree:"Bournemouth" , ChoiceFour:"West Ham" , Answer:"Norwich City" ),
            
            QuestionAnswerManager(Question:"Liverpool won the 19/20, but what was the points difference between first and second?" , ChoiceOne:"16" , ChoiceTwo:"23" , ChoiceThree:"18" , ChoiceFour:"10" , Answer:"18" ),
            
            QuestionAnswerManager(Question:"Which club has been relegated the most times in the premier league?" , ChoiceOne:"Sunderland" , ChoiceTwo:"Norwich City" , ChoiceThree:"Derby County" , ChoiceFour:"Aston Villa" , Answer:"Norwich City" ),
            
            QuestionAnswerManager(Question:"What is the longest premier league unbeaten run so far?" , ChoiceOne:"59" , ChoiceTwo:"49" , ChoiceThree:"45" , ChoiceFour:"53" , Answer:"49" ),
            
            QuestionAnswerManager(Question:"Which club has the longest premier league unbeaten run?" , ChoiceOne:"Arsenal" , ChoiceTwo:"Manchester United" , ChoiceThree:"Liverpool" , ChoiceFour:"Manchester City" , Answer:"Arsenal" ),
            
            QuestionAnswerManager(Question:"What was the number of most Premier League goals scored in a season?" , ChoiceOne:"100" , ChoiceTwo:"97" , ChoiceThree:"106" , ChoiceFour:"105" , Answer:"106" ),
            
            QuestionAnswerManager(Question:"Manchester United have won the most Premier League titles with 13 - but which club is second on the list?" , ChoiceOne:"Chelsea" , ChoiceTwo:"Arsenal" , ChoiceThree:"Manchester City" , ChoiceFour:"Leicester City" , Answer:"Arsenal" ),
            
            QuestionAnswerManager(Question:"In season 2019/20, who was the top scorer in the Premier League?" , ChoiceOne:"Aubameyang" , ChoiceTwo:"Ings"  , ChoiceThree:"Vardy" , ChoiceFour:"Aguero"  , Answer:"Vardy"  ),
            
            QuestionAnswerManager(Question:"In season 19/20, Manchester United beat Manchester City home and away in the league, which player scored in both games?" , ChoiceOne:"Rashford" , ChoiceTwo:"Aguero"  , ChoiceThree:"Martial" , ChoiceFour:"Otamendi"  , Answer:"Martial"  ),
            
            QuestionAnswerManager(Question:"Which team has taken the fewest shots in the league in 19/20?" , ChoiceOne:"Sheffield United" , ChoiceTwo:"Burnley"  , ChoiceThree:"Manchester United" , ChoiceFour:"Wolves"  , Answer:"Sheffield United"  ),
            
            
            QuestionAnswerManager(Question:"Who is the most fouled player in the Premier League?" , ChoiceOne:"Grealish" , ChoiceTwo:"Mahrez"  , ChoiceThree:"Maddison" , ChoiceFour:"Rashford"  , Answer:"Grealish"  ),
            
            QuestionAnswerManager(Question:"How long did Quique Sánchez Flores last as Watford manager in the 2019/20 season?" , ChoiceOne:"70" , ChoiceTwo:"85"  , ChoiceThree:"100" , ChoiceFour:"115"  , Answer:"85"  ),
            
            QuestionAnswerManager(Question:"In Frank Lampard's first season as Chelsea manager. What happened in his first game?" , ChoiceOne:"Chelsea won 4-0" , ChoiceTwo:"It finished 3-3"  , ChoiceThree:"Chelsea lost 2-0" , ChoiceFour: "Chelsea lost 4-0" , Answer:"Chelsea lost 4-0"  ),
            
            QuestionAnswerManager(Question:"Which goalkeeper has kept the most clean sheets (11) so far?" , ChoiceOne:"Pope" , ChoiceTwo:"Alisson"  , ChoiceThree:"Schmeichel" , ChoiceFour:"Ederson"  , Answer:"Pope" ),
            
            QuestionAnswerManager(Question:"After how many minutes were Manchester City 5-0 up against Watford when the played?" , ChoiceOne:"15" , ChoiceTwo:"18"  , ChoiceThree:"21", ChoiceFour:"24"  , Answer:"18" ),
            
            QuestionAnswerManager(Question:"In season 19/20, After how many minutes were Manchester City 5-0 up against Watford when the played?" , ChoiceOne: "15", ChoiceTwo:"18"  , ChoiceThree:"21" , ChoiceFour: "24" , Answer: "18" ),
            
            QuestionAnswerManager(Question:"In season 19/20, which two players scored hat-tricks in the same game?", ChoiceOne:"Son" , ChoiceTwo: "Aurier" , ChoiceThree:"Deeney" , ChoiceFour: "Aubameyang" , Answer:"Aubameyang"  ),
            
            QuestionAnswerManager(Question:"In season 19/20, who is the only player to have scored a goal and been sent off in the same game?", ChoiceOne:"Son" , ChoiceTwo: "Aurier" , ChoiceThree:"Deeney" , ChoiceFour:"Aubameyang"  , Answer:"Aubameyang"  ),
            
            QuestionAnswerManager(Question:"In season 19/20, which team scored 16 goals in a row that were all scored by English players?" , ChoiceOne:"Manchester United" , ChoiceTwo:"Southampton"  , ChoiceThree:"Chelsea" , ChoiceFour: "Burnley" , Answer:"Southampton"  ),
            
            QuestionAnswerManager(Question:"Norwich City, Aston Villa and ... were regulated in season 19/20, who was the third team?" , ChoiceOne:"Bournemouth" , ChoiceTwo: "Watford" , ChoiceThree:"West Ham" , ChoiceFour: "Brighton" , Answer:"Bournemouth"  ),
            
            QuestionAnswerManager(Question:"Liverpool were unbeaten for 27 matches in season 19/20, what happened on the 28th game?" , ChoiceOne:"Drew 1-1" , ChoiceTwo:"Lost 1-0"  , ChoiceThree:"Lost 2-0" , ChoiceFour:"Lost 3-0"  , Answer:"Lost 3-0")
    ]
    
    //MARK:- Getters
    
    func getQuestionText() -> String {
        return GeneralQuestion[ranNum[questionNumber]].Question
    }
    
    func getAnswerChoiceOneText() -> String {
        return GeneralQuestion[ranNum[questionNumber]].ChoiceOne
    }
    
    func getAnswerChoiceTwoText() -> String {
        return GeneralQuestion[ranNum[questionNumber]].ChoiceTwo
    }
    
    func getAnswerChoiceThreeText() -> String {
        return GeneralQuestion[ranNum[questionNumber]].ChoiceThree
    }
    
    func getAnswerChoiceFourText() -> String {
        return GeneralQuestion[ranNum[questionNumber]].ChoiceFour
    }
    
    func getAnswer() -> String {
        return GeneralQuestion[ranNum[questionNumber]].Answer
    }
    
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(GeneralQuestion.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    //MARK:- Next Question
    
    mutating func nextQuestion() {
        questionNumber += 1
    }
    
    //MARK:- Checks Answers
    
    mutating func checkAnswer(userChoice: String) -> Bool {
        if userChoice == GeneralQuestion[ranNum[questionNumber]].Answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}



