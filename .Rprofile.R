remotes::install_github("faxiano/Conversion")
library(Conversion)

library(usethis)
library(devtools)

#'@param 'kmh' is Numeric
#'
#'@return 'ms' is Numeric; meters per second
#'
#'@description die Funktion rechnet km/h in m/s um
#'
#'@examples
#'Umrechung von 5km/h in m/s: kmh_in_ms(5): Output: 1.388889
#'@export

kmh_in_ms <- function(kmh) {
  ms = kmh/3.6
  return (ms)
}



#'@param 'ms' is Numeric
#'
#'@return 'kmh' is Numeric
#'
#'@description die Funktion rechnet m/s in km/h um
#'
#'@examples
#'Umrechung von 5m/s in km/h: ms_in_kmh(5): Output: 18
#'@export

ms_in_kmh <- function(ms) {
  kmh = ms*3.6
  return (kmh)
}


#'@param 'kmh' is Numeric
#'
#'@return 'mph' is Numeric
#'
#'@description die Funktion rechnet km/h in mph um
#'
#'@examples Umrechung von 5km/h in mph: kmh_in_mph(5): Output: 3.1
#'@export

kmh_in_mph <- function(kmh) {
  mph = kmh*0.62
  return (mph)
}


#'@param 'mph' is Numeric
#'
#'@return 'kmh' is Numeric
#'
#'@description die Funktion rechnet mph in km/h um
#'
#'@examples Umrechung von 5mph in km/h: mph_in_kmh(5): Output: 8.045
#'@export

mph_in_kmh <- function(mph) {
  kmh = mph*1.609
  return (kmh)
}


#'@param 'mph' is Numeric
#'
#'@return 'ms' is Numeric
#'
#'@description die Funktion rechnet mph in m/s um
#'
#'@examples Umrechung von 5mph in m/s: mph_in_ms(5): Output: 2.234722
#'@export

mph_in_ms <- function(mph) {
  ms = kmh_in_ms(mph_in_kmh(mph))
  return (ms)
}


#'@param 'kno' is Numeric
#'
#'@return 'kmh' is Numeric
#'
#'@description die Funktion rechnet Knoten in km/h um
#'
#'@examples Umrechung von 5kno in km/h: kno_in_kmh(5): Output: 9.26
#'@export

kno_in_kmh <- function(kno) {
  kmh = kno*1.852
  return (kmh)
}

devtools::document()
load_all()

document()
