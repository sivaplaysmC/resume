#import "./lib/resume.typ": *
#import "./lib/mine.typ": project, achievement, education



#show: resume.with(
  name: "Sivaramakrishnan R",
  paper: "a4",
  tagline: "Exploring binaries, exposing vulnerabilities, enhancing security.",
  keywords: "cybersecurity, binary exploitation, C, Java, python, pwn, CTF, ethical hacking",

  icon-contact-header: (
    (link(sys.inputs.at("mailto_url", default: ""), sys.inputs.at("mail", default: ""))),
    (link(sys.inputs.at("tel_url", default: ""), sys.inputs.at("tel", default: ""))),
    (link(sys.inputs.at("linkedin_url", default: ""), sys.inputs.at("linkedin", default: ""))),
    (link(sys.inputs.at("github_url", default: ""), sys.inputs.at("github", default: ""))),
  ),
)

#pad(top: 10pt)[
  Cybersecurity enthusiast with a strong focus on binary exploitation and reverse engineering.
  Skilled in low-level system analysis to uncover vulnerabilities and strengthen defenses,
  while committed to ethical research, continuous learning, and contributing to the development of safer software.
]

= Experience

#company-heading("Firstsource", start: "January 2025", end: "July 2025")[
  #job-heading("Software Engineering Intern", location: "Navalur, Chennai")[
    Engineered a complete digital signage solution in C from the ground up, *cutting maintenance costs by over 78%* and streamlining device management across deployments.
    Built and deployed multiple *ASP.NET Framework* web applications, *significantly improving internal workflow efficiency* and *greatly enhancing usability for operational teams.*
  ]
]

#company-heading("Fly91", start: "May 2025", end: "August 2025" )[
  #job-heading("Backend Development Intern", location: "Thandalam, Chennai")[
    Developed the backend for Project Ultima, a key internal management tool, reducing manual intervention by 70% and improving system reliability.
    Designed and documented APIs using the *OpenAPI 3.0 specification*, *accelerating integration speed by 85%* and reducing onboarding time for new services to a fraction of what it was before.
  ]
]

= Projects

#project("Smart Classroom Management System", lang: "Python", tech: ("Django","REST API","Backend", "Celery"), link: "https://github.com/sivaplaysmC")[
  Engineered a smart classroom management system that streamlined daily operations and improved efficiency for modern educational institutions, enabling seamless coordination across mobile, web, desktop, and IoT platforms.
]

#project("TestCaseTornado", lang: "Python", tech: ("Linux",  "Networking", "Security"), link: "https://github.com/sivaplaysmC/TestCaseTornado")[
  Developed an HTTP web server to securely serve hidden test cases from a misconfigured Moodle environment, enabling controlled access for testing.
]

#project("Chip-8 Emulator", lang: "C", tech: ("CMake", "Ninja", "Emulation"), link: "https://github.com/sivaplaysmC/chip8-mark2" )[
  Implemented a standards-compliant Chip-8 emulator in C to strengthen skills in low-level programming, emulation, and system design, achieving a 95% pass rate on the official test suite.
]

= Leadership Experience

#company-heading("Intellexa REC", start: "May 2025", end: "August 2025" )[
  #job-heading(text(weight: "bold", "President"), location: "")[
    Led and organized major student events and competitions as President, driving strong participation, smooth execution, and lasting engagement within the organization.
  ]
]

= Education

#education(degree: "Bachelor of Computer Science and Engineering", institution: "Rajalakshmi Engineering College", from: "September 2023", to: "Present", grade: "CGPA: 7.89" )

= Achievements

#achievement("Smart India Hackathon 2024", category: "Hackathon", position: "Winner", date: "December 2024")[
  Programmed the *_backend component_* for a *Smart Classroom Management System*, which helped my team secure *1st place*.
]

#achievement("NCIIPC-AICTE Pentathon 2025", category: "Capture The Flag", position: "Finalist", date: "April 2025")[
  Solved *Binary exploitation, reverse-engineering* and miscellaneous CTF challenges. My team secured *rank 25 all over India*.
]
