library(tourr)
data = read.csv("D:\\DM\\Hotel Reservations.csv")
data = na.omit(data)

data = data[ , !names(data) %in% c("Booking_ID","type_of_meal_plan",
                                   "required_car_parking_space",
                                   "room_type_reserved",
                                   "market_segment_type",
                                   "repeated_guest",
                                   "booking_status",
                                   "arrival_year",
                                   "arrival_month",
                                   "arrival_date")]
animate_xy(data, col=data$booking_status) # the tour is grand_tour by default

           