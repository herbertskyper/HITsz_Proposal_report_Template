#import "templates/thesis.typ":*
#import "utils/utils.typ":*
#import "pages/cover.typ": cover
#import "pages/outline.typ": outline-page



//页面整体设置
#show :it => conf(it)

//封面
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

//目录
#pagebreak()
#outline-page(title: "1",)


//第一部分
#pagebreak()
#report_title(title_content:"一、项目团队成员",title_tips:"包括项目负责人、按顺序")
#table(
  columns: (1fr, 1fr, 1fr,1fr, 1fr),
  rows: (auto,auto,auto,auto),
  inset: 8pt,
  align: horizon + center,
  [姓名], [所在学院], [学号],[联系电话],[本人签字],
  [张三],[基础学部],[1234567893],[114514114514],
  image("figures/test1.png", width: 2.7cm,height:1.5cm),
  [],[],[],[],
  image("figures/test1.png", width: 2.7cm,height:1.5cm),
  [],[],[],[],
  image("figures/test1.png", width: 2.7cm,height:1.5cm),
  [],[],[],[],
  image("figures/test1.png", width: 2.7cm,height:1.5cm),
)


//第二部分
#report_title(title_content:"二、立项报告",title_tips:"字数在2000字以上，篇幅不够可附页")

//自动生成的页面框
#[#show: block_content
= 一级标题
== 二级标题
=== 三级标题
==== 四级标题
===== 五级标题
===== 一级标题
=== test
=== test
== test
=== test
== test
测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试

测试

#lorem(600)
]

//固定生成的页面框
// #rect_content(content: [

// ]
// ,height: 11.2cm)

// #rect_content(content:[

// ])


//第三、四部分
#pagebreak()

#report_title(title_content:"三、指导教师意见")
#rect_content(content:[
  #v(14em)
  #set align(right)
#[
  #set text(font: "宋体", size: 字号.四号)
  签 #h(1em) 名： #h(6em) //请修改此处
]
  #v(1em)
#[
  #set text(font: "宋体", size: 字号.小四)
  年#h(1em)月#h(1em)日#h(0.7em)//请修改此处
]
],height:9cm)


\
#report_title(title_content:"四、评审专家组意见")

#rect_content(content:[
  #v(14em)

  #set align(right)
#[
  #set text(font: "宋体", size: 字号.四号)
  批准经费： #h(5em)元 #h(5em)组长签名： #h(9em)//请修改此处
]
  #v(1.5em)
#[
  #set text(font: "宋体", size: 字号.小四)
  年#h(1em)月#h(1em)日#h(0.7em)//请修改此处
]
],height:9.5cm)












