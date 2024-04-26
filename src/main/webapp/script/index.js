//우리의 메인 함수. currentPage 가져와서 검색창을 기준으로 갈라준다.
function contentsFunction(cpage, cate){
			//검색창 가져와서 값가져오기
			//셀렉트박스가져와서 값가져오기

		const searchValue = document.getElementById("searchKeyword").value;
		
		if(searchValue == "" && cate==null){
			getList({cpage: cpage}, function(data){
				drawList(data)
			})
		} else if(cate!=null  && searchValue == "") {
			console.log("cate 실행됨",cate);
			categorySearch({cpage : cpage, cate : cate}, function(data){
				drawList(data)
			})
		}else if(searchValue != "" && cate== null){
			getSearchList({cpage : cpage, searchValue : searchValue}, function(data){
				drawList(data)
			})
		}

}
//searchBar의 엔터를 감지하기 위한 함수
function enter(e){
	if(e.code=='Enter'){
		contentsFunction(1);
	}
}

//List = 즉 DB에서 ProductList를 가져오는 함수
function getList(data, callback){
	console.log("ajax 실행됨")
        $.ajax({
            url: "list.pr",
            dataType:"json",
            data: data,
            success: function(data){
                callback(data)
               
            },
            error: function(){
                console.log("ajax요청실패")
            }
    })
}
//search하는 함수
function getSearchList(data, callback){
		$.ajax({
	            url: "search.pr",
	            dataType:"json",
	            data: data,
	            success: function(data){
	                callback(data)
	               
	            },
	            error: function(){
	                console.log("ajax요청실패")
	            }
	    })
}

//index에 productList를 그려주는함수
function drawList(data){
	console.log(data)
                    let str = "";
                    let Section = document.getElementById("contents");

                    
                    for(const p of data.list){
						let day = dataFormat(p.enrollDate)
                        str += `   <a href="javascript:void(0);" onclick="toDetail(${p.goodsId}); return false;">
                        				<div class="contents-preview">
                                        <div class="thumnail">
                                           <img src="/usedArticleTrade/${p.filePath}/${p.changeName}" alt="샘플이미지">
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
                                                    <p id="eDate">`+day.getFullYear()+-+(day.getMonth()+1)+-+day.getDate()+`</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div></a>`
                                    
                    }
                    Section.innerHTML = str;
                    
                    let pagi = document.getElementById("pagination");
                    
                    let pagingStr = "";

                    if (data.pi.currentPage != 1) {
                        pagingStr += `<button onclick="contentsFunction(${data.pi.currentPage - 1 });">&lt;</button>`;
                    }
                    for (let p = data.pi.startPage; p <= data.pi.endPage; p++) {
                        if (p == data.pi.currentPage) {
                            pagingStr += `<button disabled>`+p+`</button>`;
                        } else {
                            pagingStr += `<button onclick="contentsFunction(${p});">`+p+`</button>`;
                        }
                    }
                    if (data.pi.currentPage != data.pi.maxPage) {
                        pagingStr += `<button onclick="contentsFunction(${data.pi.currentPage + 1 });">&gt;</button>`;
                    }

                    pagi.innerHTML = pagingStr;
}

//제품 Detail로 이동하는 함수
function toDetail(goodsId){
	location.href=`detail.pr?goodsId=${goodsId}`
}

//mainPart 함수
function categoryE(ths) {
	var cate = $(ths).text();
	console.log(cate)
    contentsFunction(1, cate);
}

function categorySearch(data, callback){
	$.ajax({
            url: "categorySearch.pr",
            dataType:"json",
            data: data,
            success: function(data){
				console.log("카테고리 에젝성공", data);
                callback(data)
            },
            error: function(){
                console.log("카테고리 ajax요청실패")
            }
    })
	
}

function dataFormat(data, callback){
	let day = new Date(data);
	return day;
}
        

