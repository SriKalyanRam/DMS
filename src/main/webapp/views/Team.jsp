<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Team Showcase</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<style>
h1 {
    text-align:center;
}
     body{
            margin-top:50px!important;
        }
        .our-team{
            text-align: center;
            position: relative;
            color: #fff;
        }
        .our-team img{
            width: 100%;
            height: 100%;
        }
        .our-team .content{
            background: rgba(0, 0, 0, 0.6);
            position: absolute;
            height: 100%;
            width: 100%;
            left: 0;
            top: 0;
            text-align: center;
            padding-top: 45%;
            transform: perspective(400px) rotateX(-90deg);
            transform-origin: center top 0;
            transition: all 0.5s ease 0s;
            opacity: 0;
        }
        .our-team:hover .content,
        .our-team.active .content{
            opacity: 1;
            transform: perspective(400px) rotateX(0deg);
        }
        .our-team .content .title{
            margin: 0 0 10px;
            display: block;
            font-size: 25px;
            font-weight: 600;
        }
        .our-team .content .post{
            margin: 0 0 25px;
            display: block;
            font-size: 15px
        }
        .our-team .social{
            margin: 0;
            padding: 0;
            list-style-type: none;
        }
        .our-team .social li{
            display: inline-block;
        }
        .our-team .social li a{
            display: block;
            color: #fff;
            font-size: 20px;
            height: 40px;
            width: 40px;
            line-height: 40px;
            border-radius: 0;
            background-color: #F32248;
            margin-right: 5px;
            transition: all 0.5s ease 0s;
            position: relative;
        }
        .our-team .social li a:hover, .our-team.active .social li a{
            border-radius: 50%;
            text-decoration: none;
        }
        @media screen and (max-width: 990px){
            .our-team{
                margin-bottom: 30px;
            }
        }
</style>
</head>
<body>
    <h1 text-align: center> OUR TEAM </h1>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-sm-6">
            <div class="our-team">
                <div class="pic">
                    <img src="https://media.licdn.com/dms/image/D5603AQEGbjFPvJsCug/profile-displayphoto-shrink_400_400/0/1681142511026?e=1704326400&v=beta&t=9UYrVCGFWuP5cdNDfoFs-8HPXErXgCLa1a7u9l5My3I" alt="team member" class="img-responsive">
                </div>
                <div class="content">
                    <h3 class="title">Peter Johns</h3>
                    <span class="post">Web Developer</span>
                    <ul class="social">
                        <li><a href="#" class="fa fa-facebook"></a></li>
                        <li><a href="#" class="fa fa-twitter"></a></li>
                        <li><a href="#" class="fa fa-linkedin"></a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-6">
            <div class="our-team active">
                <div class="pic">
                    <img src="https://media.licdn.com/dms/image/D5603AQGyyAOiLdQt5w/profile-displayphoto-shrink_400_400/0/1693369342466?e=1704326400&v=beta&t=CjOrWNWQebfsFt2YzZ-QusJZxA3uV-J-3gqpDd_riD0" alt="team member" class="img-responsive">
                </div>
                <div class="content">
                    <h3 class="title">Kelli Smith</h3>
                    <span class="post">Web Developer</span>
                    <ul class="social">
                        <li><a href="#" class="fa fa-facebook"></a></li>
                        <li><a href="#" class="fa fa-twitter"></a></li>
                        <li><a href="#" class="fa fa-linkedin"></a></li>
                    </ul>
                </div>
            </div>
        </div>
       <div class="col-md-4 col-sm-6">
            <div class="our-team">
                <div class="pic">
                    <img src="https://media.licdn.com/dms/image/D5603AQGEcFhWKRq_Yw/profile-displayphoto-shrink_400_400/0/1699116018352?e=1704326400&v=beta&t=NxMY3_8WV_4L8dsv58xCn5c-5huX7ap2BY37fKXzJiA" alt="team member" class="img-responsive">
                </div>
                <div class="content">
                    <h3 class="title">Peter Johns</h3>
                    <span class="post">Web Developer</span>
                    <ul class="social">
                        <li><a href="#" class="fa fa-facebook"></a></li>
                        <li><a href="#" class="fa fa-twitter"></a></li>
                        <li><a href="#" class="fa fa-linkedin"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>