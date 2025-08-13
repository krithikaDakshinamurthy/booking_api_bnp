package com.api.modal;

public class BookingDetailsDTO
{
    private String firstname;

    private String lastname;

    private BookingDates bookingdates;

    private String email;

    private String phone;

    public String getFirstname ()
    {
        return firstname;
    }

    public void setFirstname (String firstname)
    {
        this.firstname = firstname;
    }

    public String getLastname ()
    {
        return lastname;
    }

    public void setLastname (String lastname)
    {
        this.lastname = lastname;
    }
    
    public String getEmail()
    {
        return email;
    }

    public void setEmail (String email)
    {
        this.email = email;
    }
    
    public String getPhone()
    {
        return phone;
    }

    public void setPhone(String email)
    {
        this.phone = phone;
    }
    
    public BookingDates getBookingdates ()
    {
        return bookingdates;
    }

    public void setBookingdates (BookingDates bookingdates)
    {
        this.bookingdates = bookingdates;
    }
    
    
    @Override
    public String toString()
    {
        return "ClassPojo [firstname = "+firstname+", lastname = "+lastname+", bookingdates = "+bookingdates+", email = "+email+", phone = "+phone+"]";
    }
}