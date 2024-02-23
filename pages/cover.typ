#import "../theme/type.typ": *
#import "../utils/tablex.typ": gridx, colspanx

// #let thing(body) = style(styles => {
//   //测量字的宽度 经严谨测量 四号每个汉字宽14pt 每个标点宽7pt 
//   let size = measure(body, styles)
//   [Width of "#body" is #size.width]
// }) 

#let get_length(key) = {
  let width = (key.len() -1 )/3 * 14pt + 7pt
  return width // 每个汉字是3个字节 除以3后乘14pt 加上冒号的7pt
}

#let cover_info_key(content, font: 字体.宋体, size: 字号.四号) = {
    text(size: size, font: font, weight: "bold")[#content]

}

#let cover_info_value(content, width, font: 字体.宋体, size: 字号.四号) = {
  set align(center)
  rect(
      width: width ,//TODO 可以人工设置每个长度
      inset: 0pt,
      stroke: (
        bottom: 1pt + black
      ),
      text(
        font: font,
        size: size,
        bottom-edge: "descender"
      )[
        #content
      ]
    ) 
}


#let short_field(key, value) = {
  // set align(center)
  stack(dir:ltr)[#cover_info_key(key)][#cover_info_value(value, 100% - get_length(key))]
}

#let long_field(key, value) = {
  // set align(center)
  return colspanx(2, stack(dir:ltr)[#cover_info_key(key)][#cover_info_value(value, 100% - get_length(key))])
}

#let cover(
  project_name: "",
  name: "",
  student_id: "",
  tel_student: "",
  email_student: "",
  collage_student: "",

  mentor: "",
  profession: "",
  tel_mentor: "",
  email_mentor: "",
  collage_mentor: "",

  date:auto //若自定义日期 写作array形式 e.g. (2024, 2, 12)
  ) = {

  v(字号.小四 * 2)

  strong(text("附件：", font: 字体.黑体, size: 字号.四号, ))
  
  v(字号.五号 * 1)
  v(字号.小四 * 3)

  set align(center)
  par(strong(text("哈尔滨工业大学（深圳）\n", font: 字体.黑体, size: 字号.一号)))
  par(strong(text("大一年度项目立项报告", font: 字体.黑体, size: 字号.一号)))

  v(字号.小二 * 4)

  // set text(font: 字体.宋体)
  gridx(
    columns: (1fr, 1fr),
    row-gutter: 1.5em, // 行间距
    
    long_field("项目名称：", project_name),
    short_field("项目负责人：", name),
    short_field("学号：", student_id),
    short_field("联系电话：", tel_student),
    short_field("电子邮箱：", email_student),
    long_field("学院：", collage_student),

    v(1em), v(1em),

    short_field("指导教师：", mentor),
    short_field("职称：", profession),
    short_field("联系电话：", tel_mentor),
    short_field("电子邮箱：", email_mentor),
    long_field("学院：", collage_mentor),
  )


  set text(font: 字体.宋体, size: 字号.四号)
  if date == auto {
    date = datetime.today().display("填表日期：[year]年[month]月[day]日")
  } else {
    date = datetime(year: date.at(0), month: date.at(1), day: date.at(2))
  }
  place(bottom + center, date)

  }