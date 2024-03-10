<%-- 
    Document   : blog
    Created on : Feb 27, 2024, 10:22:03 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Happy Programming</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Font awesome icon -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/blog.css" />
    </head>
    <body>

        <!-- header -->
        <header>
            <nav class = "navbar">
                <div class = "container">
                    <a href = "home" class = "navbar-brand">Happy Programming</a>
                    <div class = "navbar-nav">
                        <a href = "">home</a>
                        <a href = "">design</a>
                        <a href = "">blog</a>
                        <a href = "">about</a>
                    </div>
                </div>
            </nav>
            <div class = "banner">
                <div class = "container">
                    <h1 class = "banner-title">
                        <span>Happy Programming</span> Blog
                    </h1>
                    <p>everything that you want to know about Happy Programming</p>
                    <form action="searchblog">
                        <input name="txt" type = "text" class = "search-input" placeholder="find blog . . .">
                        <button type = "submit" class = "search-btn">
                            <i class = "fas fa-search"></i>
                        </button>
                    </form>

                </div>
            </div>
        </header>
        <!--         end of header 
        
                 design 
                        <section class = "design" id = "design">
                            <div class = "container">
                                <div class = "title">
                                    <h2>Recent Arts & Designs</h2>
                                    <p>recent arts & designs on the blog</p>
                                </div>
                
                                <div class = "design-content">
                                     item 
                                    <div class = "design-item">
                                        <div class = "design-img">
                                            <img src = "images/art-design-1.jpg" alt = "">
                                            <span><i class = "far fa-heart"></i> 22</span>
                                            <span>Art & Design</span>
                                        </div>
                                        <div class = "design-title">
                                            <a href = "#">make an awesome art portfolio for college or university</a>
                                        </div>
                                    </div>
                                     end of item 
                                     item 
                                    <div class = "design-item">
                                        <div class = "design-img">
                                            <img src = "images/art-design-2.jpg" alt = "">
                                            <span><i class = "far fa-heart"></i> 22</span>
                                            <span>Art & Design</span>
                                        </div>
                                        <div class = "design-title">
                                            <a href = "#">make an awesome art portfolio for college or university</a>
                                        </div>
                                    </div>
                                     end of item 
                                     item 
                                    <div class = "design-item">
                                        <div class = "design-img">
                                            <img src = "images/art-design-3.jpg" alt = "">
                                            <span><i class = "far fa-heart"></i> 22</span>
                                            <span>Art & Design</span>
                                        </div>
                                        <div class = "design-title">
                                            <a href = "#">make an awesome art portfolio for college or university</a>
                                        </div>
                                    </div>
                                     end of item 
                                     item 
                                    <div class = "design-item">
                                        <div class = "design-img">
                                            <img src = "images/art-design-4.jpg" alt = "">
                                            <span><i class = "far fa-heart"></i> 22</span>
                                            <span>Art & Design</span>
                                        </div>
                                        <div class = "design-title">
                                            <a href = "#">make an awesome art portfolio for college or university</a>
                                        </div>
                                    </div>
                                     end of item 
                                     item 
                                    <div class = "design-item">
                                        <div class = "design-img">
                                            <img src = "images/art-design-5.jpg" alt = "">
                                            <span><i class = "far fa-heart"></i> 22</span>
                                            <span>Art & Design</span>
                                        </div>
                                        <div class = "design-title">
                                            <a href = "#">make an awesome art portfolio for college or university</a>
                                        </div>
                                    </div>
                                     end of item 
                                     item 
                                    <div class = "design-item">
                                        <div class = "design-img">
                                            <img src = "images/art-design-6.jpg" alt = "">
                                            <span><i class = "far fa-heart"></i> 22</span>
                                            <span>Art & Design</span>
                                        </div>
                                        <div class = "design-title">
                                            <a href = "#">make an awesome art portfolio for college or university</a>
                                        </div>
                                    </div>
                                     end of item 
                                </div>
                            </div>
                        </section>
                 end of design -->


        <!-- blog -->
        <section class = "blog" id = "blog">

            <div class = "container">
                <div class = "title">
                    <h2>Latest Blog</h2>
                    <p>recent blogs about Happy Programming</p>
                </div>

                <div class = "blog-content">
                    <!-- item -->
                    <c:forEach items="${bloglist}" var="bl">
                        <div class = "blog-item">
                            <div class = "blog-img">
                                <img src = "${bl.thumbnail}"  alt = "">
                                <span><i class = "far fa-heart"></i></span>
                            </div>

                            <div class = "blog-text">
                                <span>${bl.updatedate}   ${bl.nameMentor}</span>

                                <h2>${bl.title}</h2>
                                <p>${bl.briefinfo}</p>
                                <a href = "blogdetail?bid=${bl.idblog}">Read More</a>
                            </div>
                        </div>
                    </c:forEach>  

                    <!-- end of item -->
                    <!-- item -->
                    <!--                    <div class = "blog-item">
                                            <div class = "blog-img">
                                                <img src = "images/blog-p-2.jpg" alt = "">
                                                <span><i class = "far fa-heart"></i></span>
                                            </div>
                                            <div class = "blog-text">
                                                <span>20 January, 2020</span>
                                                <h2>Lorem ipsum, dolor sit amet consectetur adipisicing</h2>
                                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis libero quas ipsum laudantium nihil! Quaerat.</p>
                                                <a href = "#">Read More</a>
                                            </div>
                                        </div>-->
                    <!-- end of item -->
                    <!-- item -->
                    <!--                    <div class = "blog-item">
                                            <div class = "blog-img">
                                                <img src = "images/blog-p-3.jpg" alt = "">
                                                <span><i class = "far fa-heart"></i></span>
                                            </div>
                                            <div class = "blog-text">
                                                <span>20 January, 2020</span>
                                                <h2>Lorem ipsum, dolor sit amet consectetur adipisicing</h2>
                                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis libero quas ipsum laudantium nihil! Quaerat.</p>
                                                <a href = "#">Read More</a>
                                            </div>
                                        </div>
                                         end of item 
                                         item 
                                        <div class = "blog-item">
                                            <div class = "blog-img">
                                                <img src = "images/blog-p-4.jpg" alt = "">
                                                <span><i class = "far fa-heart"></i></span>
                                            </div>
                                            <div class = "blog-text">
                                                <span>20 January, 2020</span>
                                                <h2>Lorem ipsum, dolor sit amet consectetur adipisicing</h2>
                                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis libero quas ipsum laudantium nihil! Quaerat.</p>
                                                <a href = "#">Read More</a>
                                            </div>
                                        </div>
                                         end of item 
                                         item 
                                        <div class = "blog-item">
                                            <div class = "blog-img">
                                                <img src = "images/blog-p-5.jpg" alt = "">
                                                <span><i class = "far fa-heart"></i></span>
                                            </div>
                                            <div class = "blog-text">
                                                <span>20 January, 2020</span>
                                                <h2>Lorem ipsum, dolor sit amet consectetur adipisicing</h2>
                                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis libero quas ipsum laudantium nihil! Quaerat.</p>
                                                <a href = "#">Read More</a>
                                            </div>
                                        </div>
                                         end of item 
                                         item 
                                        <div class = "blog-item">
                                            <div class = "blog-img">
                                                <img src = "images/blog-p-6.jpg" alt = "">
                                                <span><i class = "far fa-heart"></i></span>
                                            </div>
                                            <div class = "blog-text">
                                                <span>20 January, 2020</span>
                                                <h2>Lorem ipsum, dolor sit amet consectetur adipisicing</h2>
                                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis libero quas ipsum laudantium nihil! Quaerat.</p>
                                                <a href = "#">Read More</a>
                                            </div>
                                        </div>-->
                    <!-- end of item -->
                </div>

            </div>

        </section>

        <!-- end of blog -->

        <!-- about -->
