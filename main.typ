#import "templates/thesis.typ":*
#import "pages/cover.typ": cover
#import "pages/outline.typ": outline-page
#import "utils/utils.typ":*


// #outline-page()
#show :it => conf(it)
#cover(project_name: "1", 
        name: "1",
        student_id: "1",
        tel_student: "1",
        email_student: "1",
        collage_student: "1",
        mentor: "1",
        profession: "1",
        tel_mentor: "1",
        email_mentor: "1",
        collage_mentor: "1",
        date:auto
        )
        
#pagebreak()

#outline-page(title: "1",)

#pagebreak()

#report_title(title_content:"一、项目团队成员",title_tips:"包括项目负责人、按顺序")
#table(
  columns: (auto, auto, auto,auto, auto),
  rows: (auto,2cm,2cm,2cm),
  inset: 20pt,
  align: center,
  [姓名], [所在学院], [学号],[联系电话],[本人签字],
  [张三],[基础学部],[1234567893],[114514114514],
  image("figures/test1.png",height:1.2cm,width:2.3cm),
  [],[],[],[],[],
  [],[],[],[],[],
  [],[],[],[],[],
)

#report_title(title_content:"二、立项报告",title_tips:"字数在2000字以上，篇幅不够可附页")


#rect_content(content: [

== a
=== aa
]
,height: 10.746cm)

#rect_content(content:[
  === aaa
  == 项目背景
  === abc
  ==== dasddas
== abcd
=== abcd
==== abcd
==== abcd
===== abcd
== aaa
// + abcd
// + abcd
xsaxaAxavccssxaaxaxsaxaxxxxxxa
// #title_tips(content:"Tesis title",spacing_h:3.4cm)

=== abcd
=== abca
大叔大婶sebdaxacacanjnngjgj,jfyfjxascscccascscascccscsx草阿迪达斯达大厦啊实打实大师大师
// #let 
])

#rect_content(content:[

])
#rect_content(content:[
  
])
#rect_content(content:[
  
])
#rect_content(content:[
  
])
#rect_content(content:[
  
])
#rect_content(content:[
  
])
#rect_content(content:[
  
])

#pagebreak()
#report_title(title_content:"三、指导教师意见")

#rect_content(content:[
  #v(14em)

  #set align(right)
#[
  #set text(font: "宋体", size: 字号.四号)
  签 #h(1em) 名： #h(6em)
]
  #v(1em)
#[
  #set text(font: "宋体", size: 字号.小四)
  年#h(1em)月#h(1em)日#h(0.7em)
]
],height:9cm)


\
#report_title(title_content:"四、评审专家组意见")

#rect_content(content:[
  #v(14em)

  #set align(right)
#[
  #set text(font: "宋体", size: 字号.四号)
  批准经费： #h(5em)元 #h(5em)组长签名： #h(9em)
]
  #v(1.5em)
#[
  #set text(font: "宋体", size: 字号.小四)
  年#h(1em)月#h(1em)日#h(0.7em)
]
],height:10cm)












