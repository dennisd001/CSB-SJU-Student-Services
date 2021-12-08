
<!DOCTYPE html>
<%@ page import="Student_Services.User.Account" %>
<%Account acc =  (Account) session.getAttribute("account");%>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="welcome.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="sidebar">
<div class="logo-details">
    <div class="logo_name">CSB|SJU <br> Student Services</div>
    <i class='bx bx-menu' id="btn" ></i>
</div>
<ul class="nav-list">
    <li>
        <i class='bx bx-search' ></i>
        <input type="text" placeholder="Search...">
        <span class="tooltip">Search</span>
    </li>
    <li>
        <a href="Welcome.jsp">
            <i class='bx bxs-home' ></i>
            <span class="links_name">Home</span>
        </a>
        <span class="tooltip">Home</span>
    </li>
    <li>
        <a href="Account.jsp">
            <i class='bx bx-user' ></i>
            <span class="links_name">Account</span>
        </a>
        <span class="tooltip">Account</span>
    </li>
    <li>
        <a href="category.jsp">
            <i class='bx bx-archive' ></i>
            <span class="links_name">Categories</span>
        </a>
        <span class="tooltip">Categories</span>
    </li>
    <li>
        <a href="AddProduct.jsp">
            <i class='bx bxs-plus-square'></i>
            <span class="links_name">Add Listing</span>
        </a>
        <span class="tooltip">Add Listing</span>
    </li>
    <li>
        <a href="viewListing.jsp">
            <i class='bx bx-list-ul'></i>
            <span class="links_name">My Listings</span>
        </a>
        <span class="tooltip">My Listings</span>
    </li>
    <li class="profile">
        <div class="profile-details">
            <!--<img src="profile.jpg" alt="profileImg">-->
            <div class="name_job">
                <%
                    String user;
                    if (acc.getFirst_name() == null || acc.getLast_name() == null) {
                        user = acc.getUsername();
                    }
                    else {
                        user = acc.getFirst_name() + " " + acc.getLast_name();
                    }
                %>
                <div class="name"><%=user%></div>
                <div class="details">User Account</div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <a href="Logout.jsp">
            <i class='bx bx-log-out' id="log_out" ></i>
        </a>
    </li>
</ul>
</div>
<script>
    let sidebar = document.querySelector(".sidebar");
    let closeBtn = document.querySelector("#btn");
    let searchBtn = document.querySelector(".bx-search");

    closeBtn.addEventListener("click", ()=>{
        sidebar.classList.toggle("open");
        menuBtnChange();//calling the function(optional)
    });

    searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
        sidebar.classList.toggle("open");
        menuBtnChange(); //calling the function(optional)
    });

    // following are the code to change sidebar button(optional)
    function menuBtnChange() {
        if(sidebar.classList.contains("open")){
            closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
        }else {
            closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
        }
    }
</script>
</body>
</html>


