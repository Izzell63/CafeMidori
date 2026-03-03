<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Café Midori – Quiz Room</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap');

        body {
            font-family: 'Noto Sans JP', sans-serif;
            background: #d6eadf;
            margin: 0;
            padding: 20px;
            color: #2f4f2f;
            display: flex;
            flex-direction: column;
            align-items: center;
            overflow: hidden;
            min-height: 100vh;
            background-image:
                radial-gradient(circle at 20% 20%, #a4c18c33 25%, transparent 40%),
                radial-gradient(circle at 80% 80%, #a4c18c33 25%, transparent 40%);
        }

        h1 {
            font-weight: 700;
            font-size: 2.4rem;
            margin-bottom: 0;
            text-shadow: 0 1px 3px #8bbf7f99;
        }

        #quizMenu {
            margin-top: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 12px;
        }

        button {
            background-color: #7ba963;
            border: none;
            color: #f0f7ea;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 10px;
            cursor: pointer;
            box-shadow: 0 3px 0 #5a7a44;
            font-weight: 600;
            min-width: 140px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #91bd72;
        }

        .quiz-container {
            background: #f0f7ea;
            border-radius: 16px;
            box-shadow: 0 3px 10px rgba(123, 169, 99, 0.3);
            max-width: 480px;
            padding: 20px;
            margin: 20px auto;
            width: 90%;
            color: #2f4f2f;
        }

        #quizTitle {
            font-size: 1.4rem;
            margin-bottom: 15px;
            font-weight: 700;
            text-align: center;
        }

        .question {
            font-size: 1.1rem;
            margin-bottom: 12px;
        }

        .answers button {
            display: block;
            width: 100%;
            margin: 6px 0;
            font-size: 1rem;
            padding: 10px;
            border-radius: 8px;
            background-color: #b5d6a1;
            font-weight: 600;
            color: #2f4f2f;
        }

        .answers button:hover {
            background-color: #a3c68a;
        }

        #result {
            margin-top: 20px;
            font-size: 1.2rem;
            font-weight: 700;
            color: #466c34;
            text-align: center;
        }

        #backBtn {
            margin-top: 20px;
            background-color: #5a7a44;
        }

        #backBtn:hover {
            background-color: #738f58;
        }
    </style>
</head>

