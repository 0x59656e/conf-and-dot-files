###
 # @Author: Adrian Hu
 # @Date: 2021-06-06 20:08:14
 # @LastEditTime: 2021-06-06 20:08:56
 # @Description: 
### 

# Set and Unset Proxy
function p_on(){
    export ALL_PROXY=socks5://127.0.0.1:1086
#    export http_proxy=http://127.0.0.1:1086
#    export https_proxy=https://127.0.0.1:1086
    echo -e "Proxy On"
}

function p_off(){
    unset ALL_PROXY
    echo -e "Proxy Off"
}