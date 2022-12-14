<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="PROJ5.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />--%>
    <style>
        html, body {
    height: 100%;
    width: 100%;
}

* {
    padding: 0;
    margin: 0;
    font-family: 'Nunito', sans-serif;
}
/*NavBar Css*/
nav {
    height: 9%;
    border: solid black 1px;
    position: sticky;
    background-color: #D3D3D3;
    display: flex;
    justify-content: space-between;
    font-family: 'Lato', sans-serif;
    border: none;
    box-shadow: 2px 2px 2px 2px gray;
}

#NavLogo {
    width: 40%;
    height: 100%;
    display: flex;
    justify-content: flex-start;
    gap: 30px;
    align-items: center;
    margin-left: 40px
}

    #NavLogo span {
        font-size: 20px;
        font-weight: bold;
    }
    /*Logo Image*/
    #NavLogo img {
        height: 50px;
        width: 100px;
    }
/*Nav Text*/
#NavText {
    display: flex;
    justify-content: center;
    gap: 80px;
    align-items: center;
    width: 60%;
    height: 100%;
}

    #NavText button {
        height: 80%;
        width: 15%;
        font-size: 18px;
        color: black;
        font-weight: bold;
        background-color: inherit;
        border: none;
    }

        #NavText button:hover {
            animation-name: bgcolorchange;
            animation-duration: 2s;
            animation-iteration-count: infinite;
            border-radius: 20px;
        }

i {
    font-size: 20px;
}

@keyframes bgcolorchange {
    50% {
        background-color: aliceblue
    }

    100% {
        background-color: #D3D3D3
    }
}

@media only screen and (min-device-width:300px) and (max-device-width:680px) {
    #NavLogo {
        justify-content: center;
    }

        #NavLogo span {
            display: none;
        }

    #NavText {
        width: 100%
    }

        #NavText button {
            font-size: 25px;
        }

    i {
        font-size: 28px;
    }
}
/*NavBar End--------------------------------------------------------------------*/
#AboutUsDiv {
    display: flex;
    align-items: center;
    gap: 30px;
    flex-direction: column;
    height: 70%;
    margin-top: 25px;
}

#Cards {
    display: flex;
    justify-content: center;
    gap: 40px;
    align-items: center;
    width: 80%;
    height: 70%;
}

.Card {
    background-color: #D3D3D3;
    color: black;
    display: flex;
    align-items: center;
    justify-content: space-evenly;
    flex-direction: column;
    font-size: 20px;
    border-radius: 10px;
    height: 300px;
    width: 30%;
    text-align: center;
    padding: 2px;
}

    .Card i {
        font-size: 60px;
    }

    .Card span {
        font-weight: bold;
    }

@media only screen and (min-device-width:300px) and (max-device-width:680px) {
    #AboutUsDiv h1 {
        font-size: 50px;
    }

    #Cards {
        flex-direction: column;
        height: 80%;
    }

    .Card {
        width: 60%;
        font-size: 30px;
    }
}
/*About Us End----------------------------------------------------------------------------------*/
#Footer {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 80px;
    height: 15%;
    width: 80%;
    margin-left: auto;
    margin-right: auto;
}

#FooterText {
    width: 50%;
    display: flex;
    justify-content: flex-end;
    font-size: 23px;
}

#FooterIcons {
    display: flex;
    justify-content: space-around;
    width: 50%;
}

    #FooterIcons i {
        font-size: 30px;
    }

@media only screen and (min-device-width:300px) and (max-device-width:680px) {
    #FooterIcons i {
        font-size: 50px;
    }

    #FooterText {
        font-size: 40px;
    }
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
   <nav>
        <div id="NavLogo">
       
           <img src="pic\My_project-1-removebg-preview.png"/>
        
           <span>P L O T B O U N D</span>
        </div>
        <div id="NavText">
            <button onclick="location.href='About.aspx'">About</button>
            <button onclick="location.href='Contact.aspx'">Contact</button>
            <button onclick="location.href='login.aspx'">Log In</button>
            <button><i class="fa-solid fa-cart-shopping"></i></button>
        </div>
     </nav>    </form>
</body>
</html>