<!--        <section class = "about" id = "about">
            <div class = "container">
                <div class = "about-content">
                    <div>
                        <img src = "images/about-bg.jpg" alt = "">
                    </div>
                    <div class = "about-text">
                        <div class = "title">
                            <h2>Catherine Doe</h2>
                            <p>art & design is my passion</p>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id totam voluptatem saepe eius ipsum nam provident sapiente, natus et vel eligendi laboriosam odit eos temporibus impedit veritatis ut, illo deserunt illum voluptate quis beatae quod. Necessitatibus provident dicta consectetur labore!</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam corrupti natus, eos quia recusandae voluptatem veniam modi officiis minima provident rem sint porro fuga quos tempora ea suscipit vero velit sed laudantium eaque necessitatibus maxime!</p>
                    </div>
                </div>
            </div>
        </section>-->

        <!-- end of about -->
        <c:forEach begin="1" end="${endP}" var="i">
            <a><a class="pagination-link" href="blog?index=${i}">${i}</a>
        </c:forEach>
        <!-- footer -->
        <footer>
            <div class = "social-links">
                <a href = "#"><i class = "fab fa-facebook-f"></i></a>
                <a href = "#"><i class = "fab fa-twitter"></i></a>
                <a href = "#"><i class = "fab fa-instagram"></i></a>
                <a href = "#"><i class = "fab fa-pinterest"></i></a>
            </div>
            <span>Happy Programming</span>
        </footer>
        <!-- end of footer -->


    </body>
</html>

