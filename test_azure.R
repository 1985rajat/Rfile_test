
install.packages('datasets')
data<-datasets::AirPassengers
dec<-decompose(AirPassengers)
plot(dec)
install.packages('forecast')
library(forecast)

a=forecast::auto.arima(data)
p=forecast::forecast(a, h=12)

print(p$mean)


