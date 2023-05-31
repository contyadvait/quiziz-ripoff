struct Question {
    let question: String
    let correctAnswer: String
    let options: [String]
}

let questions = [
    Question(
        question: "What is the name of the phenomenon that causes light to bend when it passes through a medium of different density?",
        correctAnswer: "Refraction",
        options: ["Reflection",
                  "Diffraction",
                  "Interference",
                  "Refraction"]
    ), Question(
        question: "What is the term for the amount of disorder or randomness in a system?",
        correctAnswer: "Entropy",
        options: ["Enthalpy",
                  "Entropy",
                  "Energy",
                  "Equilibrium"]
    ),Question(
        question: "What is the third tallest mountain on Earth?",
        correctAnswer: "Kangchenjunga",
        options: ["Kilimanjaro",
                  "Everest",
                  "Kangchenjunga",
                  "Bukit Timah"]
    ), Question(
        question: "What is the name of the process by which a cell divides into two identical daughter cells?",
        correctAnswer: "Mitosis",
        options: ["Meiosis",
                  "Fission",
                  "Mitosis",
                  "Cytokinesis"]
    ), Question(
        question: "What is the name of the force that causes objects with mass to attract each other?",
        correctAnswer: "Gravity",
        options: ["Magnetism",
                  "Friction",
                  "Electrostatics",
                  "Gravity"]
    ),    Question(
        question: "What is the Riemann Hypothesis?",
        correctAnswer: "A conjecture about the distribution of prime numbers",
        options: [
            "A proof of the Goldbach Conjecture",
            "A theorem about the irrationality of pi",
            "A conjecture about the distribution of prime numbers",
            "A theorem on the convergence of infinite series"
        ]
    ),
    Question(
        question: "What is the name of the largest known prime number?",
        correctAnswer: "Mersenne prime",
        options: [
            "Gaussian prime",
            "Fermat prime",
            "Mersenne prime",
            "Catalan prime"
        ]
    ),
    Question(
        question: "Which mathematician developed the theory of elliptic curves?",
        correctAnswer: "Andrew Wiles",
        options: [
            "Carl Friedrich Gauss",
            "Pierre-Simon Laplace",
            "Andrew Wiles",
            "David Hilbert"
        ]
    ),
    Question(
        question: "What is the Collatz Conjecture?",
        correctAnswer: "A conjecture about the behavior of a particular sequence",
        options: [
            "A proof of the Poincaré Conjecture",
            "A theorem on the prime number theorem",
            "A conjecture about the behavior of a particular sequence",
            "A theorem on the stability of dynamical systems"
        ]
    ),
    Question(
        question: "Who proposed the Birch and Swinnerton-Dyer Conjecture?",
        correctAnswer: "Bryan Birch and Peter Swinnerton-Dyer",
        options: [
            "Bryan Birch and Peter Swinnerton-Dyer",
            "Alan Turing and John von Neumann",
            "Kurt Gödel and Georg Cantor",
            "Henri Poincaré and Évariste Galois"
        ]
    ),
    Question(question: "BONUS: What does YJ say at the end of every lesson?", correctAnswer: "See you Soon™!", options: ["See you soon!", "See you!", "See you Soon!", "See you Soon™!"])
]
