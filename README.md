
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
query("전")
#> # A tibble: 50 x 3
#>    name   details                          url                      
#>    <chr>  <chr>                            <chr>                    
#>  1 최기문 경상북도 영천시 시장             /people/u/ODsDpi2SPzG    
#>  2 이정환 금융위원회 한국주택금융공사 사장 /people/u/TTLdeBhivk6Dxj 
#>  3 이해찬 국회 국회의원                    /people/u/NOMZO69WQ-     
#>  4 김병준 대통령비서실 정책실장            /people/u/9p_Wr-1AywLOA  
#>  5 황인성 민주평화통일자문회의 사무처장    /people/u/9LsvxEmKNuq7ohV
#>  6 문재인 " 대통령"                        /people/u/kUHpltzzg1wnF  
#>  7 조기숙 대통령비서실 홍보수석비서관      /people/u/qtvRSUaA8hRlq8 
#>  8 정우성 대통령비서실 외교보좌관          /people/u/sGQXlZVfW7tX   
#>  9 정문수 대통령비서실 경제보좌관          /people/u/BW0QXV0uRQ1zoPQ
#> 10 조재희 대통령비서실 정책기획위비서관    /people/u/fWq_fhGB2wG95F 
#> # ... with 40 more rows
query("노")
#> # A tibble: 50 x 3
#>    name   details                          url                      
#>    <chr>  <chr>                            <chr>                    
#>  1 최기문 경상북도 영천시 시장             /people/u/ODsDpi2SPzG    
#>  2 이정환 금융위원회 한국주택금융공사 사장 /people/u/TTLdeBhivk6Dxj 
#>  3 이해찬 국회 국회의원                    /people/u/NOMZO69WQ-     
#>  4 김병준 대통령비서실 정책실장            /people/u/9p_Wr-1AywLOA  
#>  5 황인성 민주평화통일자문회의 사무처장    /people/u/9LsvxEmKNuq7ohV
#>  6 문재인 " 대통령"                        /people/u/kUHpltzzg1wnF  
#>  7 조기숙 대통령비서실 홍보수석비서관      /people/u/qtvRSUaA8hRlq8 
#>  8 정우성 대통령비서실 외교보좌관          /people/u/sGQXlZVfW7tX   
#>  9 정문수 대통령비서실 경제보좌관          /people/u/BW0QXV0uRQ1zoPQ
#> 10 조재희 대통령비서실 정책기획위비서관    /people/u/fWq_fhGB2wG95F 
#> # ... with 40 more rows
query("김")
#> # A tibble: 50 x 3
#>    name   details                          url                      
#>    <chr>  <chr>                            <chr>                    
#>  1 최기문 경상북도 영천시 시장             /people/u/ODsDpi2SPzG    
#>  2 이정환 금융위원회 한국주택금융공사 사장 /people/u/TTLdeBhivk6Dxj 
#>  3 이해찬 국회 국회의원                    /people/u/NOMZO69WQ-     
#>  4 김병준 대통령비서실 정책실장            /people/u/9p_Wr-1AywLOA  
#>  5 황인성 민주평화통일자문회의 사무처장    /people/u/9LsvxEmKNuq7ohV
#>  6 문재인 " 대통령"                        /people/u/kUHpltzzg1wnF  
#>  7 조기숙 대통령비서실 홍보수석비서관      /people/u/qtvRSUaA8hRlq8 
#>  8 정우성 대통령비서실 외교보좌관          /people/u/sGQXlZVfW7tX   
#>  9 정문수 대통령비서실 경제보좌관          /people/u/BW0QXV0uRQ1zoPQ
#> 10 조재희 대통령비서실 정책기획위비서관    /people/u/fWq_fhGB2wG95F 
#> # ... with 40 more rows
query("이명")
#> # A tibble: 50 x 3
#>    name   details                          url                      
#>    <chr>  <chr>                            <chr>                    
#>  1 최기문 경상북도 영천시 시장             /people/u/ODsDpi2SPzG    
#>  2 이정환 금융위원회 한국주택금융공사 사장 /people/u/TTLdeBhivk6Dxj 
#>  3 이해찬 국회 국회의원                    /people/u/NOMZO69WQ-     
#>  4 김병준 대통령비서실 정책실장            /people/u/9p_Wr-1AywLOA  
#>  5 황인성 민주평화통일자문회의 사무처장    /people/u/9LsvxEmKNuq7ohV
#>  6 문재인 " 대통령"                        /people/u/kUHpltzzg1wnF  
#>  7 조기숙 대통령비서실 홍보수석비서관      /people/u/qtvRSUaA8hRlq8 
#>  8 정우성 대통령비서실 외교보좌관          /people/u/sGQXlZVfW7tX   
#>  9 정문수 대통령비서실 경제보좌관          /people/u/BW0QXV0uRQ1zoPQ
#> 10 조재희 대통령비서실 정책기획위비서관    /people/u/fWq_fhGB2wG95F 
#> # ... with 40 more rows
query("박")
#> # A tibble: 50 x 3
#>    name   details                          url                      
#>    <chr>  <chr>                            <chr>                    
#>  1 최기문 경상북도 영천시 시장             /people/u/ODsDpi2SPzG    
#>  2 이정환 금융위원회 한국주택금융공사 사장 /people/u/TTLdeBhivk6Dxj 
#>  3 이해찬 국회 국회의원                    /people/u/NOMZO69WQ-     
#>  4 김병준 대통령비서실 정책실장            /people/u/9p_Wr-1AywLOA  
#>  5 황인성 민주평화통일자문회의 사무처장    /people/u/9LsvxEmKNuq7ohV
#>  6 문재인 " 대통령"                        /people/u/kUHpltzzg1wnF  
#>  7 조기숙 대통령비서실 홍보수석비서관      /people/u/qtvRSUaA8hRlq8 
#>  8 정우성 대통령비서실 외교보좌관          /people/u/sGQXlZVfW7tX   
#>  9 정문수 대통령비서실 경제보좌관          /people/u/BW0QXV0uRQ1zoPQ
#> 10 조재희 대통령비서실 정책기획위비서관    /people/u/fWq_fhGB2wG95F 
#> # ... with 40 more rows
query("김학")
#> # A tibble: 50 x 3
#>    name   details                          url                      
#>    <chr>  <chr>                            <chr>                    
#>  1 최기문 경상북도 영천시 시장             /people/u/ODsDpi2SPzG    
#>  2 이정환 금융위원회 한국주택금융공사 사장 /people/u/TTLdeBhivk6Dxj 
#>  3 이해찬 국회 국회의원                    /people/u/NOMZO69WQ-     
#>  4 김병준 대통령비서실 정책실장            /people/u/9p_Wr-1AywLOA  
#>  5 황인성 민주평화통일자문회의 사무처장    /people/u/9LsvxEmKNuq7ohV
#>  6 문재인 " 대통령"                        /people/u/kUHpltzzg1wnF  
#>  7 조기숙 대통령비서실 홍보수석비서관      /people/u/qtvRSUaA8hRlq8 
#>  8 정우성 대통령비서실 외교보좌관          /people/u/sGQXlZVfW7tX   
#>  9 정문수 대통령비서실 경제보좌관          /people/u/BW0QXV0uRQ1zoPQ
#> 10 조재희 대통령비서실 정책기획위비서관    /people/u/fWq_fhGB2wG95F 
#> # ... with 40 more rows
```
