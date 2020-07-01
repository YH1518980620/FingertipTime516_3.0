var projectName="http://localhost:8888/FingertipTime516_3.0"
function MD5() {
    let pwd = document.getElementById('password');
    let rpwd = document.getElementById('realpassword');
    rpwd.value = pwd.value;
    alert("登陆成功！！");
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
                    window.location.href = projectName + "/login.jsp";
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
