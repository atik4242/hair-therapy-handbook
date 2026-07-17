#import "../config.typ": palette

#let product-color(kind) = if kind == "grey" {
  palette.grey_attack
} else if kind == "nizoral" {
  palette.nizoral
} else if kind == "minoxidil" {
  palette.minoxidil
} else if kind == "stamp" {
  palette.dermastamp
} else {
  palette.muted
}

