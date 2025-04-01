#import "universalis.typ" as uni

#show: uni.style

#set page(
  paper: "a4",
  columns: 2,
  numbering: "1",
  margin: (x: 1.5cm, y: 1.5cm),
  header-ascent: -5pt,
  header: rect(
    width: 100%,
    fill: uni.color.primary,
    text(
      font: "Nova Round",
      size: 20pt,
      fill: uni.color.secondary,
      align(
        center,
        [
          Universalis
        ],
      ),
    ),
  ),
  footer: none,
)
