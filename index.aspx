<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">

    <link href="images/favicon.ico" rel="icon" type="image/x-icon" />

    <title>שרון יוגב ריצה</title>

    <!-- Bootstrap core CSS -->

    <!-- Custom styles for this template -->
    <link href="jumbotron-narrow.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet" />
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <div class="container">
    <div class="row">

        <div class="face">
            <%--<img src="images/face.png" />--%>
            <span class="facetxt">
            <a href="https://www.facebook.com/sharonyogev.dietcoach" target="_blank">
                בקרו אותנו בפייסבוק
                <img src="images/facebook-icon.png" style="width: 16%;"/></a>
            </span>
            </div>
    </div>

        <div class="jumbotron">
            <div class="row">
                <div class="col-md-5 left">
                    <img src="images/legs.png" style="width:100%" class="" />
                    <span class="txt">
                    </span>

                    <div class="formbox" id="target">
                        <span class="formtxt">
                            לפרטים  נוספים ולאימון ניסיון בחינם!
                            מלאו את הפרטים ונחזור בהקדם
                        </span>

                        <span class="tri"></span>
                        <span class="tri"></span>
                        <span class="tri"></span>

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="inputEmail3" class="mylable control-label">שם:</label>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" id="name" name="name" placeholder="שם"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="mylable control-label">מייל:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="mail" name="mail" placeholder="מייל"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="mylable control-label">טל:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="phone" name="phone" placeholder="טל"/>
                                </div>
                            </div>
                            <div class="btndiv">
                             <img id="btnB" src="images/BTN.png" onclick="btnClick()" alt="btn"  />
                            </div>

                        </form>
                        <div id="loadingDiv">
                            
                            </div>
                    </div>


                </div>


                <div class="col-md-7">
                    <div class="logo visible-lg">
                        <img src="images/logo.png" />
                    </div>
                    
                    <div class="txtbox">
                        <img src="images/logo.png" class="hidden-lg" />
                        <span class="text1">חדש ב"שרון יוגב ריצה"
                            <br />
                            קבוצת ריצה למתחלים לחמישה ק"מ ראשונים בחמישה חודשים.

                        </span>
                        <span class="maintxt">בואו ללמוד מהי ריצה נכונה וללא פציעות ותגיעו תוך חמישה חודשים ללא
                            מאמץ
ובכיף לריצה של חמישה ק"מ.
זוהי תוכנית ריצה למתחילים בה נלמד אתכם איך מתחילים לרוץ, נדבר על נעלי ריצה
מומלצות, נדע מה אוכלים לפני ואחרי אימון ריצה ונעשה תרגילי כוח וגמישות והכל
בקלילות בכיף וללא מאמץ רב.
קבוצות הריצה יתקיימו במרכז הארץ עם המדריכים הטובים ביותר בעיר!!!
                        </span>
                        <span class="text1">
                         עלות כל תוכנית הריצה 700 ש"ח (140 לחודש)
                        </span>
                        <ul class="list">

                            <li>
                                <img src="images/v.png">קבוצת ריצה תל אביב</li>
                            <li>
                                <img src="images/v.png">קבוצת ריצה תל אביב צפון  </li>
                            <li>
                                <img src="images/v.png">קבוצת ריצה רמת גן</li>
                            <li>
                                <img src="images/v.png">קבוצת ריצה ראשון לציון</li>
                            <li>
                                <img src="images/v.png">קבוצת ריצה אבן יהודה ועוד...</li>
                            <li>
                                <img src="images/v.png">קבוצת ריצה מתקדמים, קבוצת ריצה הכנה למרתון!!!</li>

                        </ul>
                        <img style="float: left;" src="images/runing_man.png" />
                    </div>
                </div>

            </div>

            
        </div>

        <div class="row">
            <div class="col-md-4 ">
                    
                </div>
                <div class="col-md-8">
                <div class="contactbox">
                    <span class="contactinfo">
                   <strong> שרון יוגב - קואצ'רית הרזיה ומאמנת ריצה</strong>
                    <br />
                    נייד : 050-8561980  <a href="http://www.sharon-yogev.com" target="_self">www.sharon-yogev.com</a>
                        </span>
                        </div>
                </div>
                
            </div>
    
    </div>
    <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <script src="JavaScript.js"></script>
</body>
</html>
