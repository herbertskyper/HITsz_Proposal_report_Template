#import "../theme/type.typ":*

//用于生成报告的标题提示
#let title_tips(content:"",spacing_h:2.4cm) =[
  #set text(
    font: "New Computer Modern", 
    size: 字号.四号,
  )
  #v(-1.05cm)
  #h(spacing_h)
  (#content)
]

//用于生成报告的标题
#let report_title(title_content: "",title_tips: "")={
  set text(font:字体.宋体,size:字号.四号)
  "       "
  strong[#title_content]

  if title_tips != ""{
  "（"+title_tips+"）"
  }
}

//用于生成方框，并可以写入内容
#let rect_content(content: "",height: 23.5cm)=[
  #rect(
    width: 100%,
    height: height,
    [
      #v(0.3cm)
      #content
    ],
  )
]

// 用于创建一个不可见的标题，用于给 outline 加上短标题
#let invisible-heading(..args) = {
  set text(size: 0pt, fill: white)
  heading(numbering: none, ..args)
}

//用于生成block级别的方框
#let block_content(body) = {
  block(stroke: 1pt + black, inset: 10pt)[#body]
}

//用于产生组图的子图
#let subfigure(body, caption: "", numbering: "(a)") = {
 let figurecount = counter(figure)
 let subfigurecount = counter("subfigure")
 let subfigurecounterdisply = counter("subfigurecounter")
 let number = locate(loc => {
 let fc = figurecount.at(loc)
 let sc = subfigurecount.at(loc)
 if fc == sc.slice(0,-1) {
 subfigurecount.update(
 fc + (sc.last()+1,)
 )
 subfigurecounterdisply.update((sc.last()+1,))
 } else {
 subfigurecount.update( fc + (1,))
 subfigurecounterdisply.update((1,))
 }
 subfigurecounterdisply.display(numbering)
 })
 body
 v(-.65em)
 if not caption == none {
 align(center)[#number #caption]
 }
}