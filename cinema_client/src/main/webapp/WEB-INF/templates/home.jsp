<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

<head>
	<link href="<c:url value="/css/main.css"/>" rel="stylesheet">
    <meta charset="utf-8">
    <link rel="icon" href="favicon.ico">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="theme-color" content="#000000">
    <meta name="description" content="Web site created using create-react-app">
    <link rel="apple-touch-icon" href="logo192.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="manifest" href="manifest.json">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700&amp;display=swap" rel="stylesheet">
    <link href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <title>AP Movie</title>
    <link href="<c:url value="/css/2.fd207d57.chunk.css"/>" rel="stylesheet">
    <link href="<c:url value="/css/main.ffa69c8e.chunk.css"/>" rel="stylesheet">
    <link href="<c:url value="/css/animation.css"/>" rel="stylesheet">
    <link href="<c:url value="/css/component.css"/>" rel="stylesheet">
    <style data-styled="" data-styled-version="4.4.0"></style>
</head>

<body data-new-gr-c-s-check-loaded="14.1073.0" data-gr-ext-installed=""><noscript>You need to enable JavaScript to run
        this app.</noscript>
    <div id="root">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                <div class="navbar-brand"><a aria-current="page" class="active" href="/"
                        style="text-decoration: none;"><img
                            src="https://i0.wp.com/thegamehaus.com/wp-content/uploads/2020/05/Volibear_Emote.png?resize=256%2C256&amp;ssl=1"
                            alt="logo"><span class="text-logo">AP Movie</span></a></div>
                <div class="header__mobile">
                    <div class="header__login">
                        <div class="login__link" aria-haspopup="true" style="cursor: pointer;"><img
                                src="https://i.ibb.co/PCjW83Y/avt.png" alt="user"><span
                                class="login__text">nguyen456</span></div>
                    </div>
                </div><button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active"><a aria-current="page" class="nav-link active" href="/allmovie">
                                <div class="d-flex flex-column"><i class="mb-2 fa fa-film"></i><span>Phim</span></div>
                            </a></li>
                        <li class="nav-item"><a class="nav-link" href="/clustercinema">
                                <div class="d-flex flex-column"><i class="mb-2 fa fa-project-diagram"></i><span>Cụm
                                        Rạp</span></div>
                            </a></li>
                        <li class="nav-item"><a class="nav-link" href="/news">
                                <div class="d-flex flex-column"><i class="mb-2 fa fa-newspaper"></i><span>Tin Tức</span>
                                </div>
                            </a></li>
                        <li class="nav-item"><a aria-current="page" class="nav-link active" href="/#forMobile">
                                <div class="d-flex flex-column"><i class="mb-2 fa fa-mobile"></i><span>Ứng dụng</span>
                                </div>
                            </a></li>
                    </ul>
                    <div class="header__login">
                        <div class="login__link" aria-haspopup="true" style="cursor: pointer;"><img
                                src="https://i.ibb.co/PCjW83Y/avt.png" alt="user"><span
                                class="login__text">nguyen456</span></div>
                    </div>
                </div>
            </nav>
        </header>
        <div class="container all-movie">
            <div class="search">
                <div id="wrap">
                    <form autocomplete="on"><input id="search" name="search" type="text"
                            placeholder="Nhập tên phim cần tìm" value=""><input id="search_submit" type="submit"></form>
                </div>
            </div>
            <div class="row movielist-content">
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10530">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Doctor stranger 2</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">10-05-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Trong Phù Thủy Tối Thượng Trong Đa Vũ Trụ Hỗn Loạn từ Marvel
                                        Studios, MCU đã mở khoá Đa Vũ Trụ và nới rộng ranh giới của nó xa hơn trước.
                                        Hành trình bước vào hư không với Phù Thuỷ Tối Thượng, người với sự giúp đỡ của
                                        các đồng minh thần bí cả cũ và mới, vượt qua những thực tại thay thế nguy hiểm
                                        và đáng sợ của Đa Vũ Trụ để đối đầu với một kẻ thù mới bí ẩn..</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="content-right" transitionname="fade" transitionappeartimeout="1000"
                                    style="background-image: url(&quot;http://movie0706.cybersoft.edu.vn/hinhanh/doctor-stranger-2_gp09.jpg&quot;);">
                                </div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10531">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Nghề Siêu dễ</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">11-05-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Ông Thái là một cảnh sát về hưu nhưng không chịu an phận thủ
                                        thường, hàng ngày vẫn đi tìm bắt tội phạm vặt trong xóm cho đỡ nhớ nghề. Một
                                        ngày kia, Hoàng - tên trùm ma túy mới ra tù bỗng dưng chuyển đến xóm ông và mở
                                        một văn phòng bất động sản. Nghi ngờ đây là nơi làm ăn phi pháp, ông Thái quyết
                                        định âm thầm điều tra. Ông mua lại tiệm cơm tấm đối diện trụ sở của Hoàng để làm
                                        nơi theo dõi, đồng thời thu nạp Thu - Phú - Vinh - Mèo, đám thanh niên “bất hảo”
                                        trong xóm về quán hỗ trợ buôn bán để rảnh tay "phá án". Trớ trêu thay, tiệm cơm
                                        bất ngờ nổi tiếng và ăn nên làm ra, khiến cho "chuyên án đặc biệt" của ông đứng
                                        trước nguy cơ đổ bể.</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="content-right" transitionname="fade" transitionappeartimeout="1000"
                                    style="background-image: url(&quot;http://movie0706.cybersoft.edu.vn/hinhanh/nghe-sieu-de_gp09.jpg&quot;);">
                                </div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10532">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Tăng tốc phía em</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">11-05-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Kao (Nat Kitcharit) là một nhà vô địch thế giới môn xếp ly
                                        tốc độ (Speed Stack). Tuy thành công và nổi tiếng nhưng Kao lại chỉ như một đứa
                                        trẻ to xác suốt ngày chỉ ăn, ngủ và tập luyện. Mọi vấn đề xung quanh anh đều một
                                        tay Jay (Yaya) bạn gái anh quán xuyến. Đến một ngày khi Jay quyết định chia tay
                                        thì Kao như bị mất tất cả. Anh phải bắt đầu học những kỹ năng sống cơ bản để có
                                        thể tự sống một mình và chăm sóc bản thân. Song song đó những đối thủ mới cũng
                                        xuất hiện và đe dọa đến vị trí quán quân của Kao.</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="content-right" transitionname="fade" transitionappeartimeout="1000"
                                    style="background-image: url(&quot;http://movie0706.cybersoft.edu.vn/hinhanh/tang-toc-phia-em_gp09.jpg&quot;);">
                                </div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10533">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">aaaaaaaaaaaaaaab</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">11-05-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">
                                        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                                    </p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="content-right" transitionname="fade" transitionappeartimeout="1000"
                                    style="background-image: url(&quot;http://movie0706.cybersoft.edu.vn/hinhanh/aaaaaaaaaaaaaaa_gp09.jpg&quot;);">
                                </div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10606">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">aaaaaaaaaaa</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">15-05-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">
                                        https://www.youtube.com/watch?v=ZOgNsZpLwvshttps://www.youtube.com/watch?v=ZOgNsZpLwvshttps://www.youtube.com/watch?v=ZOgNsZpLwvshttps://www.youtube.com/watch?v=ZOgNsZpLwvs
                                    </p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="content-right" transitionname="fade" transitionappeartimeout="1000"
                                    style="background-image: url(&quot;http://movie0706.cybersoft.edu.vn/hinhanh/aaaaaaaaaaa_gp09.jpg&quot;);">
                                </div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10612">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">CHUYỆN MA ĐÔ THỊ</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">17-05-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Với các tín đồ điện ảnh và hâm mộ các idol xứ sở kim chi, thì
                                        tháng 5 này chắc chắn sẽ không thể nào bỏ lỡ tác phẩm Chuyện “ma” đô thị. Bộ
                                        phim quy tụ hàng loạt ngôi sao tên tuổi của K-pop được giới trẻ yêu thích gồm:
                                        Arin nhóm Oh My Girl, EXY nhóm Cosmic Girls (WJSN) hay Ju Hak Nyeon của The
                                        Boyz…. Ngoài ra, tác phẩm cũng có sự góp mặt của nhiều tên tuổi điện ảnh xứ Hàn
                                        như Kim Do Yoon, Lee Ho Won, Lee Yul Eum….

                                        Chuyện “ma” đô thị có tựa dốc là Goedam 2, được xem như là phần hậu truyện của
                                        series Goedam. Sau khi chính thức ra mắt tại Hàn Quốc, bộ phim đã tạo được tiếng
                                        vang lớn đến mức Netflix phải mua lại để phát hành độc quyền trên nền tảng của
                                        mình.

                                        Nội dung phim bao gồm 10 câu chuyện riêng lẻ, được kết nối với nhau đầy nhịp
                                        nhàng và ăn ý. Nhờ đó, tác phẩm này đã giành được hàng loạt lời khen ngợi đến từ
                                        giới chuyên môn cũng như khán giả.</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="content-right" transitionname="fade" transitionappeartimeout="1000"
                                    style="background-image: url(&quot;http://movie0706.cybersoft.edu.vn/hinhanh/chuyen-ma-do-thi_gp09.jpg&quot;);">
                                </div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10614">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">RỪNG SĂN NGƯỜI</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">17-05-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Một biệt đội được phái vào rừng sâu để tìm tài liệu tuyệt mật
                                        và những người đồng đội mất tích. Nhưng mọi thứ không đơn giản như thế, họ đã
                                        tiến vào một vùng đất chất, nơi quỷ dữ thống trị và điều khiển mọi thứ. Đặc
                                        biệt, phim có sự góp mặt của Mickey Rourke, phản diện chính từ Iron Man 2.</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10647">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Black Adam</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">02-06-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Mặc dù kế hoạch là Black Adam sẽ xuất hiện trong Shazam 2,
                                        thế nhưng nhà sản xuất quyết định cho nhân vật này ra một phần phim riêng. Black
                                        Adam là một pháp sư Ai Cập cổ đại được chọn làm người kế thừa sức mạnh Shazam
                                        tuy nhien hắn dần dần bị tha hoá về đạo đức và sự lạm dụng sức mạnh của mình.
                                        Chính vì vậy hắn đã bị phong ấn suốt mấy ngàn năm qua.</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10648">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Moonfall</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">03-06-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Lấy ý tưởng về nạn diệt vong khi Mặt Trăng lệch khỏi quỹ đạo
                                        và chuẩn bị va chạm với Trái Đất, phim một lần nữa nâng tầm quy mô những thảm
                                        họa trong phim của Roland Emmerich. Những phân cảnh choáng ngợp trước thiên
                                        nhiên hung tàn và kỹ xảo mãn nhãn là những gì khán giả có thể trông đợi ở
                                        Moonfall. Phim sẽ ra rạp từ ngày 18/2/2022. </p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10649">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Captain Marvel 2</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">26-05-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Diễn ra trong bối cảnh hiện đại sau những năm 1990 vintage
                                        của bộ phim gốc, Captain Marvel 2 sẽ tiếp nối sau sự kiện Avenger: Endgame với
                                        kịch bản được viết bởi Megan McDonnel (một trong những nhà biên kịch
                                        WandaVision). Chúng ta có thể tin rằng Carol Danvers sẽ được cách tân phù hợp
                                        với gam màu MCU hiện tại trong Captain Marvel 2.</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10677">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">578: Phát Đạn Của Kẻ Điên</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">02-06-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Phim kể về câu chuyện của một người lái xe container và cô
                                        con gái nhỏ. Cuộc sống của 2 cha con trên chiếc xe màu đỏ cứ êm đềm diễn ra cho
                                        đến ngày cô bé xa cha đi học. Mọi thứ bỗng đảo lộn khi người cha nhận được tin
                                        cô con gái bị trầm cảm nặng sau khi bị xâm hại. Trên hành trình đi tìm công lý
                                        cho con, người cha chợt nhận ra rằng ông không chỉ đối đầu với một kẻ xâm hại.

                                        Phim có sự tham gia của H’ Hen Niê; Trương Ngọc Tình; Hà Văn Hiếu; Phạm Anh
                                        Tuấn…</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10678">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Liên Minh Siêu Thú DC (DC League Of Super Pets)</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">02-06-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Bộ phim chiếu rạp tháng 5/2022 này hài hước, phù hợp cho cả
                                        gia đình cùng nhau thưởng thức. Đúng như tên gọi, Liên minh siêu thú DC xoay
                                        quanh biệt đội thú cưng hài hước của các siêu anh hùng nổi danh vũ trụ DC. Bộ
                                        đôi chính dẫn dắt liên minh đặc biệt này là “anh bạn thân” của Superman, Krypto
                                        (Dwayne Johnson lồng tiếng), và “boss” nhà Batman, Ace (Kevin Hart lồng tiếng).

                                        Đằng sau hai siêu cún hài hước này là những tân binh của làng siêu thú cùng các
                                        siêu năng lực mới được “khai quật” nhưng không hề kém cạnh bất cứ ai. Bao gồm
                                        nàng Heo PB; Rùa Merton; Sóc Chip. Khi bạn thân Superman và những siêu anh hùng
                                        Liên minh công lý bị bắt cóc, Krypto cùng Ace và các thành viên Liên minh siêu
                                        thú bắt đầu một cuộc hành trình đậm chất phiêu lưu, hài hước tại thành phố
                                        Metropolis để giải cứu những thần tượng của vũ trụ DC.</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10679">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Maika – Cô Bé Đến Từ Hành Tinh Khác</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">02-06-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Maika – Cô Bé Đến Từ Hành Tinh Khác là câu chuyện về Hùng,
                                        một cậu bé có trái tim tan vỡ. Người mẹ cậu nhất mực yêu thương đã qua đời vì
                                        bạo bệnh. Hùng sống cùng ba trong một chung cư sắp giải tỏa. Sự cô đơn vì mất mẹ
                                        khiến Hùng luôn lủi thủi đơn độc cho đến khi cậu gặp được Maika.

                                        Maika từ hành tinh khác đến trái đất để tìm kiếm người bạn của mình. Cô bé đã
                                        giúp Hùng hàn gắn trái tim mình. Rồi từ đó, cậu tìm thấy đúng những niềm vui mà
                                        ở độ tuổi của cậu bé nên có. Bộ phim Maika – Cô bé đến từ hành tinh khác mang
                                        đến cảm xúc chân thật về gia đình; những mất mát nhưng cũng chứa đựng niềm vui
                                        thuần khiết; sự lạc quan; yêu đời. Phim cho thấy dù có thế nào, cuộc đời này vẫn
                                        đáng sống biết bao!</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10680">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Doraemon: Nobita Và Cuộc Chiến Vũ Trụ Tí Hon 2021</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">02-06-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Doraemon: Nobita no Little Wars 2021 bắt đầu khi Nobita tình
                                        cờ nhìn thấy một người ngoài hành tinh tí hon có tên là Papi. Papi đến từ hành
                                        tinh Pirika nhằm trốn thoát khỏi quân đội PCIA độc ác. Người tí hon rời khỏi nơi
                                        mình sinh sống để tới trái đất và đã gặp gỡ Nobita, Doraemon và những người bạn
                                        thân như Shizuka, Takeshi, Suneo. Mọi người bất ngờ trước kích thước nhỏ bé của
                                        Papi nhưng nhờ đèn pin thu nhỏ mà tất cả dần trở nên thân thiết.

                                        Tuy nhiên cuối cùng thì quân đội PCIA cũng xuất hiện ở trái đất và khiến mọi
                                        người bị cuốn vào trận chiến mới. Cuối cùng Papi chiến đấu cùng những người bạn
                                        trái đất để bảo vệ hành tinh Pirika. Suốt hành trình này cũng là những khoảnh
                                        khắc các nhân vật bộc lộ cảm xúc chân thật của mình một cách trung thực, cảm
                                        động về tình bạn và lòng dũng cảm.</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10681">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">John Wick: Chapter 4</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">02-06-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Phần phim mới Chapter 4 sẽ tiếp tục mang đến cho khán giả
                                        những pha hành động gay cấn của John Wick, một trong những sát thủ xuất sắc nhất
                                        thế giới. Khán giả sẽ cùng John Wick vén màn những bí mật từ chính tổ chức đã
                                        đào tạo anh. Trong hành trình này, John Wick sẽ phải đối đầu với vô số kẻ thù
                                        hiểm ác.</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10682">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Phi Công Siêu Đẳng Maverick (Top Gun: Maverick)</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">02-06-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Trailer mở đầu bằng câu chuyện tiếp nối phần trước. Pete
                                        Mitchell với biệt danh Maverick (Tom Cruise thủ vai), từ chàng phi công trẻ năm
                                        nào đã trở thành đại úy với bề dày kinh nghiệm hơn 30 năm. Mặc dù dành nửa cuộc
                                        đời để hy sinh và cống hiến nhưng thứ anh nhận được là chẳng có gì. Tuy nhiên
                                        thái độ của anh vẫn dõng dạc trong câu thoại đầy ẩn ý: “Đó là một trong những bí
                                        ẩn đời tôi”. Điều này càng khiến khán giả tò mò hơn về nội dung của bộ phim.

                                        Phi Công Siêu Đẳng Maverick là dự án “bí mật” bất ngờ của Paramount Pictures do
                                        Joseph Kosinski – người từng tạo nên thành công của TRON: Legacy (2010);
                                        Oblivion (2013) làm đạo diễn. Ngoài ra, bộ phim được chấp bút bởi loạt nhà biên
                                        kịch sáng giá như Eric Warren Singer (American Hustle); Peter Craig (The Hunger
                                        Games: Mockingjay); và Justin Marks (The Jungle Book).</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10716">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Phi công siêu đẳng</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">15-06-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Phim hay nhất 2022Phim hay nhất 2022Phim hay nhất 2022Phim
                                        hay nhất 2022Phim hay nhất 2022Phim hay nhất 2022</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10729">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">test</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">17-06-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">
                                        asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd
                                    </p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10765">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">iron man 4</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">01-07-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">mota ironman</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10766">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Thor 5</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">02-07-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">than sam 5</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10786">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">test1</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">11-07-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Test</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
                <div class="movie-card col-md-6 col-sm-12"><a class="card-link" href="/moviedetail/10840">
                        <div class="card-content">
                            <div class="content-left">
                                <div class="left-header-movie">
                                    <h1 class="movie-name">Detective Pikachu</h1>
                                    <h4 class="group-id">GP09</h4>
                                    <p class="during-time">120 phút</p>
                                    <p class="date-time">04-08-2022</p>
                                </div>
                                <div class="below-header">
                                    <p class="description">Pokemon: Detective Pikachu xoay quay hành trình truy tìm manh
                                        mối phá án về cái chết của Harry Goodman – thám tử mẫn cán ở thành phố Ryme của
                                        Tim Goodman và người bạn đồng hành siêu đáng yêu Pikachu. Là người duy nhất nghe
                                        được giọng nói thực của của Pikachu thay vì tiếng “Pika Pika” quen thuộc, Tim và
                                        Pikachu nhanh chóng trở thành bạn thân và cùng dấn thân vào cuộc điều tra những
                                        vụ mất tích bí ẩn trong thành phố. Trong hành trình phá án, cặp đôi “oan gia”
                                        này đã gây ra những tình huống trái ngang nhưng tràn đầy tiếng cười.</p>
                                </div>
                            </div>
                            <div class="lazyload-wrapper">
                                <div class="lazyload-placeholder"></div>
                            </div>
                        </div>
                    </a>
                    <div class="play-trailer"><i class="play-icon fa fa-play"></i></div>
                </div>
            </div>
        </div>
        <footer class="container">
            <div class="footer__content">
                <div class="footer__above">
                    <div class="above__row row">
                        <div class="above__item col-2 tix-info">
                            <p class="above__title">AP Movie</p>
                            <ul class="above__list">
                                <li class="list__item"><a class="list__link" href="/#">FAQ</a></li>
                                <li class="list__item"><a class="list__link" href="/#">Brand Guidelines</a></li>
                            </ul>
                        </div>
                        <div class="above__item col-2 tix-security">
                            <p class="above__title non--title"></p>
                            <ul class="above__list">
                                <li class="list__item"><a class="list__link" href="/#">Thoả thuận sử dụng</a></li>
                                <li class="list__item"><a class="list__link" href="/#">Chính sách bảo mật</a></li>
                            </ul>
                        </div>
                        <div class="above__item img__col col-4 tix-coop">
                            <p class="above__title">ĐỐI TÁC</p>
                            <ul class="img__list">
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/QPJb0sq/cgv.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/qy7Zxt6/bhd.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/nnYH6XW/galaxy.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/Y7spP5M/cinestar.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/vZ9myZy/lotte.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/r2g97r7/megags.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/7NDTSnJ/beta.jpg" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/Hq57mwP/dongdacinema.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/VQ0wbkj/TOUCH.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/bKGdjCY/cnx.jpg" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/nDZgccs/STARLIGHT.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/Yc2Jzzm/dcine.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/kMwVgNK/zalopay-icon.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/Jtqmn5J/payoo.jpg" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/kcKrb8N/VCB.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/2K08K6K/AGRIBANK.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/xq10kSK/viettin.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/j6xvWHm/IVB.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/yWmpqsj/123go.png" alt="hinhanh"></a></li>
                                <li class="img__item"><a class="img__link" href="/#"><img
                                            src="https://i.ibb.co/4VRdzs4/laban.png" alt="hinhanh"></a></li>
                            </ul>
                        </div>
                        <div class="above__item mobile__app col-2">
                            <p class="above__title">MOBILE APP</p>
                            <ul class="logo__list">
                                <li class="logo__item"><a class="logo__link" href="/#"><img
                                            src="https://i.ibb.co/Zm8vZgX/apple-logo.png" alt="hinhanh"></a></li>
                                <li class="logo__item"><a class="logo__link" href="/#"><img
                                            src="https://i.ibb.co/m6YfCrT/android-logo.png" alt="hinhanh"></a></li>
                            </ul>
                        </div>
                        <div class="above__item text-center col-2 tix-social">
                            <p class="above__title">SOCIAL</p>
                            <ul class="logo__list">
                                <li class="logo__item"><a class="logo__link" href="/#"><img class="img__social"
                                            src="https://i.ibb.co/9H50pyY/facebook-logo.png" alt="hinhanh"></a></li>
                                <li class="logo__item"><a class="logo__link" href="/#"><img class="img__social"
                                            src="https://i.ibb.co/1MrJQT3/zalo-logo.png" alt="hinhanh"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <hr class="gachchan">
                <div class="footer__below">
                    <div class="below__row justify-content-center align-items-center row">
                        <div class="below__left col-md-3 col-xs-12 col-sm-12"><img
                                src="https://i0.wp.com/thegamehaus.com/wp-content/uploads/2020/05/Volibear_Emote.png?resize=256%2C256&amp;ssl=1"
                                alt="hello"><span class="text-logo">AP Movie</span></div>
                        <div class="below__middle col-md-7 col-sm-12 col-xs-12">
                            <div class="middle__title">AP Movie – DỰ ÁN ĐẶT VÉ XEM PHIM</div><span><span>Số Điện Thoại
                                    (Hotline): 1900 000 222</span><br><span>Email:<a class="middle__link"
                                        href="/#">support@info.vn</a></span></span>
                        </div>
                        <div class="below__right col-md-2 col-sm-12 col-xs-12">
                            <div class="right__link"><img class="img-fuild"
                                    src="https://file.hstatic.net/1000012850/file/thong-bao-website-voi-bo-cong-thuong_grande.png"
                                    alt="hello"></div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
    <script>!function (e) { function r(r) { for (var n, a, p = r[0], i = r[1], l = r[2], c = 0, s = []; c < p.length; c++)a = p[c], Object.prototype.hasOwnProperty.call(o, a) && o[a] && s.push(o[a][0]), o[a] = 0; for (n in i) Object.prototype.hasOwnProperty.call(i, n) && (e[n] = i[n]); for (f && f(r); s.length;)s.shift()(); return u.push.apply(u, l || []), t() } function t() { for (var e, r = 0; r < u.length; r++) { for (var t = u[r], n = !0, p = 1; p < t.length; p++) { var i = t[p]; 0 !== o[i] && (n = !1) } n && (u.splice(r--, 1), e = a(a.s = t[0])) } return e } var n = {}, o = { 1: 0 }, u = []; function a(r) { if (n[r]) return n[r].exports; var t = n[r] = { i: r, l: !1, exports: {} }; return e[r].call(t.exports, t, t.exports, a), t.l = !0, t.exports } a.m = e, a.c = n, a.d = function (e, r, t) { a.o(e, r) || Object.defineProperty(e, r, { enumerable: !0, get: t }) }, a.r = function (e) { "undefined" != typeof Symbol && Symbol.toStringTag && Object.defineProperty(e, Symbol.toStringTag, { value: "Module" }), Object.defineProperty(e, "__esModule", { value: !0 }) }, a.t = function (e, r) { if (1 & r && (e = a(e)), 8 & r) return e; if (4 & r && "object" == typeof e && e && e.__esModule) return e; var t = Object.create(null); if (a.r(t), Object.defineProperty(t, "default", { enumerable: !0, value: e }), 2 & r && "string" != typeof e) for (var n in e) a.d(t, n, function (r) { return e[r] }.bind(null, n)); return t }, a.n = function (e) { var r = e && e.__esModule ? function () { return e.default } : function () { return e }; return a.d(r, "a", r), r }, a.o = function (e, r) { return Object.prototype.hasOwnProperty.call(e, r) }, a.p = "/"; var p = this.webpackJsonpmoviereactapp = this.webpackJsonpmoviereactapp || [], i = p.push.bind(p); p.push = r, p = p.slice(); for (var l = 0; l < p.length; l++)r(p[l]); var f = i; t() }([])</script>
</body>

</html>