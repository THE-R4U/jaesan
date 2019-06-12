
<!-- README.md is generated from README.Rmd. Please edit that file -->

# jaesan

# WORKING IN PROGRESS

<!-- badges: start -->

<!-- badges: end -->

The goal of jaesan is to provide data about property of people who work
or worked for Korea.

## Installation

# NOT YET. PLEASE USE GITHUB

You can install the released version of jaesan from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("jaesan")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("mrchypark/jaesan")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(jaesan)
#> 
#> Attaching package: 'jaesan'
#> The following object is masked from 'package:base':
#> 
#>     search
search("전")
#> root url is "https://jaesan.newstapa.org/"
#> # A tibble: 50 x 3
#>    name   details                                url                      
#>    <chr>  <chr>                                  <chr>                    
#>  1 천호선 대통령비서실 의전비서관                /people/u/Tr8kUVl9RKBD0fp
#>  2 이종석 국가안전보장회의 사무차장              /people/u/QfCk5lov9jqCwlg
#>  3 두재균 교육인적자원부 전북대학교총장          /people/u/tyMvtISpgQ     
#>  4 이용숙 교육인적자원부 전주교육대학교총장      /people/u/PiREwsStBxUB8  
#>  5 이규형 외교통상부 주러시아대사관 특명전권대사 /people/u/WdWIspfCwQ     
#>  6 전부관 외교통상부 부산광역시국제관계자문대사  /people/u/OLaMLWFCV17-B  
#>  7 최홍순 행정자치부 전직대통령 비서관           /people/u/d3TW2-h5ucaC55g
#>  8 조환익 산업통상자원부 한국전력공사 사장       /people/u/RAj2ERjz70W0OHM
#>  9 이원걸 한국전력공사 사장                      /people/u/2kkWC4wCLk_n0D 
#> 10 신현택 예술의전당 사장                        /people/u/Hh9IusaQdH76Qap
#> # ... with 40 more rows
search("노")
#> root url is "https://jaesan.newstapa.org/"
#> # A tibble: 49 x 3
#>    name   details                       url                      
#>    <chr>  <chr>                         <chr>                    
#>  1 노옥섭 감사원 감사위원               /people/u/I9pRWCxL7-     
#>  2 김대환 노동부 장관                   /people/u/Er-b4kgKpt     
#>  3 신홍   노동부 중앙노동위원회위원장   /people/u/3RrCo525-qt    
#>  4 정병석 노동부 차관                   /people/u/UIIS0cq8eBoZ-tJ
#>  5 백일천 노동부 중앙노동위원회상임위원 /people/u/T8vOPblaqzcuKF4
#>  6 노성대 방송위원회 위원장             /people/u/I-1pHvjmGSL8n  
#>  7 이중원 나노소자특화팹센터 대표이사   /people/u/bj3-ebSJzx     
#>  8 노영보 서울고등법원 부장판사         /people/u/UeZTx_rZ7Tkbw--
#>  9 노무현 대통령 대통령                 /people/u/05oWHMY8qjxtnC-
#> 10 곽노현 서울특별시교육청 교육감       /people/u/CT6wzCvf47nmNm 
#> # ... with 39 more rows
search("김")
#> root url is "https://jaesan.newstapa.org/"
#> # A tibble: 50 x 3
#>    name   details                                 url                      
#>    <chr>  <chr>                                   <chr>                    
#>  1 김병준 대통령비서실 정책실장                   /people/u/9p_Wr-1AywLOA  
#>  2 김준곤 진실화해를위한과거사정리위원회 상임위원 /people/u/ueniITpZfX6KI7 
#>  3 김진경 대통령비서실 교육문화비서관             /people/u/w4J6de0ETz_    
#>  4 김승규 국가정보원 원장                         /people/u/gWbVbPwxb5w    
#>  5 김희택 민주평화통일자문회의 사무처장           /people/u/DFW8Z1kRMW5    
#>  6 김춘석 경기도 여주시 시장                      /people/u/0d6mgLWOLao    
#>  7 김광진 국민고충처리위원회 상임위원             /people/u/GeChwuyf1U     
#>  8 김희상 비상기획위원회 위원장                   /people/u/WuFKk27kCZAPLsy
#>  9 김진표 국회 국회의원                           /people/u/lCBTsqiTXK9j   
#> 10 김영식 교육인적자원부 차관                     /people/u/XFxbThBQ8r     
#> # ... with 40 more rows
search("이명")
#> root url is "https://jaesan.newstapa.org/"
#> # A tibble: 17 x 3
#>    name   details                                url                      
#>    <chr>  <chr>                                  <chr>                    
#>  1 이명수 농림부 차관                            /people/u/PCP8OCtiGDMl   
#>  2 이명구 방송통신위원회 기획조정실장            /people/u/zd0Ry_-QIV     
#>  3 이명규 경찰청 중앙경찰학교장                  /people/u/JzKhVRRbND8_   
#>  4 이명숙 인천광역시의회 의원                    /people/u/S9UKlOt_9geTe  
#>  5 이명자 광주광역시의회 의원                    /people/u/8zc2MiLXLIVTy1w
#>  6 이명열 강원도 의회 의원                       /people/u/QnSksqQzFP5lx  
#>  7 이명우 부산광역시교육위원회 교육위원          /people/u/9wxuAXMCWwZZh  
#>  8 이명박 대통령 대통령                          /people/u/r6P3MuDPeYtx   
#>  9 이명노 전라북도 새만금군산경제자유구역청장    /people/u/2tqRYQ3BOHyUfV 
#> 10 이명원 문화체육관광부 국민생활체육회 사무총장 /people/u/rKHcg5zfz_     
#> 11 이명영 서울특별시의회 의원                    /people/u/PWrOd77V6kMYJl 
#> 12 이명흠 전라남도 장흥군 군수                   /people/u/ylyPqsWO_E9    
#> 13 이명학 교육부 한국고전번역원 원장             /people/u/0VrESyTZlk     
#> 14 이명재 법무부 법무연수원 기획부장             /people/u/WZfqo_egxR     
#> 15 이명희 서울특별시 의회 의원                   /people/u/lE4snZNbZ1DTEIH
#> 16 이명동 경기도 의회 의원                       /people/u/Ic5qZBCLoT     
#> 17 이명연 전라북도 의회 의원                     /people/u/AHJj2XIfaKa
search("박")
#> root url is "https://jaesan.newstapa.org/"
#> # A tibble: 49 x 3
#>    name   details                            url                      
#>    <chr>  <chr>                              <chr>                    
#>  1 박명재 국회 국회의원                      /people/u/NUUmyxHYpOtYwxp
#>  2 박병원 재정경제부 제1차관                 /people/u/2wtPL4rEb9PVg  
#>  3 박흥렬 통일부 혁신재정기획본부장          /people/u/EUwrvbS33Tl    
#>  4 박성국 국방부 KHP개발사업단장             /people/u/bO3ScfYxK0O7   
#>  5 박선숙 국회 국회의원                      /people/u/7oUJnoO7yQeRl  
#>  6 박태규 대검찰청 춘천지방검찰청 검사장     /people/u/tkhJa5mwd6tL   
#>  7 박철준 대검찰청 인천지방검찰청 부천지청장 /people/u/xzucqEBFiCP4B6R
#>  8 박영렬 대검찰청 검사장                    /people/u/dV9xAi2FvbFi   
#>  9 박광현 경찰청 인천지방경찰청장            /people/u/UmKyizvoFZn    
#> 10 박창순 소방방재청 차장                    /people/u/zW4cnn3-1C8X   
#> # ... with 39 more rows
search("김학")
#> root url is "https://jaesan.newstapa.org/"
#> # A tibble: 20 x 3
#>    name   details                                  url                     
#>    <chr>  <chr>                                    <chr>                   
#>  1 김학민 한국사학진흥재단 이사장                  /people/u/1qC2ExXwfR    
#>  2 김학원 대전광역시의회 의장                      /people/u/hIA8u9WML2    
#>  3 김학진 경기도 의회 의원                         /people/u/lpSj0qdz2v-   
#>  4 김학현 공정거래위원회 부위원장                  /people/u/aEQmXPJk5aV1BD
#>  5 김학기 강원도 동해시 시장                       /people/u/nxYAOHgrct4W  
#>  6 김학의 대검찰청 대전고등검찰청 검사장           /people/u/baFdUwD0hWMfJ 
#>  7 김학배 경찰청 수사국장                          /people/u/p_Z27EMQLPgp_9
#>  8 김학주 "국방부 군구조 <U+2027> 국방운영개혁\n추진실장" /people/u/--sfQ0xg6SgDh~
#>  9 김학규 경기도 용인시 시장                       /people/u/ll47tGIchtUw  
#> 10 김학송 국토교통부 한국도로공사 사장             /people/u/xgZ0ETdF-RN   
#> 11 김학재 국회 국회의원                            /people/u/txJ6aznSV1J   
#> 12 김학준 대통령비서실 민원비서관                  /people/u/ob7kE4PF2g1iC9
#> 13 김학균 금융위원회 상임위원                      /people/u/kiH-WQv63ECQ  
#> 14 김학철 충청북도 의회 의원                       /people/u/Kiw0bkPz_FJK  
#> 15 김학용 국회 국회의원                            /people/u/eZqAbBenSdHWT~
#> 16 김학도 산업통상자원부 에너지자원실장            /people/u/x-AQFjdKQYWPsz
#> 17 김학성 법무부 교정본부장                        /people/u/7aGU_-eriP    
#> 18 김학실 광주광역시 의회 의원                     /people/u/4oA0Cwbgg7    
#> 19 김학동 경상북도 예천군 군수                     /people/u/gGLKrUZdEQCLi 
#> 20 김학수 금융위원회 증권선물위원회 상임위원       /people/u/awYc-OSMtmiWI
```
