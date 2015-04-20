# About Fahrenheit(# 화씨온도 : `F), Celsius(섭씨온도 : `c), Kelvin(# 절대온도 : K)

# 섭씨온도 --> 화씨온도 : (섭씨온도 + 40) * 1.8 - 40 = 화씨 온도
# 화씨온도 --> 섭씨온도 : (화씨온도 + 40) / 1.8 - 40 = 섭씨 온도

# source: http://www.asknumbers.com/fahrenheit-to-kelvin.aspx
# Formula A : Kelvin = (Fahrenheit + 459.67) * 5 / 9
# Formula B : Kelvin = (Fahrenheit - 32) * 5 / 9 + 273.15 
# For example: 68 oF = (68 + 459.67) * 5 / 9 = 293.15 K
# Formula A
fahr_to_kelvin_a <- function(fahr) {
  result <- (fahr + 459.67) * 5 / 9
  return(result)
}
# Formula B
fahr_to_kelvin_b <- function(fahr) {
  result <- (fahr - 32) * 5 / 9 + 273.15
  return(result)
}

print(fahr_to_kelvin_a(68))
print(fahr_to_kelvin_b(68))

# From kelvin to Celsius
# Formula : Celsius = Kelvin - 273.15
kelvin_to_celsius <- function(kelvin){
  celsius <- kelvin - 273.15
  return(celsius)
}
print(kelvin_to_celsius(0))

# From Fahrenheit to Celsius
# Formula : Celsius = (Fahrenheit -32) * 5 / 9 
# For example, 98.6 F --> 37 C

fahr_to_celsius_a <- function(fahr){
  celsius = (fahr - 32) * 5 /9
  return(celsius)
}

print(fahr_to_celsius_a(98.6))

fahr_to_celsius <- function(fahr){
  temp <- fahr_to_kelvin(fahr)
  celsius <- kelvin_to_celsius(temp)
  return(celsius)
}

print(fahr_to_celsius(98.6))  

fahr_to_celsius <- function(fahr){
  # 화씨 온도를 섭씨온도로 변환한다.
  # 입력 매개변수는 정수, 부동소수점.
  # 화씨 98.6을 입력하면 37도 섭씨로 계산값 반환, 
  # fahr_to_celsius(98.6) --> 37
  temp <- fahr_to_kelvin(fahr)
  celsius <- kelvin_to_celsius(temp)
  return(celsius)
}

print(fahr_to_celsius(98.6))  

