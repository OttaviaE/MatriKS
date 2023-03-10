#' Define the coordinates of a pizza slice
#'
#' @param size.x
#' @param size.y
#' @param pos.x
#' @param pos.y
#' @param theta1
#' @param theta2
#' @param lty
#' @param lwd
#' @param vis
#' @param shd
#'
#' @return
#' @export
#'
#' @examples
slice <- function(size.x =15,
                  size.y = 0,pos.x=0,
                  pos.y=0,
                  theta1 = pi/4,
                  theta2 = 3*pi/4,
                  lty = 1, lwd =3,
                  vis = 1,
                  shd = NA) {
  value <- list(
    shape = "slice",
    size.x = list(size.x),
    size.y = list(size.y),
    theta.1  = list(theta1),
    theta.2  = list(theta2),
    rotation = list(pi - pi / 4),
    pos.x = list(pos.x),
    pos.y = list(pos.y),
    lty = list(lty),
    lwd = list(lwd),
    num = list(2),
    nv =  list(100),
    shade = list(shd),
    visible = vis,
    tag = list("simple","fill", "rotate" )
  )
  attr(value, "class") <- "cell"
  value
}
#' Define the coordinates of a pacman
#'
#' @param size.x
#' @param size.y
#' @param pos.x
#' @param pos.y
#' @param theta1
#' @param theta2
#' @param lty
#' @param lwd
#' @param shd
#' @param vis
#'
#' @return
#' @export
#'
#' @examples
pacman <- function(size.x =sqrt(square()$ size.x[[1]]^2 /2),
                   size.y = 0,pos.x=0 ,pos.y=0,
                   theta1 = pi/4,
                   theta2 = 7*pi/4,
                   lty = 1, lwd =3,shd=NA,
                   vis = 1) {
  value <- list(
    shape = "pacman",
    size.x = list(size.x),
    size.y = list(size.y),
    theta.1  = list(theta1),
    theta.2  = list(theta2),
    rotation = list(pi - pi / 4),
    pos.x = list(pos.x),
    pos.y = list(pos.y),
    lty = list(lty),
    lwd = list(lwd),
    num = list(2),
    nv =  list(100),
    shade = list(shd),
    visible = vis,
    tag = list("simple","fill", "rotate" )
  )
  attr(value, "class") <- "cell"
  value
}
#' Define the coordinates of a pizza with four slices
#'
#' @param size.x
#' @param shd
#' @param lwd
#' @param lty
#'
#' @return
#' @export
#'
#' @examples
pizza.4 <- function(size.x = 15, shd = NA, lwd = 3, lty =1) {
  value <-cof(slice(size.x = size.x, shd = shd, lty = lty, lwd = lwd),
              slice(size.x = size.x,theta1 = 3*pi/4, theta2 = 5*pi/4, shd = shd,  lty = lty, lwd = lwd),
              slice(size.x = size.x,theta1 = 5*pi/4, theta2 = 7*pi/4, shd = shd, lty = lty, lwd = lwd),
              slice(size.x = size.x,theta1 = 7*pi/4, theta2 = 9*pi/4, shd = shd, lty = lty, lwd = lwd))
  value$tag <- list("compose4","fill")
  attr(value, "class") <- "cell"
  value
}
#' Define the coordinates of a single pizza with four slices
#'
#' @param size.x
#' @param shd
#' @param lwd
#' @param lty
#'
#' @return
#' @export
#'
#' @examples
s.pizza.4 <- function(size.x = 15, shd = NA, lwd = 3, lty =1) {
  value <-cof(slice(size.x = size.x, shd = shd, lty = lty, lwd = lwd),
              slice(size.x = size.x,theta1 = 3*pi/4, theta2 = 5*pi/4, shd = shd,  lty = lty, lwd = lwd),
              slice(size.x = size.x,theta1 = 5*pi/4, theta2 = 7*pi/4, shd = shd, lty = lty, lwd = lwd),
              slice(size.x = size.x,theta1 = 7*pi/4, theta2 = 9*pi/4, shd = shd, lty = lty, lwd = lwd),
              name = "s.pizza.4",
              single = TRUE)
  value$tag <- list("compose4","fill")
  attr(value, "class") <- "cell"
  value
}

