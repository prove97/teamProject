function contentsFunction(cpage){
        	console.log("ajax 실행됨")
            $.ajax({
                url: "list.pr",
                dataType:"json",
                data: {'cpage' : cpage},
                success: function(data){
                    console.log(data)
                    let str = "";
                    let Section = document.getElementById("contents");
                    for(const p of data.list){
                                    
                        str += `   <a href="javascript:void(0);" onclick="toDetail(${p.goodsId}); return false;">
                        				<div class="contents-preview">
                                        <div class="thumnail">
                                            <img src="\img/sample1.png" alt="샘플이미지">
                                        </div>
                                        <div class="thumnail-info">
                                            <div class="name-heart">
                                                <div class="name">
                                                    <p>`+p.title+`</p>
                                                </div>
                                                <div class="heart">
                                                    <img src="\img/heart.png" alt="">
                                                    <p>`+p.loveIt+`</p>
                                                </div>
                                            </div>
                                            <div class="price-beforeDay">
                                                <div class="price">
                                                    <p>`+p.sellPrice+`</p>
                                                </div>
                                                <div class="beforeDay">
                                                    <p>`+p.enrollDate+`</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div></a>`
                    }
                    Section.innerHTML = str;
                    
                    let pagi = document.getElementById("pagination");
                    
                    let pagingStr = "";

                    if (data.pi.currentPage != 1) {
                        pagingStr += `<button onclick="contentsFunction(\${data.pi.currentPage - 1 });">&lt;</button>`;
                    }
                    for (let p = data.pi.startPage; p <= data.pi.endPage; p++) {
                        if (p == data.pi.currentPage) {
                            pagingStr += `<button disabled>`+p+`</button>`;
                        } else {
                            pagingStr += `<button onclick="contentsFunction(\${p});">`+p+`</button>`;
                        }
                    }
                    if (data.pi.currentPage != data.pi.maxPage) {
                        pagingStr += `<button onclick="contentsFunction(\${data.pi.currentPage + 1 });">&gt;</button>`;
                    }

                    pagi.innerHTML = pagingStr;
                   
                },
                error: function(){
                    console.log("ajax요청실패")
                }
        })
}


function toDetail(goodsId){
	location.href=`detail.pr?goodsId=${goodsId}`
}
        