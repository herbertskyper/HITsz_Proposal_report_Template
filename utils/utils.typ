#import "../theme/type.typ":*

#let title_tips(content:"",spacing_h:2.4cm) =[
  #set text(
    font: "New Computer Modern", 
    size: 字号.四号,
  )
  #v(-1.05cm)
  #h(spacing_h)
  (#content)
]

