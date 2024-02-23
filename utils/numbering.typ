#let heading_numbering(..nums) = {

  let nums_vec = nums.pos()

  if nums_vec.len() > 0 {
    let without_first = nums_vec.slice(1, nums_vec.len())
    // let without_second = nums_vec.slice(2, nums_vec.len())

    if without_first.len() == 4 [
      #numbering( "1)" , ..nums_vec.slice(4,5) )
      #h(0cm)
    ] 
    else if without_first.len() == 1 [
      #numbering( "(一)" , ..nums_vec.slice(1,2))
    ]
    else {
      numbering("1.1", ..without_first)
    }

    
  }
}