<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<head>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/adopt.css">
    <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.5.2/umd/popper.min.js'></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>pet details</title>
</head>
<body style="@import url("https://fonts.googleapis.com/css2?family=Baloo+2&display=swap");
/* This pen */
body {
font-family: "Baloo 2", cursive;
font-size: 16px;
color: #ffffff;
text-rendering: optimizeLegibility;
font-weight: initial;
}
.dark {
background: #110f16;
}
.light {
background: #f3f5f7;
}
a, a:hover {
text-decoration: none;
transition: color 0.3s ease-in-out;
}
#pageHeaderTitle {
margin: 2rem 0;
text-transform: uppercase;
text-align: center;
font-size: 2.5rem;
}
/* Cards */
.postcard {
flex-wrap: wrap;
display: flex;
box-shadow: 0 4px 21px -12px rgba(0, 0, 0, 0.66);
border-radius: 10px;
margin: 0 0 2rem 0;
overflow: hidden;
position: relative;
color: #ffffff;
}
.postcard.dark {
background-color: #18151f;
}
.postcard.light {
background-color: #e1e5ea;
}
.postcard .t-dark {
color: #18151f;
}
.postcard a {
color: inherit;
}
.postcard h1, .postcard .h1 {
margin-bottom: 0.5rem;
font-weight: 500;
line-height: 1.2;
}
.postcard .small {
font-size: 80%;
}
.postcard .postcard__title {
font-size: 1.75rem;
}
.postcard .postcard__img {
max-height: 180px;
width: 100%;
object-fit: cover;
position: relative;
}
.postcard .postcard__img_link {
display: contents;
}
.postcard .postcard__bar {
width: 50px;
height: 10px;
margin: 10px 0;
border-radius: 5px;
background-color: #424242;
transition: width 0.2s ease;
}
.postcard .postcard__text {
padding: 1.5rem;
position: relative;
display: flex;
flex-direction: column;
}
.postcard .postcard__preview-txt {
overflow: hidden;
text-overflow: ellipsis;
text-align: justify;
height: 100%;
}
.postcard .postcard__tagbox {
display: flex;
flex-flow: row wrap;
font-size: 14px;
margin: 20px 0 0 0;
padding: 0;
justify-content: center;
}
.postcard .postcard__tagbox .tag__item {
display: inline-block;
background: rgba(83, 83, 83, 0.4);
border-radius: 3px;
padding: 2.5px 10px;
margin: 0 5px 5px 0;
cursor: default;
user-select: none;
transition: background-color 0.3s;
}
.postcard .postcard__tagbox .tag__item:hover {
background: rgba(83, 83, 83, 0.8);
}
.postcard:before {
content: "";
position: absolute;
top: 0;
right: 0;
bottom: 0;
left: 0;
background-image: linear-gradient(-70deg, #424242, transparent 50%);
opacity: 1;
border-radius: 10px;
}
.postcard:hover .postcard__bar {
width: 100px;
}
@media screen and (min-width: 769px) {
.postcard {
flex-wrap: inherit;
}
.postcard .postcard__title {
font-size: 2rem;
}
.postcard .postcard__tagbox {
justify-content: start;
}
.postcard .postcard__img {
max-width: 300px;
max-height: 100%;
transition: transform 0.3s ease;
}
.postcard .postcard__text {
padding: 3rem;
width: 100%;
}
.postcard .media.postcard__text:before {
content: "";
position: absolute;
display: block;
background: #18151f;
top: -20%;
height: 130%;
width: 55px;
}
.postcard:hover .postcard__img {
transform: scale(1.1);
}
.postcard:nth-child(2n+1) {
flex-direction: row;
}
.postcard:nth-child(2n+0) {
flex-direction: row-reverse;
}
.postcard:nth-child(2n+1) .postcard__text::before {
left: -12px !important;
transform: rotate(4deg);
}
.postcard:nth-child(2n+0) .postcard__text::before {
right: -12px !important;
transform: rotate(-4deg);
}
}
@media screen and (min-width: 1024px) {
.postcard__text {
padding: 2rem 3.5rem;
}
.postcard__text:before {
content: "";
position: absolute;
display: block;
top: -20%;
height: 130%;
width: 55px;
}
.postcard.dark .postcard__text:before {
background: #18151f;
}
.postcard.light .postcard__text:before {
background: #e1e5ea;
}
}
/* COLORS */
.postcard .postcard__tagbox .green.play:hover {
background: #79dd09;
color: black;
}
.green .postcard__title:hover {
color: #79dd09;
}
.green .postcard__bar {
background-color: #79dd09;
}
.green::before {
background-image: linear-gradient(-30deg, rgba(121, 221, 9, 0.1), transparent 50%);
}
.green:nth-child(2n)::before {
background-image: linear-gradient(30deg, rgba(121, 221, 9, 0.1), transparent 50%);
}
.postcard .postcard__tagbox .blue.play:hover {
background: #0076bd;
}
.blue .postcard__title:hover {
color: #0076bd;
}
.blue .postcard__bar {
background-color: #0076bd;
}
.blue::before {
background-image: linear-gradient(-30deg, rgba(0, 118, 189, 0.1), transparent 50%);
}
.blue:nth-child(2n)::before {
background-image: linear-gradient(30deg, rgba(0, 118, 189, 0.1), transparent 50%);
}
.postcard .postcard__tagbox .red.play:hover {
background: #bd150b;
}
.red .postcard__title:hover {
color: #bd150b;
}
.red .postcard__bar {
background-color: #bd150b;
}
.red::before {
background-image: linear-gradient(-30deg, rgba(189, 21, 11, 0.1), transparent 50%);
}
.red:nth-child(2n)::before {
background-image: linear-gradient(30deg, rgba(189, 21, 11, 0.1), transparent 50%);
}
.postcard .postcard__tagbox .yellow.play:hover {
background: #bdbb49;
color: black;
}
.yellow .postcard__title:hover {
color: #bdbb49;
}
.yellow .postcard__bar {
background-color: #bdbb49;
}
.yellow::before {
background-image: linear-gradient(-30deg, rgba(189, 187, 73, 0.1), transparent 50%);
}
.yellow:nth-child(2n)::before {
background-image: linear-gradient(30deg, rgba(189, 187, 73, 0.1), transparent 50%);
}
@media screen and (min-width: 769px) {
.green::before {
background-image: linear-gradient(-80deg, rgba(121, 221, 9, 0.1), transparent 50%);
}
.green:nth-child(2n)::before {
background-image: linear-gradient(80deg, rgba(121, 221, 9, 0.1), transparent 50%);
}
.blue::before {
background-image: linear-gradient(-80deg, rgba(0, 118, 189, 0.1), transparent 50%);
}
.blue:nth-child(2n)::before {
background-image: linear-gradient(80deg, rgba(0, 118, 189, 0.1), transparent 50%);
}
.red::before {
background-image: linear-gradient(-80deg, rgba(189, 21, 11, 0.1), transparent 50%);
}
.red:nth-child(2n)::before {
background-image: linear-gradient(80deg, rgba(189, 21, 11, 0.1), transparent 50%);
}
.yellow::before {
background-image: linear-gradient(-80deg, rgba(189, 187, 73, 0.1), transparent 50%);
}
.yellow:nth-child(2n)::before {
background-image: linear-gradient(80deg, rgba(189, 187, 73, 0.1), transparent 50%);
}
}
">

<%--<c:out value=""/>--%>
<%--<c:out value="${pet.age}"/>--%>
<%--<c:out value="${pet.gender}"/>--%>
<%--<c:out value="${pet.breed.name}"/>--%>
<%--<c:out value="${pet.location}"/>--%>

<%--<c:out value="${pet.status}"/>--%>
<%--<a href="/home">Home</a>--%>
<!-- partial:index.partial.html -->
<%--<div class="container mx-auto mt-4">--%>
<%--    <div class="row">--%>
<%--        <div class="col-md-4">--%>
<%--            <div class="card" style="width: 18rem;">--%>
<%--                <img src="${pet.image}"/>" class="card-img-top" alt="...">--%>
<%--                <div class="card-body">--%>
<%--                    <h5 class="card-title">${pet.name}</h5>--%>
<%--                    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>--%>
<%--                    <p class="card-text"><c:out value="${pet.description}"/></p>--%>
<%--                    <a href="#" class="btn mr-2"><i class="fas fa-link"></i> Visit Site</a>--%>
<%--                    <a href="#" class="btn "><i class="fab fa-github"></i> Github</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--    </div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<!-- partial -->--%>
<%--<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js'></script>--%>
<%--<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>--%>
<%--<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.5.2/umd/popper.min.js'></script>--%>

<%--${pet.user.userName}--%>
<%--${pet.user.email}--%>
<%--${pet.user.phoneNumber}--%>

<section class="dark">
    <div class="container py-4">
        <h1 class="h1 text-center" id="pageHeaderTitle">My Cards Dark</h1>

        <article class="postcard dark blue">
            <a class="postcard__img_link" href="#">
                <img class="postcard__img" src="https://picsum.photos/1000/1000" alt="Image Title" />
            </a>
            <div class="postcard__text">
                <h1 class="postcard__title blue"><a href="#">Podcast Title</a></h1>
                <div class="postcard__subtitle small">
                    <time datetime="2020-05-25 12:00:00">
                        <i class="fas fa-calendar-alt mr-2"></i>Mon, May 25th 2020
                    </time>
                </div>
                <div class="postcard__bar"></div>
                <div class="postcard__preview-txt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!</div>
                <ul class="postcard__tagbox">
                    <li class="tag__item"><i class="fas fa-tag mr-2"></i>Podcast</li>
                    <li class="tag__item"><i class="fas fa-clock mr-2"></i>55 mins.</li>
                    <li class="tag__item play blue">
                        <a href="#"><i class="fas fa-play mr-2"></i>Play Episode</a>
                    </li>
                </ul>
            </div>
        </article>
        <article class="postcard dark red">
            <a class="postcard__img_link" href="#">
                <img class="postcard__img" src="https://picsum.photos/501/500" alt="Image Title" />
            </a>
            <div class="postcard__text">
                <h1 class="postcard__title red"><a href="#">Podcast Title</a></h1>
                <div class="postcard__subtitle small">
                    <time datetime="2020-05-25 12:00:00">
                        <i class="fas fa-calendar-alt mr-2"></i>Mon, May 25th 2020
                    </time>
                </div>
                <div class="postcard__bar"></div>
                <div class="postcard__preview-txt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!</div>
                <ul class="postcard__tagbox">
                    <li class="tag__item"><i class="fas fa-tag mr-2"></i>Podcast</li>
                    <li class="tag__item"><i class="fas fa-clock mr-2"></i>55 mins.</li>
                    <li class="tag__item play red">
                        <a href="#"><i class="fas fa-play mr-2"></i>Play Episode</a>
                    </li>
                </ul>
            </div>
        </article>
        <article class="postcard dark green">
            <a class="postcard__img_link" href="#">
                <img class="postcard__img" src="https://picsum.photos/500/501" alt="Image Title" />
            </a>
            <div class="postcard__text">
                <h1 class="postcard__title green"><a href="#">Podcast Title</a></h1>
                <div class="postcard__subtitle small">
                    <time datetime="2020-05-25 12:00:00">
                        <i class="fas fa-calendar-alt mr-2"></i>Mon, May 25th 2020
                    </time>
                </div>
                <div class="postcard__bar"></div>
                <div class="postcard__preview-txt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!</div>
                <ul class="postcard__tagbox">
                    <li class="tag__item"><i class="fas fa-tag mr-2"></i>Podcast</li>
                    <li class="tag__item"><i class="fas fa-clock mr-2"></i>55 mins.</li>
                    <li class="tag__item play green">
                        <a href="#"><i class="fas fa-play mr-2"></i>Play Episode</a>
                    </li>
                </ul>
            </div>
        </article>
        <article class="postcard dark yellow">
            <a class="postcard__img_link" href="#">
                <img class="postcard__img" src="https://picsum.photos/501/501" alt="Image Title" />
            </a>
            <div class="postcard__text">
                <h1 class="postcard__title yellow"><a href="#">Podcast Title</a></h1>
                <div class="postcard__subtitle small">
                    <time datetime="2020-05-25 12:00:00">
                        <i class="fas fa-calendar-alt mr-2"></i>Mon, May 25th 2020
                    </time>
                </div>
                <div class="postcard__bar"></div>
                <div class="postcard__preview-txt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!</div>
                <ul class="postcard__tagbox">
                    <li class="tag__item"><i class="fas fa-tag mr-2"></i>Podcast</li>
                    <li class="tag__item"><i class="fas fa-clock mr-2"></i>55 mins.</li>
                    <li class="tag__item play yellow">
                        <a href="#"><i class="fas fa-play mr-2"></i>Play Episode</a>
                    </li>
                </ul>
            </div>
        </article>
    </div>
</section>

<section class="light">
    <div class="container py-2">
        <div class="h1 text-center text-dark" id="pageHeaderTitle">My Cards Light</div>

        <article class="postcard light blue">
            <a class="postcard__img_link" href="#">
                <img class="postcard__img" src="https://picsum.photos/1000/1000" alt="Image Title" />
            </a>
            <div class="postcard__text t-dark">
                <h1 class="postcard__title blue"><a href="#">Podcast Title</a></h1>
                <div class="postcard__subtitle small">
                    <time datetime="2020-05-25 12:00:00">
                        <i class="fas fa-calendar-alt mr-2"></i>Mon, May 25th 2020
                    </time>
                </div>
                <div class="postcard__bar"></div>
                <div class="postcard__preview-txt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!</div>
                <ul class="postcard__tagbox">
                    <li class="tag__item"><i class="fas fa-tag mr-2"></i>Podcast</li>
                    <li class="tag__item"><i class="fas fa-clock mr-2"></i>55 mins.</li>
                    <li class="tag__item play blue">
                        <a href="#"><i class="fas fa-play mr-2"></i>Play Episode</a>
                    </li>
                </ul>
            </div>
        </article>
        <article class="postcard light red">
            <a class="postcard__img_link" href="#">
                <img class="postcard__img" src="https://picsum.photos/501/500" alt="Image Title" />
            </a>
            <div class="postcard__text t-dark">
                <h1 class="postcard__title red"><a href="#">Podcast Title</a></h1>
                <div class="postcard__subtitle small">
                    <time datetime="2020-05-25 12:00:00">
                        <i class="fas fa-calendar-alt mr-2"></i>Mon, May 25th 2020
                    </time>
                </div>
                <div class="postcard__bar"></div>
                <div class="postcard__preview-txt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!</div>
                <ul class="postcard__tagbox">
                    <li class="tag__item"><i class="fas fa-tag mr-2"></i>Podcast</li>
                    <li class="tag__item"><i class="fas fa-clock mr-2"></i>55 mins.</li>
                    <li class="tag__item play red">
                        <a href="#"><i class="fas fa-play mr-2"></i>Play Episode</a>
                    </li>
                </ul>
            </div>
        </article>
        <article class="postcard light green">
            <a class="postcard__img_link" href="#">
                <img class="postcard__img" src="https://picsum.photos/500/501" alt="Image Title" />
            </a>
            <div class="postcard__text t-dark">
                <h1 class="postcard__title green"><a href="#">Podcast Title</a></h1>
                <div class="postcard__subtitle small">
                    <time datetime="2020-05-25 12:00:00">
                        <i class="fas fa-calendar-alt mr-2"></i>Mon, May 25th 2020
                    </time>
                </div>
                <div class="postcard__bar"></div>
                <div class="postcard__preview-txt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!</div>
                <ul class="postcard__tagbox">
                    <li class="tag__item"><i class="fas fa-tag mr-2"></i>Podcast</li>
                    <li class="tag__item"><i class="fas fa-clock mr-2"></i>55 mins.</li>
                    <li class="tag__item play green">
                        <a href="#"><i class="fas fa-play mr-2"></i>Play Episode</a>
                    </li>
                </ul>
            </div>
        </article>
        <article class="postcard light yellow">
            <a class="postcard__img_link" href="#">
                <img class="postcard__img" src="https://picsum.photos/501/501" alt="Image Title" />
            </a>
            <div class="postcard__text t-dark">
                <h1 class="postcard__title yellow"><a href="#">Podcast Title</a></h1>
                <div class="postcard__subtitle small">
                    <time datetime="2020-05-25 12:00:00">
                        <i class="fas fa-calendar-alt mr-2"></i>Mon, May 25th 2020
                    </time>
                </div>
                <div class="postcard__bar"></div>
                <div class="postcard__preview-txt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!</div>
                <ul class="postcard__tagbox">
                    <li class="tag__item"><i class="fas fa-tag mr-2"></i>Podcast</li>
                    <li class="tag__item"><i class="fas fa-clock mr-2"></i>55 mins.</li>
                    <li class="tag__item play yellow">
                        <a href="#"><i class="fas fa-play mr-2"></i>Play Episode</a>
                    </li>
                </ul>
            </div>
        </article>
    </div>
</section>
</body>
</html>
