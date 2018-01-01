/**
 * OOP 관련 클립
 * - 
 */
    // 뷰 바인딩
    Main.V_ViewBind = function () {
		try {
	        //$("#CList").html("");
	        if (typeof (Main.Model.db) == "undefined") {
	            Msg("MODAL", "자료없음", "자료가 존재하지 않습니다.", "");
	            return;
	        }
	        $("#ntc_idx").val(Main.Model.db.row.ntc_idx);
	        $("#state_cd").val(Main.Model.db.row.state_cd);
   	        $("#title").val(Main.Model.db.row.title);
	        $("#writer").val(Main.Model.db.row.writer);
	        $("#content").val(Main.Model.db.row.content);
	        if (Main.Model.db.row.noticeType_cd == "B")
	            $("#noticeType_B").attr("checked", "checked");
	        else if (Main.Model.db.row.noticeType_cd == "T")
	            $("#noticeType_T").attr("checked", "checked");
			
	        $("#create_dt").text(Main.Model.db.row.create_dt);
        
        } catch (e) {JsErrorMessage(e); }        
    };


    	// 뷰-리스트 바인딩
	Main.V_ListBind = function () {
        
            $("#CList").html("");
            $("#totalView").text(Main.Model.totalCnt);
        
            if (typeof (Main.Model.db) == "undefined" || Main.Model.totalCnt == "0") {
                $("#CList").append("<tr><td colspan='6' align='center'>자료가 없습니다.</td></tr>");
            } else {
    
                // 개시물 번호 = 전체 갯수 - ((현재페이지 -1) * 리스트수 )
                var numCnt = Main.Model.totalCnt - ((Main.selPage - 1) * Main.lineCnt);
                var forRow = SingleRow2Arr(Main.Model.db.row);
                var strHtml;
                
                for (var i = 0, num = numCnt; i < forRow.length; i++, num--) {
                    strHtml = "";
                    strHtml = strHtml + "<tr>";
                    strHtml = strHtml + "<td>" + num + "</td>";
                    strHtml = strHtml + "<td><a href=\"javascript:Main.C_GoForm('UPDATE','" + forRow[i].ntc_idx + "');\"\">" + forRow[i].title + "</a></td>";
                    strHtml = strHtml + "<td>" + Main.Code_NoticeType(forRow[i].noticeType_cd) + "</td>";
                    strHtml = strHtml + "<td>" + forRow[i].writer + "</td>";
                    strHtml = strHtml + "<td>" + forRow[i].create_dt.substring(0,10) + "</td>";
                    strHtml = strHtml + "<td>" + forRow[i].cnt + "</td>";
                    strHtml = strHtml + "</td>";
                    $("#CList").append(strHtml); 
                }
                Paging.V_PageBind(Main.Model.totalCnt, Main.selPage, Main.Proc_Select);	// 페이지 바인딩
            }	    
    
            Main.loading(false);
            return;
        };