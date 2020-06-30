var projectName="http://localhost:8888/FingertipTime516_3.0"
function MD5() {
    let pwd = document.getElementById('password');
    let rpwd = document.getElementById('realpassword');
    rpwd.value = pwd.value;
    alert("dad");
}
//注册
$(function () {
    $("#register-form").submit(function (e) {
        let pwd1 = document.getElementById('p1');
        let pwd2 = document.getElementById('p2');
        if (pwd1.value !== pwd2.value) {
            document.getElementsByClassName('info')[0].style.display = 'inherit'
            return false;
        }
        let rpwd = document.getElementById('realp');
        rpwd.value = pwd1.value;
        document.getElementsByClassName('info')[0].style.display = 'none'

        $.ajax({
            type: 'post',
            async: false,
            url: projectName+"/AddUserServlet",
            data: $("#register-form").serialize(),
            dataType: "text",
            success: function (result) {
                if (result === "fail") {
                    alert("非常抱歉因为未知原因，注册失败")
                } else {
                    alert("恭喜您注册成功")
                    window.location.href = projectName + "/userAccount.jsp";
                }
            }
        })

        return false;
    });
});


function queryl(obj) {
    let t = obj.id;
    let condition = document.getElementById("searchCondition").value;
    QueryProduct(1, t, condition);
}

//更新右上角图标
function updatecart(data) {
    let jsonObject = jQuery.parseJSON(data);
    document.getElementById("totalprice").innerText = jsonObject['price'];
    document.getElementById("totalnum").innerText = jsonObject['num'];
}

//评论
function score_1() {
    if ($("#stars").attr("data-default-index") !== 0) {
        document.getElementById("commentscore").value = $("#stars").attr("data-default-index")
        $("#commentForm").ajaxSubmit(function (result) {
            // 对于表单提交成功后处理，result为表单正常提交后返回的内容
            if (result === 'success') {
                alert("评论成功，感谢你的评论，您的支持就是对我们最大的鼓励;")
                Querycomment(1);
                document.getElementById("comment").value = ""
            } else {
                alert("因未知原因评论失败");
            }
        });

    } else {
        alert("请给商品打分")
    }
    return false;
}



function changeS() {
    alert("$$$");
    style = document.getElementById('style').value;
    var stylesheet = document.getElementById("stylesheet");
    var styleqq = document.getElementById("stylesheet0");
    var userexit = document.getElementById("userexit");
    if (style == 0){
        if(userexit != null){
            stylesheet.href = "../css/bootstrap.min.css"
            styleqq.href = "../css/style.css"
        }else{
            stylesheet.href = "css/bootstrap.min.css"
            styleqq.href = "css/style.css"
        }
        document.getElementById("style").value = 1;
    }else {
        stylesheet.href = "css/bootstrap.min0.css"
        styleqq.href = "css/style0.css"
        if(userexit != null){
            stylesheet.href = "../css/bootstrap.min.css"
            styleqq.href = "../css/style.css"
        }
        else{
            stylesheet.href = "css/bootstrap.min0.css"
            styleqq.href = "css/style0.css"
            alert( "css/bootstrap0.min.css");
        }
        document.getElementById("style").value = 0;
    }
}

function CheckLoad(data) {
    let jsonObject = jQuery.parseJSON(data);
    let AddressHtml = "";
    for (let i = 0; i < jsonObject.length; i++) {
        AddressHtml += "<option value=\" " + (jsonObject[i]['contact']) + ":" + (jsonObject[i]['mobile']) + ":" + (jsonObject[i]['street']) + " \"></option>"
    }
    document.getElementById("billing_address_1").innerHTML = AddressHtml;
}


function tocheckup() {
    window.location.href = projectName + "/user/checkout.jsp"
}
