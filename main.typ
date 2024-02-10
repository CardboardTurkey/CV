#import "twentysecondcv.typ": *

#set text(font: "PT Sans")

#let blue_link(url, desc) = {
  link(url, text(fill: blue, underline(desc)))
}

/*
#1 period, like From - To
#2 title
#3 note, basic note
#4 addtional_note
#5 body: the main body
*/
#let openwork(
  period: "",
  title: "",
  note: "",
  addtional_note: "",
  body: ""
) = {
  grid(
    columns: (auto, 92%),
    column-gutter: 0.5em,
    period,
    par([
      #block()[
        #strong(title)
        #box(width: 1fr)
        #text(size: fontSize.footnotesize, note)
      ]
      #if (addtional_note.len() > 0) {
        block(addtional_note)
      }
      #body
    ])
  )
}

#main(
  [
    #profile(
      name: "Kiran Ostrolenk, PhD",
      jobtitle: "Senior Software Engineer",
    )

    #show_contacts(
      (
        (
          icon: "linkedin",
          fa-set: "Brands",
          text: blue_link("https://www.linkedin.com/in/kiran-ostrolenk-b0b956176/", "linkedin.com/in/kiran-ostrolenk-b0b95617"),
        ),
        (
          icon: "gitlab",
          fa-set: "Brands",
          text: blue_link("https://gitlab.com/CardboardTurkey", "github.com/CardboardTurkey"),
        ),
        (
          icon: "github",
          fa-set: "Brands",
          text: blue_link("https://github.com/CardboardTurkey", "github.com/CardboardTurkey"),
        ),
        (
          icon: "globe",
          fa-set: "Free Solid",
          text: blue_link("https://kiran.ostrolenk.co.uk/blog", "kiran.ostrolenk.co.uk/blog"),
        ),
        (
          icon: "phone",
          fa-set: "Free Solid",
          text: "+44 795 7611 114",
        ),
        (
          icon: "envelope",
          fa-set: "Free Solid",
          text: "kiran@ostrolenk.co.uk",
        ),
      )
    )

    #profile_section("Skills") My PhD in Physics required the translation of
    complex mathematics into efficient computer algorithms for the simulation of
    particle collisions. I developed strong skills:

    - rapidly learning new and difficult concepts,
    - communication of complex topics to experts and non-experts,
    - working productively in large collaborative projects.

    Since then I have deepened my expertise in engineering technology and practice

    - developing expertise in Rust and its ecosystem,
    - adhering to best practices such as continuous testing and reproducible builds,
    - engaging in FOSS - upstream contributions and remote collaboration.

  #profile_section("Interests")
    #show_interests((
      (
        interest: "Rust",
        score: 1,
      ),
      (
        interest: "Systems Engineering",
        score: 0.8,
      ),
      (
        interest: "Nixos",
        score: 0.8,
      ),
      (
        interest: "CI/CD",
        score: 0.7,
      ),
    ))
  ],
  [
    #body_section("Experience")
    #twentyitem(
      period: [May. 2021 - \Now],
      title: "Senior Software Engineer + Consultant",
      note: "Codethink",
      body: list(
        "Advised and delivered for clients in a broad range of domains - focused on safe, reproducible and (where applicable) open solutions.",
        "Engineered and led several Rust-based client projects. Most recently, delivered a performance-critical distributed system. Used " + emph("async") + " to meet performance requirements and carefully handled cancel/shutdown safety to ensure reliability.",
        "Team leadership, interfacing with clients and justifying decisions/progress.  Monitoring junior members, resolving day-to-day issues and working with PM to ensure work packages deliver on time",
      )
    )
    #body_section("Work in the open")
    #openwork(
      period: "  -",
      title: blue_link("https://gitlab.com/rust-ci/rust-ci", "Rust CI for Gitlab"),
      note: "Co-creator and lead maintainer",
      body: "A generic pipeline for use in any Rust project."
    )
    #openwork(
      period: "  -",
      title: blue_link("https://gitlab.com/CodethinkLabs/lorry/lorry2", "Lorry"),
      note: "Lead maintainer",
      body: "Mirroring service written in Rust. I was recently appointed maintainer. " + blue_link("https://gitlab.com/CodethinkLabs/lorry/lorry2/-/merge_requests?scope=all&state=merged&author_username=CardboardTurkey", "My improvements so far.")
    )
    #openwork(
      period: "  -",
      title: "Upstream contributions",
      body: list(
        "Rust: " + blue_link("https://github.com/a-maier/hepmc2/pull/1", "Add async API to") + " " + raw("HepMC2") + " crate (WIP at time of writing)",
        "Rust: " + blue_link("https://github.com/RonniSkansing/duration-string/pulls?q=is%3Apr+author%3Acardboardturkey", "Add feature and fixes") + " to " + raw("DurationString") + " library",
        "C: " + blue_link("https://gitlab.com/qemu-project/qemu/-/commits/master?author=Kiran%20Ostrolenk", "Contributed towards RISC-V Vector Cryptography") + " in " + raw("QEMU"),
        "Nix: Various additions/fixes to " + blue_link("https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+author%3Acardboardturkey+is%3Amerged", raw("nixpkgs")) + " and " + blue_link("https://github.com/nix-community/home-manager/pulls?q=is%3Apr+author%3Acardboardturkey+is%3Amerged", raw("home-manager")),
      )
    )
    #body_section("Education")
    #twentyitem(
      period: [Sep. 2016 - \Dec. 2020],
      title: "PhD Physics",
      note: "University of Manchester",
      // addtional_note: lorem(3),
      body:
"Improved the mathematical accuracy and efficiency of two particle collision simulators: " + blue_link("https://launchpad.net/mg5amcnlo", "MadGraph") + " and " + blue_link("https://herwig.hepforge.org/", "Herwig") + " - large C++ projects." + 
        list(
          "Accelerated some MadGraph calculations by 50% by re-modelling them as DAGs. "+blue_link("https://arxiv.org/abs/2102.00773", "arXiv:2102.00773"),
          "Evaluated two competing mathematical algorithms within Herwig. Determined why they disagreed and which was more accurate.",
        )
    )
    #twentyitem(
      period: [Sep. 2012 - \Sep. 2016],
      title: "MPhys Physics with Philosophy (first)",
      note: "University of Manchester",
      body: "Philosophy developed my critical thinking skills and the ability to solve abstract problems."
    )
    #body_section("Certificate")
    #twentyitem(
      period: [2022-09-14],
      title: "LPIC-1",
      note: blue_link("https://www.lpi.org/our-certifications/lpic-1-overview/")[Linux Professional Institute],
      body: ""
    )
    // #twentyitem(
    //   period: [2018-07-10],
    //   title: "Functional Safety Practitioner ",
    //   note: blue_link("https://www.exida.com/Training/Course/iso_26262_road_vehicles_functional_safety")[Exida],
    //   body: ""
    // )
    #twentyitem(
      period: [2022-06-09],
      title: "Cyber Security Practitioner",
      note: blue_link("https://www.exida.com/Training/Course/automotive-cybersecurity")[Exida],
      body: ""
    )
  ]
)

