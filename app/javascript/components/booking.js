const updateBookingPrice = () => {
  const form = document.querySelector("#new_booking")
  if(form) {
    const startTime = document.querySelector("#booking_start_time")
    const endTime = document.querySelector("#booking_end_time") 
    const bookingPrice = document.querySelector("#booking_booking_price")
    startTime.addEventListener("change", (event) => {
      if (event.currentTarget.value && endTime.value){
        const startTimeMilliseconds = Date.parse(event.currentTarget.value)
        const endTimeMilliseconds = Date.parse(endTime.value)
        const hours = (endTimeMilliseconds - startTimeMilliseconds) / 3600000
        const bathroomPrice = parseInt(form.dataset.price)
        const totalBathroomPrice = Math.round(hours * bathroomPrice)
        
        bookingPrice.value = totalBathroomPrice
      }
    })
    endTime.addEventListener("change", (event) => {
      if (event.currentTarget.value && startTime.value){
        const endTimeMilliseconds = Date.parse(event.currentTarget.value)
        const startTimeMilliseconds = Date.parse(startTime.value)
        const hours = (endTimeMilliseconds - startTimeMilliseconds) / 3600000
        const bathroomPrice = parseInt(form.dataset.price)
        const totalBathroomPrice = Math.round(hours * bathroomPrice)
        
        bookingPrice.value = totalBathroomPrice
      }  
    })
  }
}
export{updateBookingPrice}