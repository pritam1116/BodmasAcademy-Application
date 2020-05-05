     function openForm() {
    	  var name = document.getElementById('name').value;
    	  var email = document.getElementById('email').value;
    	  var mobile = document.getElementById('mobile').value;
    	  var password = document.getElementById('password').value;
    	  var confirm_password = document.getElementById('confirm_password').value;
    	  
    	  if(mobile.length!=10 || !(password==confirm_password)){
    		  alert("Number must be 10 digits & Password must be same");
    		  return false;
    	  }
    	  else{
    		  return true;
    	  }
    	 /* window.open("registration_confirmation.jsp?param1=name&param2=email","height=400,width=400");
    	  var jspcall = "registration_confirmation.jsp?param1=name&param2=email"; */
    	//  document.getElementById("loginPopup").style.display="block";
    	 // window.location.href = jspcall;
          
      }
      
  /*    function closeForm() {
        document.getElementById("loginPopup").style.display= "none";
      }
      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
        var modal = document.getElementById('loginPopup');
        if (event.target == modal) {
          closeForm();
        }
      } */