<body>

    <h1>🍵 Café Midori Quiz Room 🍵</h1>

    <div id="quizMenu">
        <p style="width:100%; text-align:center; font-weight:600; color:#466c34;">Choose a Quiz:</p>
        <button onclick="startQuiz('coffee')">Coffee Knowledge</button>
        <button onclick="startQuiz('coffeeInnovation')">coffee Innovation</button>
        <button onclick="startQuiz('coffeeTrivia')">coffee Trivia</button>
        <button onclick="startQuiz('latte')">Latte Art Styles</button>
        <button onclick="startQuiz('escape')">Escape Room Challenge</button>
        <button onclick="startQuiz('catch')">Endless Catch Quiz</button>
        <button onclick="startQuiz('origins')">Coffee Origins</button>
        <button onclick="startQuiz('tea')">Tea Time</button>
        <button onclick="startQuiz('barista')">Barista Skills</button>
        <button onclick="startQuiz('sustainability')">Sustainable Coffee</button>
        <button onclick="startQuiz('brewing')">Brewing Methods</button>
        <button onclick="startQuiz('cafeCulture')">Café Culture</button>
        <button onclick="startQuiz('equipment')">Coffee Equipment</button>
        <button onclick="startQuiz('flavors')">Flavor Profiles</button>
        <button onclick="startQuiz('history')">History of Coffee</button>
        <button onclick="startQuiz('myths')">Myths & Facts</button>
        <button onclick="startQuiz('caffeine')">Caffeine Science</button>
        <button onclick="startQuiz('funFacts')">Fun Coffee Facts</button>

        <button onclick="startQuiz('coffeeArt')">Coffee & Art</button>
        <button onclick="startQuiz('coffeeMusic')">Coffee & Music</button>
        <button onclick="startQuiz('famousCafes')">Famous Cafés</button>
        <button onclick="startQuiz('coffeeBooks')">Coffee & Books</button>
        <button onclick="startQuiz('seasonal')">Seasonal Coffee Drinks</button>
        <button onclick="startQuiz('world')">Coffee Around the World</button>
        <button onclick="startQuiz('health')">Coffee & Health</button>
        <button onclick="startQuiz('coffeePairs')">Coffee Pairs</button>
        <button onclick="startQuiz('advancedBarista')">Advanced Barista Skills</button>
    </div>


    <div id="quizSection" class="quiz-container" style="display:none;">
        <div id="quizTitle"></div>
        <div class="question" id="question"></div>
        <div class="answers" id="answers"></div>
        <div id="result"></div>
        <button id="backBtn" onclick="backToMenu()">Back to Menu</button>
    </div>

    <script>
        const quizzes = {
            coffee: {
                title: "Coffee Knowledge",
                questions: [{
                    question: "Where did Arabica coffee originate?",
                    answers: ["Brazil", "Ethiopia", "Vietnam", "Colombia"],
                    correct: "Ethiopia"
                }, {
                    question: "What does 'macchiato' mean?",
                    answers: ["Spotted", "Sweet", "Strong", "Milky"],
                    correct: "Spotted"
                }, {
                    question: "Largest coffee producer?",
                    answers: ["Colombia", "Vietnam", "Brazil", "Ethiopia"],
                    correct: "Brazil"
                }]
            },
            latte: {
                title: "Latte Art Styles",
                questions: [{
                    question: "Most common latte art pattern?",
                    answers: ["Heart", "Leaf", "Rosetta", "Tulip"],
                    correct: "Rosetta"
                }, {
                    question: "What is a 'Rosetta' inspired by?",
                    answers: ["A flower", "A leaf", "A heart", "A swirl"],
                    correct: "A leaf"
                }, {
                    question: "Essential tool for latte art?",
                    answers: ["Steam wand", "Grinder", "Espresso machine", "Milk frother"],
                    correct: "Steam wand"
                }]
            },
            escape: {
                title: "Escape Room Challenge",
                questions: [{
                    question: "Sum of 7, 3, and 5?",
                    answers: ["15", "35", "753", "13"],
                    correct: "15"
                }, {
                    question: "'I speak without a mouth…' What am I?",
                    answers: ["Echo", "Shadow", "Wind", "Fire"],
                    correct: "Echo"
                }, {
                    question: "Clue says 'Turn left, then right twice.' Where?",
                    answers: ["Left", "Right", "Straight", "Back"],
                    correct: "Right"
                }]
            },
            catch: {
                title: "Endless Catch",
                questions: [{
                    question: "Most important skill?",
                    answers: ["Speed", "Patience", "Luck", "Strategy"],
                    correct: "Strategy"
                }, {
                    question: "Helps you catch more?",
                    answers: ["Wider basket", "Smaller basket", "Faster", "Closing eyes"],
                    correct: "Wider basket"
                }, {
                    question: "Which to avoid?",
                    answers: ["Gold coin", "Bomb", "Fruit", "Power-up"],
                    correct: "Bomb"
                }]
            },
            origins: {
                title: "Coffee Origins",
                questions: [{
                    question: "Birthplace of coffee?",
                    answers: ["Asia", "Africa", "South America", "Europe"],
                    correct: "Africa"
                }, {
                    question: "Famous for Blue Mountain?",
                    answers: ["Jamaica", "Kenya", "Ethiopia", "Brazil"],
                    correct: "Jamaica"
                }, {
                    question: "Region for Kopi Luwak?",
                    answers: ["Indonesia", "Vietnam", "Colombia", "Ethiopia"],
                    correct: "Indonesia"
                }]
            },
            tea: {
                title: "Tea Time",
                questions: [{
                    question: "Matcha is…?",
                    answers: ["Green tea powder", "Black tea", "Herbal tea", "Oolong"],
                    correct: "Green tea powder"
                }, {
                    question: "Famous for Earl Grey?",
                    answers: ["England", "China", "India", "Japan"],
                    correct: "England"
                }, {
                    question: "Which tea is fermented?",
                    answers: ["Green", "Black", "White", "Herbal"],
                    correct: "Black"
                }]
            },
            barista: {
                title: "Barista Skills",
                questions: [{
                    question: "Ideal milk temp?",
                    answers: ["60-65°C", "70-75°C", "80-85°C", "90-95°C"],
                    correct: "60-65°C"
                }, {
                    question: "Grind for espresso?",
                    answers: ["Coarse", "Medium", "Fine", "Extra coarse"],
                    correct: "Fine"
                }, {
                    question: "Perfect espresso shot time?",
                    answers: ["15-20", "25-30", "35-40", "45-50"],
                    correct: "25-30"
                }]
            },
            sustainability: {
                title: "Sustainable Coffee",
                questions: [{
                    question: "What does 'Fair Trade' certify?",
                    answers: ["Price fairness", "Organic", "Local beans", "Caffeine level"],
                    correct: "Price fairness"
                }, {
                    question: "Farming that protects biodiversity?",
                    answers: ["Monoculture", "Shade-grown", "Deforestation", "Pesticides"],
                    correct: "Shade-grown"
                }, {
                    question: "Rainforest Alliance focuses on?",
                    answers: ["Environment & workers", "Espresso quality", "Roasting", "Milk froth"],
                    correct: "Environment & workers"
                }]
            },
            brewing: {
                title: "Brewing Methods",
                questions: [{
                    question: "Which uses a paper filter?",
                    answers: ["French Press", "Pour Over", "Espresso", "Moka Pot"],
                    correct: "Pour Over"
                }, {
                    question: "Strongest coffee?",
                    answers: ["Cold Brew", "French Press", "Espresso", "Aeropress"],
                    correct: "Espresso"
                }, {
                    question: "Not a brewing method?",
                    answers: ["Siphon", "Chemex", "Blender", "Percolator"],
                    correct: "Blender"
                }]
            },
            cafeCulture: {
                title: "Café Culture",
                questions: [{
                    question: "City known for café culture?",
                    answers: ["Vienna", "Beijing", "Lagos", "Sydney"],
                    correct: "Vienna"
                }, {
                    question: "In Italy, cappuccino is drunk…?",
                    answers: ["Morning", "Lunch", "Dinner", "Late night"],
                    correct: "Morning"
                }, {
                    question: "What is 'kopi tiam'?",
                    answers: ["Singapore café", "Coffee bean", "Roasting method", "Latte art"],
                    correct: "Singapore café"
                }]
            },
            equipment: {
                title: "Coffee Equipment",
                questions: [{
                    question: "What does a burr grinder do?",
                    answers: ["Grind evenly", "Steam milk", "Brew", "Filter"],
                    correct: "Grind evenly"
                }, {
                    question: "Used to tamp espresso?",
                    answers: ["Spoon", "Tamp", "Portafilter", "Mug"],
                    correct: "Tamp"
                }, {
                    question: "Espresso handle called?",
                    answers: ["Portafilter", "Carafe", "Pitcher", "Tamper"],
                    correct: "Portafilter"
                }]
            },
            flavors: {
                title: "Flavor Profiles",
                questions: [{
                    question: "Common Ethiopian note?",
                    answers: ["Berry", "Caramel", "Nutty", "Smoky"],
                    correct: "Berry"
                }, {
                    question: "Dark roast tastes…?",
                    answers: ["Bitter", "Sour", "Sweet", "Fruity"],
                    correct: "Bitter"
                }, {
                    question: "Biggest flavor factor?",
                    answers: ["Bean origin", "Cup color", "Spoon", "Table height"],
                    correct: "Bean origin"
                }]
            },
            history: {
                title: "History of Coffee",
                questions: [{
                    question: "Who discovered coffee?",
                    answers: ["Kaldi", "Columbus", "Marco Polo", "Cleopatra"],
                    correct: "Kaldi"
                }, {
                    question: "First coffeehouse?",
                    answers: ["Mecca", "Rome", "Paris", "London"],
                    correct: "Mecca"
                }, {
                    question: "Coffee spread via…?",
                    answers: ["Trade routes", "Birds", "Planes", "TV"],
                    correct: "Trade routes"
                }]
            },
            myths: {
                title: "Myths & Facts",
                questions: [{
                    question: "Does coffee stunt growth?",
                    answers: ["No", "Yes", "Sometimes", "Only kids"],
                    correct: "No"
                }, {
                    question: "Is decaf 100% free of caffeine?",
                    answers: ["No", "Yes", "Depends", "Only water"],
                    correct: "No"
                }, {
                    question: "Does coffee dehydrate?",
                    answers: ["Not significantly", "A lot", "Completely", "Only cold brew"],
                    correct: "Not significantly"
                }]
            },
            caffeine: {
                title: "Caffeine Science",
                questions: [{
                    question: "Caffeine is a…?",
                    answers: ["Stimulant", "Vitamin", "Mineral", "Protein"],
                    correct: "Stimulant"
                }, {
                    question: "How long does caffeine stay?",
                    answers: ["4-6 hours", "1 hour", "24 hours", "5 mins"],
                    correct: "4-6 hours"
                }, {
                    question: "Which has more caffeine?",
                    answers: ["Espresso", "Drip", "Tea", "Milk"],
                    correct: "Drip"
                }]
            },
            funFacts: {
                title: "Fun Facts",
                questions: [{
                    question: "Most expensive coffee?",
                    answers: ["Kopi Luwak", "Arabica", "Robusta", "Espresso"],
                    correct: "Kopi Luwak"
                }, {
                    question: "Coffee beans are…?",
                    answers: ["Seeds", "Nuts", "Leaves", "Roots"],
                    correct: "Seeds"
                }, {
                    question: "Top coffee-drinking country?",
                    answers: ["Finland", "USA", "Italy", "Brazil"],
                    correct: "Finland"
                }]
            },
            coffeeArt: {
                title: "Coffee & Art",
                questions: [{
                        question: "Which art form uses coffee as medium?",
                        answers: ["Painting", "Sculpture", "Dance", "Music"],
                        correct: "Painting"
                    },
                    {
                        question: "What is 'latte art' drawn on?",
                        answers: ["Milk foam", "Plate", "Canvas", "Cup handle"],
                        correct: "Milk foam"
                    },
                    {
                        question: "Which pattern is common in latte art?",
                        answers: ["Heart", "Square", "Star", "Diamond"],
                        correct: "Heart"
                    }
                ]
            },
            coffeeMusic: {
                title: "Coffee & Music",
                questions: [{
                        question: "Jazz and coffee are famous in which city?",
                        answers: ["New Orleans", "Tokyo", "Paris", "London"],
                        correct: "New Orleans"
                    },
                    {
                        question: "Which genre is often played in cozy cafés?",
                        answers: ["Jazz", "Heavy Metal", "EDM", "Rap"],
                        correct: "Jazz"
                    },
                    {
                        question: "What sound is iconic in a café?",
                        answers: ["Espresso machine", "Bass guitar", "Car engine", "Bell tower"],
                        correct: "Espresso machine"
                    }
                ]
            },
            famousCafes: {
                title: "Famous Cafés",
                questions: [{
                        question: "Oldest café in Europe?",
                        answers: ["Café Florian", "Starbucks", "Café de Flore", "Café Central"],
                        correct: "Café Florian"
                    },
                    {
                        question: "Café Central is located in…",
                        answers: ["Vienna", "New York", "Rome", "Cairo"],
                        correct: "Vienna"
                    },
                    {
                        question: "Which city is known for its cat cafés?",
                        answers: ["Tokyo", "Berlin", "Sydney", "Madrid"],
                        correct: "Tokyo"
                    }
                ]
            },
            coffeeBooks: {
                title: "Coffee & Books",
                questions: [{
                        question: "Popular café-bookstore chain?",
                        answers: ["Barnes & Noble", "Waterstones", "Amazon", "Chapters"],
                        correct: "Barnes & Noble"
                    },
                    {
                        question: "A common activity in cafés?",
                        answers: ["Reading", "Fishing", "Cooking", "Driving"],
                        correct: "Reading"
                    },
                    {
                        question: "Which drink is often paired with a novel?",
                        answers: ["Coffee", "Soda", "Water", "Milkshake"],
                        correct: "Coffee"
                    }
                ]
            },
            seasonal: {
                title: "Seasonal Coffee Drinks",
                questions: [{
                        question: "Pumpkin Spice Latte is served in?",
                        answers: ["Autumn", "Winter", "Summer", "Spring"],
                        correct: "Autumn"
                    },
                    {
                        question: "Peppermint Mocha is most popular during?",
                        answers: ["Winter", "Spring", "Summer", "Autumn"],
                        correct: "Winter"
                    },
                    {
                        question: "Iced coffee is especially loved in…",
                        answers: ["Summer", "Autumn", "Winter", "Spring"],
                        correct: "Summer"
                    }
                ]
            },
            world: {
                title: "Coffee Around the World",
                questions: [{
                        question: "Turkish coffee is known for its…",
                        answers: ["Foam", "Milk", "Sugar", "Ice"],
                        correct: "Foam"
                    },
                    {
                        question: "In Italy, espresso is usually…",
                        answers: ["Short & strong", "Long & mild", "With syrup", "Blended"],
                        correct: "Short & strong"
                    },
                    {
                        question: "In Sweden, coffee breaks are called…",
                        answers: ["Fika", "Siesta", "Chai", "Brunch"],
                        correct: "Fika"
                    }
                ]
            },
            health: {
                title: "Coffee & Health",
                questions: [{
                        question: "Coffee may improve…",
                        answers: ["Alertness", "Hair growth", "Vision", "Hearing"],
                        correct: "Alertness"
                    },
                    {
                        question: "Caffeine is a natural…",
                        answers: ["Stimulant", "Sedative", "Vitamin", "Mineral"],
                        correct: "Stimulant"
                    },
                    {
                        question: "Too much coffee may cause…",
                        answers: ["Insomnia", "Stronger bones", "Better eyesight", "Height growth"],
                        correct: "Insomnia"
                    }
                ]
            },
            coffeePairs: {
                title: "Coffee Pairs",
                questions: [{
                        question: "Espresso pairs best with…",
                        answers: ["Biscotti", "Pizza", "Fries", "Burger"],
                        correct: "Biscotti"
                    },
                    {
                        question: "Cappuccino is often served with…",
                        answers: ["Croissant", "Chips", "Soup", "Steak"],
                        correct: "Croissant"
                    },
                    {
                        question: "Mocha combines coffee and…",
                        answers: ["Chocolate", "Vanilla", "Strawberry", "Banana"],
                        correct: "Chocolate"
                    }
                ]
            },
            advancedBarista: {
                title: "Advanced Barista Skills",
                questions: [{
                        question: "What is a ristretto?",
                        answers: ["Short espresso", "Long espresso", "Latte", "Cappuccino"],
                        correct: "Short espresso"
                    },
                    {
                        question: "What is a 'dry' cappuccino?",
                        answers: ["More foam", "More milk", "No espresso", "No milk"],
                        correct: "More foam"
                    },
                    {
                        question: "What is 'dialing in' in coffee?",
                        answers: ["Adjusting grind", "Pouring milk", "Cleaning machine", "Filling beans"],
                        correct: "Adjusting grind"
                    }
                ]
            },
            coffeeInnovation: {
                title: "Coffee Innovations",
                questions: [{
                        question: "What is nitro coffee infused with?",
                        answers: ["Nitrogen", "Oxygen", "Helium", "Carbon dioxide"],
                        correct: "Nitrogen"
                    },
                    {
                        question: "Which is a sustainable innovation in coffee?",
                        answers: ["Reusable cups", "Plastic straws", "More sugar", "More paper"],
                        correct: "Reusable cups"
                    },
                    {
                        question: "What is a coffee cube?",
                        answers: ["Frozen coffee", "Chocolate", "Espresso bean", "Caramel candy"],
                        correct: "Frozen coffee"
                    }
                ]
            },
            coffeeTrivia: {
                title: "Coffee Trivia",
                questions: [{
                        question: "How many cups of coffee are consumed daily worldwide?",
                        answers: ["2 billion", "100 million", "10 billion", "500 million"],
                        correct: "2 billion"
                    },
                    {
                        question: "What color are ripe coffee cherries?",
                        answers: ["Red", "Green", "Blue", "Yellow"],
                        correct: "Red"
                    },
                    {
                        question: "What is the world record for most espresso shots in an hour?",
                        answers: ["Over 5,000", "Over 100", "Over 1,000", "Over 500"],
                        correct: "Over 5,000"
                    }
                ]
            },

        };

        let currentQuiz = null,
            currentQ = 0,
            score = 0;

        function startQuiz(type) {
            currentQuiz = quizzes[type];
            currentQ = 0;
            score = 0;
            document.getElementById("quizMenu").style.display = "none";
            document.getElementById("quizSection").style.display = "block";
            document.getElementById("quizTitle").textContent = currentQuiz.title;
            showQuestion();
        }

        function showQuestion() {
            const q = currentQuiz.questions[currentQ];
            document.getElementById("question").textContent = q.question;
            const answersDiv = document.getElementById("answers");
            answersDiv.innerHTML = "";
            q.answers.forEach(ans => {
                const btn = document.createElement("button");
                btn.textContent = ans;
                btn.onclick = () => checkAnswer(ans);
                answersDiv.appendChild(btn);
            });
            document.getElementById("result").textContent = "";
        }

        function checkAnswer(ans) {
            const q = currentQuiz.questions[currentQ];
            if (q.correct && ans === q.correct) score++;
            currentQ++;
            if (currentQ < currentQuiz.questions.length) showQuestion();
            else showResult();
        }

        function showResult() {
            document.getElementById("question").textContent = "";
            document.getElementById("answers").innerHTML = "";
            document.getElementById("result").innerHTML = `🎉 You scored <strong>${score}</strong> of <strong>${currentQuiz.questions.length}</strong>!`;
        }

        function backToMenu() {
            document.getElementById("quizMenu").style.display = "flex";
            document.getElementById("quizSection").style.display = "none";
        }
    </script>

</body>

</html>