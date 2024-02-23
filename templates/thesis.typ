#import "../theme/type.typ": *
#import "../utils/numbering.typ": *
#import "../utils/counters.typ": cover_end_before_counter, cover_end_after_counter


#let conf(content) = {

  let show_if_after_cover_end_before(content) = {
    locate(loc => {
      if cover_end_before_counter.at(loc).first() > 0 {
        content
      }
    })
  }
  let show_if_after_cover_end_after(content) = {
    locate(loc => {
      if cover_end_after_counter.at(loc).first() > 0 {
        content
      }
    })
  }

  set page(
    paper: "a4",
    margin: (top: 3.8cm, left: 3cm, right: 3cm, bottom: 3cm)
  )


  set page(
    footer: {
      set align(center)
      locate(loc => {
          text()[
            #counter(page).at(loc).first()

        ]
      })
    }
  )

  show heading: it => {

    let format_heading(it: none, font: none, size: none, display_numbering: true) = {
      set text(font: font, size: size)

      if display_numbering {
        text(weight: "bold")[
          #counter(heading).display()
        ]
      }
      if it != none {
        text(weight: "bold")[
          #it.body.text
        ]
      }

      v(0.5em)

    }

      set par(first-line-indent: 0em)

    if it.level == 1 {
      align(center)[
      #format_heading(it: it, font: 字体.黑体, size: 字号.二号, display_numbering: false)
      ]
    } else if it.level == 2 {
      format_heading(it: it, font: 字体.黑体, size: 字号.三号)
    } else if it.level == 3 {
      format_heading(it: it, font: 字体.黑体, size: 字号.四号)
    } else if it.level == 4 {
      format_heading(it: it, font: 字体.黑体, size: 字号.四号)
    } else if it.level == 5 {
      format_heading(it: it, font: 字体.宋体, size: 字号.小四)
    }

  }


  set heading(numbering: heading_numbering)

  set par(first-line-indent: 2em, leading: 1em)

  set text(font: 字体.宋体, size: 字号.小四)

  content
}