#' Define the coordinates of a downward-facing left semi-circle
#'
#' @param size.x
#' @param size.y
#' @param pos.x
#' @param pos.y
#' @param theta1
#' @param theta2
#' @param shd
#' @param rotation
#' @param lty
#' @param lwd
#' @param vis
#'
#' @return
#' @export
#'
#' @examples
semi.circle <- function(size.x =sqrt(square()$ size.x[[1]]^2 /2),
                        size.y = 0,
                        pos.x=0 ,pos.y=0,
                        theta1 = pi/4,
                        theta2 = 5*pi/4,
                        shd = NA,
                        rotation = pi - pi / 4,
                        lty = 1,
                        lwd =3,
                        vis = 1) {
  value <- list(
    shape = "semi.circle",
    size.x = list(size.x),
    size.y = list(size.y),
    theta.1  = list(theta1),
    theta.2  = list(theta2),
    rotation = list(rotation),
    pos.x = list(pos.x),
    pos.y = list(pos.y),
    lty = list(lty),
    lwd = list(lwd),
    num = list(2),
    nv =  list(100),
    shade = list(shd),
    visible = vis,
    tag = list("simple","fill", "rotate" )
  )
  attr(value, "class") <- "cell"
  value
}

#' Define the coordinates of an upward-facing right semi-circle
#'
#' @param size.x
#' @param size.y
#' @param pos.x
#' @param pos.y
#' @param theta1
#' @param theta2
#' @param shd
#' @param rotation
#' @param lty
#' @param lwd
#' @param vis
#'
#' @return
#' @export
#'
#' @examples
semi.circle.inv <- function(size.x =sqrt(square()$ size.x[[1]]^2 /2),
                        size.y = 0,
                        pos.x=0 ,pos.y=0,
                        theta1 = 5*pi/4,
                        theta2 = pi/4,
                        shd = NA,
                        rotation = pi - pi / 4,
                        lty = 1,
                        lwd =3,
                        vis = 1) {
  value <- list(
    shape = "semi.circle.inv",
    size.x = list(size.x),
    size.y = list(size.y),
    theta.1  = list(theta1),
    theta.2  = list(theta2),
    rotation = list(rotation),
    pos.x = list(pos.x),
    pos.y = list(pos.y),
    lty = list(lty),
    lwd = list(lwd),
    num = list(2),
    nv =  list(100),
    shade = list(shd),
    visible = vis,
    tag = list("simple","fill", "rotate" )
  )
  attr(value, "class") <- "cell"
  value
}

