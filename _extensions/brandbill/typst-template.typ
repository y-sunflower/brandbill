#let article(
  title: none,
  invoiceID: none,
  date: none,
  font: "Aptos",
  logo_company: "sunflower.png",
  logo_client: "sunflower.png",
  company: none,
  company_info: none,
  client: none,
  client_info: none,
  fontsize: 11pt,
  doc,
) = {
  set page(
    paper: "us-letter",
    margin: (x: 1in, y: 0.8in),
    fill: rgb("#f9f7f4"),
  )
  set par(justify: true)
  set text(
    lang: "en",
    region: "US",
    font: font.text,
    size: fontsize,
  )

  align(left)[#text(title, size: 1.8em, weight: "bold", style: "normal", fill: black)]
  if invoiceID != none {
    align(right)[#block()[ID: #invoiceID]]
  }
  if date != none {
    align(right)[#block()[Date: #date]]
  }

  grid(
    columns: (2fr, 2fr),
    align(left)[#block()[
        #image(logo_company.text, width: 30%)
        #text("COMPANY", size: 1.2em) \
        #text(company.text, weight: "bold") \ \
        #text(company_info)
      ]],
    align(left)[#block(inset: (y: 0.1in))[
        #image(logo_client.text, width: 30%)
        #text("CLIENT", size: 1.2em) \
        #text(client.text, weight: "bold") \ \
        #text(client_info)
      ]],
  )

  v(1in)

  doc
}