#' Define the coordinates of a pizza with two slices
#'
#' @param size.x
#' @param size.y
#' @param pos.x
#' @param pos.y
#' @param shd
#' @param lty
#' @param lwd
#'
#' @return
#' @export
#'
#' @examples
pizza.2 <- function(size.x = 15, size.y = 0,
                  pos.x=0 ,pos.y=0,
                  shd = NA, lty = 1, lwd = 3) {
  value <-cof(semi.circle(size.x = size.x,
                          size.y = size.y,
                          pos.x = pos.x,
                          pos.y = pos.y,
                          shd = NA,
                          lty = lty,
                          lwd = lwd),
              semi.circle.inv(size.x = size.x,
                              size.y = size.y,
                              pos.x = pos.x,
                              pos.y = pos.y,
                              shd = NA,
                              lty = lty,
                              lwd = lwd))
  value$tag <- list("compose2","fill")
  attr(value, "class") <- "cell"
  value
}
#' Define the coordinates of a single pizza with two slices (to be used in diff_shapes)
#'
#' @param size.x
#' @param size.y
#' @param pos.x
#' @param pos.y
#' @param shd
#' @param lty
#' @param lwd
#'
#' @return
#' @export
#'
#' @examples
s.pizza.2 <- function(size.x = 15, size.y = 0,
                  pos.x=0 ,pos.y=0,
                  shd = NA, lty = 1, lwd = 3) {
  value <-cof(semi.circle(size.x = size.x,
                          size.y = size.y,
                          pos.x = pos.x,
                          pos.y = pos.y,
                          shd = NA,
                          lty = lty,
                          lwd = lwd),
              semi.circle.inv(size.x = size.x,
                              size.y = size.y,
                              pos.x = pos.x,
                              pos.y = pos.y,
                              shd = NA,
                              lty = lty,
                              lwd = lwd),
              name= "s.pizza.2",
              single = T)
  value$tag <- list("compose2","fill")
  attr(value, "class") <- "cell"
  value
}
#' Define the coordinates of an downward facing right semi-circle
#'
#' @param size.x
#' @param size.y
#' @param pos.x
#' @param pos.y
#' @param theta1
#' @param theta2
#' @param shd
#' @param rotation
#' @param lty
#' @param lwd
#' @param vis
#'
#' @return
#' @export
#'
#' @examples
semi.circle.rev <- function(size.x =sqrt(square()$ size.x[[1]]^2 /2),
                        size.y = 0,
                        pos.x=0 ,pos.y=0,
                        theta1 = 7*pi/4,
                        theta2 = 3*pi/4,
                        shd = NA,
                        rotation = pi - pi / 4,
                        lty = 1,
                        lwd =3,
                        vis = 1) {
  value <- list(
    shape = "semi.circle.rev",
    size.x = list(size.x),
    size.y = list(size.y),
    theta.1  = list(theta1),
    theta.2  = list(theta2),
    rotation = list(rotation),
    pos.x = list(pos.x),
    pos.y = list(pos.y),
    lty = list(lty),
    lwd = list(lwd),
    num = list(2),
    nv =  list(100),
    shade = list(shd),
    visible = vis,
    tag = list("simple","fill", "rotate" )
  )
  attr(value, "class") <- "cell"
  value
}
#' Define the coordinates of an upward facing left semi-circle
#'
#' @param size.x
#' @param size.y
#' @param pos.x
#' @param pos.y
#' @param theta1
#' @param theta2
#' @param shd
#' @param rotation
#' @param lty
#' @param lwd
#' @param vis
#'
#' @return
#' @export
#'
#' @examples
semi.circle.rev.inv <- function(size.x =sqrt(square()$ size.x[[1]]^2 /2),
                            size.y = 0,
                            pos.x=0 ,pos.y=0,
                            theta1 = 3*pi/4,
                            theta2 = 7*pi/4,
                            shd = NA,
                            rotation = pi - pi / 4,
                            lty = 1,
                            lwd =3,
                            vis = 1) {
  value <- list(
    shape = "semi.circle.inv",
    size.x = list(size.x),
    size.y = list(size.y),
    theta.1  = list(theta1),
    theta.2  = list(theta2),
    rotation = list(rotation),
    pos.x = list(pos.x),
    pos.y = list(pos.y),
    lty = list(lty),
    lwd = list(lwd),
    num = list(2),
    nv =  list(100),
    shade = list(shd),
    visible = vis,
    tag = list("simple","fill", "rotate" )
  )
  attr(value, "class") <- "cell"
  value
}
#' Define the coordinates of an inverse pizza with two slices
#'
#' @param size.x
#' @param size.y
#' @param pos.x
#' @param pos.y
#' @param shd
#' @param lty
#' @param lwd
#'
#' @return
#' @export
#'
#' @examples
pizza.2.rev <- function(size.x = 15, size.y = 0,
                  pos.x=0 ,pos.y=0,
                  shd = NA, lty = 1, lwd = 3) {
  value <-cof(semi.circle.rev(size.x = size.x,
                          size.y = size.y,
                          pos.x = pos.x,
                          pos.y = pos.y,
                          shd = NA,
                          lty = lty,
                          lwd = lwd),
              semi.circle.rev.inv(size.x = size.x,
                              size.y = size.y,
                              pos.x = pos.x,
                              pos.y = pos.y,
                              shd = NA,
                              lty = lty,
                              lwd = lwd))
  value$tag <- list("compose2","fill")
  attr(value, "class") <- "cell"
  value
}
#' Define the coordinates of a single inverse pizza with two slices (to be used in diff_shapes)
#'
#' @param size.x
#' @param size.y
#' @param pos.x
#' @param pos.y
#' @param shd
#' @param lty
#' @param lwd
#'
#' @return
#' @export
#'
#' @examples
s.pizza.2.rev <- function(size.x = 15, size.y = 0,
                    pos.x=0 ,pos.y=0,
                    shd = NA, lty = 1, lwd = 3) {
  value <-cof(semi.circle(size.x = size.x,
                          size.y = size.y,
                          pos.x = pos.x,
                          pos.y = pos.y,
                          shd = NA,
                          lty = lty,
                          lwd = lwd),
              semi.circle.inv(size.x = size.x,
                              size.y = size.y,
                              pos.x = pos.x,
                              pos.y = pos.y,
                              shd = NA,
                              lty = lty,
                              lwd = lwd),
              name= "s.pizza.2.rev",
              single = T)
  value$tag <- list("compose2","fill")
  attr(value, "class") <- "cell"
  value
}

