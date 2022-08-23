
//注册验证
  
function validate_channel_info(channelform1)  
{  
	
	//验证用户名
    if(!isalphabet(channelform1.name.value)) 
    {  
        alert("用户名不能为空！");
        return false;  
    }
    else if(!islength(channelform1.name.value)){
    alert("用户名长度为2~8位");
    return false;
    }
    else if(!isspecial(channelform1.name.value))  
    {  
        alert("用户名不能为数字或特殊字符！");  
        return false;  
    }
    
    //验证密码
    else if(!isalphabet(channelform1.password.value))  
    {  
        alert("密码不能为空！");  
        return false;  
    }
    else if(!islength1(channelform1.password.value)){
    alert("密码长度为4~8");
    return false;
    } 
    
    //验证电话
    else if(!isalphabet(channelform1.tel.value)){
    alert("联系电话不能为空！");
    return false;
    }
    else if(!isNumber(channelform1.tel.value)){
        alert("联系电话必须为数字！");
        return false;
        }
    else if(!isphone1(channelform1.tel.value)){
    alert("联系电话长度不正确！");
    return false;
    }
    
    //验证邮箱
    if(!isalphabet(channelform1.email.value)) 
    {  
        alert("邮箱不能为空！");
        return false;  
    }
    else if(!isemail(channelform1.email.value)){
        alert("邮箱格式不正确！");
        return false;
        }
   
    //验证家庭联系人
	else if(!isalphabet(channelform1.family.value)){
    alert("家庭联系人不能为空！");
    return false;
    }
	else if(!islength(channelform1.family.value)){
	    alert("家庭联系人长度为4~8位");
	    return false;
	    }
	else if(!isspecial(channelform1.family.value))  
    {  
        alert("家庭联系人不能为数字或特殊字符！");  
        return false;  
    }
    
    return true;  
}   

function isalphabet(ss)          
{  
    var rs =  /\S/;  
    return rs.test(ss);  
}
function isNumber(str)          
{  
    var rx = /^[0-9]+$/;  
    return rx.test(str);  
} 
function islength(l1){
var le=/^.{2,8}$/; 
return le.test(l1);
}
function islength1(l2){
var le1=/^.{2,8}$/; 
return le1.test(l2);
}
function isphone1(l3){
var le2=/^[0-9]{8,11}$/;
return le2.test(l3);
}
function isspecial(p){
	var p1 = /^[\u4E00-\u9FA5A-Za-z]+$/;
	return p1.test(p);
}
function isemail(e){
	var e1 = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+[\.][a-zA-Z0-9_-]+$/;
	return e1.test(e);
}




//登录验证
function channel_info(channelform1)  
{  
	
	//验证用户名
    if(!isalphabet1(channelform1.user.value)) 
    {  
        alert("请输入用户名！");
        return false;  
    }
 
    //验证密码
    else if(!isalphabet1(channelform1.password.value))  
    {  
        alert("请输入密码！");  
        return false;  
    }
    
    return true;  
}   

function isalphabet1(ss)          
{  
    var rs =  /\S/;  
    return rs.test(ss);  
}



//下拉框
$.fn.ready(function() {
    $('.default').dropkick();

    $('#enable_sample').clicktoggle(
      function() {
        $('[name="country-disabled"]').dropkick('disable',false);
        $(this).html('Disable')
      },
      function() {
        $('[name="country-disabled"]').dropkick('disable');
        $(this).html('Enable')
      }
    );
  });





function validate_channel(channelform1)  
{  
	
	//验证考核项
    if(!isalphabet(channelform1.name.value)) 
    {  
        alert("考核项不能为空！");
        return false;  
    }
    else if(!islength(channelform1.name.value)){
    alert("考核项长度为2~10位");
    return false;
    }
    else if(!isspecial(channelform1.name.value))  
    {  
        alert("考核项不能为数字或特殊字符！");  
        return false;  
    }
    
    //验证考核标准
    else if(!isalphabet(channelform1.password.value))  
    {  
        alert("考核纪要不能为空！");  
        return false;  
    }
    else if(!islength1(channelform1.password.value)){
    	alert("考核纪要长度为2~10");
    	return false;
    }else if(!isspecial(channelform1.password.value))  
    {  
        alert("考核纪要不能为数字或特殊字符！");  
        return false;  
    } 
    
    //验证考核标准
    else if(!isalphabet(channelform1.tel.value)){
    alert("考核标准不能为空！");
    return false;
    }else if(!islength1(channelform1.tel.value)){
    	alert("考核标准长度为2~10");
    	return false;
    }else if(!isspecial(channelform1.tel.value))  
    {  
        alert("考核标准不能为数字或特殊字符！");  
        return false;  
    }
    
    return true;  
}   

function isalphabet(ss)          
{  
    var rs =  /\S/;  
    return rs.test(ss);  
}
function islength(l1){
var le=/^.{2,10}$/; 
return le.test(l1);
}
function islength1(l2){
var le1=/^.{2,10}$/; 
return le1.test(l2);
}
function isspecial(p){
	var p1 = /^[\u4E00-\u9FA5A-Za-z]+$/;
	return p1.test(p);
}




//验证成绩

function channel(channelform1)  
{  

    if(!isalphabet(channelform1.name3.value)) 
    {  
        alert("用户名不能为空！");
        return false;  
    }else if(!islength(channelform1.name3.value)){
    	alert("用户名长度为2~10位");
    	return false;
    }else if(!isspecial(channelform1.name3.value))  
    {  
        alert("用户名不能为数字或特殊字符！");  
        return false;  
    }
    
    //验证月份
    else if(!isalphabet(channelform1.password.value))  
    {  
        alert("获奖月份不能为空！");  
        return false;  
    }else if(!ismonth(channelform1.password.value)){
    	alert("获奖月份不正确！");
    	return false;
    }
    
    //验证日期
    else if(!isalphabet(channelform1.tel.value))  
    {  
        alert("详细日期不能为空！");  
        return false;  
    }else if(!isdate(channelform1.tel.value)){
    	alert("详细日期格式不正确！");
    	return false;
    }
    
    //验证成绩名称
    else if(!isalphabet(channelform1.email.value)){
    alert("成绩名称不能为空！");
    return false;
    }else if(!islength11(channelform1.email.value)){
    	alert("成绩名称长度为2~20");
    	return false;
    }else if(!isspecial(channelform1.email.value))  
    {  
        alert("成绩名称不能为数字或特殊字符！");  
        return false;  
    }
    
    //验证成绩结果
    else if(!isalphabet(channelform1.family.value)){
        alert("成绩结果不能为空！");
        return false;
        }else if(!islength11(channelform1.family.value)){
        	alert("成绩结果长度为2~20");
        	return false;
        }else if(!isspecial(channelform1.family.value))  
        {  
            alert("成绩结果不能为数字或特殊字符！");  
            return false;  
        }
    
    	//验证审核状况
        else if(!isalphabet(channelform1.sex.value)){
        alert("审核状况不能为空！");
        return false;
        }else if(!islength11(channelform1.sex.value)){
        	alert("审核状况长度为2~20");
        	return false;
        }else if(!isspecial(channelform1.sex.value))  
        {  
            alert("审核状况不能为数字或特殊字符！");  
            return false;  
        }

    return true;  
}   

function isalphabet(ss)          
{  
    var rs =  /\S/;  
    return rs.test(ss);  
}
function islength(l1){
var le=/^.{2,10}$/; 
return le.test(l1);
}
function islength2(k1){
	var le2=/^.{1,2}$/; 
	return le2.test(k1);
}
function islength11(l2){
var le1=/^.{2,20}$/; 
return le1.test(l2);
}
function isspecial(p){
	var p1 = /^[\u4E00-\u9FA5A-Za-z]+$/;
	return p1.test(p);
}

function isdate(d){
	var d1 = /^\d{4}\-\d{2}\-\d{2}$/;
	return d1.test(d);
}
function ismonth(m){
	var m1 = /^0[1-9]|1[0-2]$/;
	return m1.test(m);
}


//验证成绩效益
function channe(channelform1)  
{  

    if(!isalphabet(channelform1.name3.value)) 
    {  
        alert("用户名不能为空！");
        return false;  
    }else if(!islength(channelform1.name3.value)){
    	alert("用户名长度为2~10位");
    	return false;
    }else if(!isspecial(channelform1.name3.value))  
    {  
        alert("用户名不能为数字或特殊字符！");  
        return false;  
    }
    
    //验证月份
    else if(!isalphabet(channelform1.password.value))  
    {  
        alert("获奖月份不能为空！");  
        return false;  
    }else if(!ismonth(channelform1.password.value)){
    	alert("获奖月份不正确！");
    	return false;
    }
    
    //验证日期
    else if(!isalphabet(channelform1.tel.value))  
    {  
        alert("详细日期不能为空！");  
        return false;  
    }else if(!isdate(channelform1.tel.value)){
    	alert("详细日期格式不正确！");
    	return false;
    }
    
    //验证成绩名称
    else if(!isalphabet(channelform1.email.value)){
    alert("成绩名称不能为空！");
    return false;
    }else if(!islength11(channelform1.email.value)){
    	alert("成绩名称长度为2~20");
    	return false;
    }else if(!isspecial(channelform1.email.value))  
    {  
        alert("成绩名称不能为数字或特殊字符！");  
        return false;  
    }
    
    //验证成绩效益
    else if(!isalphabet(channelform1.family.value)){
        alert("成绩效益不能为空！");
        return false;
        }else if(!islength1111(channelform1.family.value)){
        	alert("成绩效益长度为3~5");
        	return false;
        }else if(!isNumber1(channelform1.family.value))  
        {  
            alert("成绩效益必须为数字！");  
            return false;  
        }
    
    	//验证审核状况
        else if(!isalphabet(channelform1.sex.value)){
        alert("审核状况不能为空！");
        return false;
        }else if(!islength11(channelform1.sex.value)){
        	alert("审核状况长度为2~20");
        	return false;
        }else if(!isspecial(channelform1.sex.value))  
        {  
            alert("审核状况不能为数字或特殊字符！");  
            return false;  
        }

    return true;  
}   

function isalphabet(ss)          
{  
    var rs =  /\S/;  
    return rs.test(ss);  
}
function islength(l1){
var le=/^.{2,10}$/; 
return le.test(l1);
}
function islength2(k1){
	var le2=/^.{1,2}$/; 
	return le2.test(k1);
}
function islength11(l2){
var le1=/^.{2,20}$/; 
return le1.test(l2);
}
function islength1111(r2){
	var le11=/^.{3,5}$/; 
	return le11.test(r2);
}
function isspecial(p){
	var p1 = /^[\u4E00-\u9FA5A-Za-z]+$/;
	return p1.test(p);
}

function isdate(d){
	var d1 = /^\d{4}\-\d{2}\-\d{2}$/;
	return d1.test(d);
}
function ismonth(m){
	var m1 = /^0[1-9]|1[0-2]$/;
	return m1.test(m);
}
function isNumber1(str)          
{  
    var rx = /^[0-9]+$/;  
    return rx.test(str);  
}

//验证新增成绩
function chann(channelform1)  
{  

    if(!isalphabet(channelform1.name3.value)) 
    {  
        alert("用户名不能为空！");
        return false;  
    }else if(!islength(channelform1.name3.value)){
    	alert("用户名长度为2~10位");
    	return false;
    }else if(!isspecial(channelform1.name3.value))  
    {  
        alert("用户名不能为数字或特殊字符！");  
        return false;  
    }
    
    //验证月份
    else if(!isalphabet(channelform1.password.value))  
    {  
        alert("获奖月份不能为空！");  
        return false;  
    }else if(!ismonth(channelform1.password.value)){
    	alert("获奖月份不正确！");
    	return false;
    }
    else if(!isalphabet(channelform1.nid.value)){
        alert("教职工号不能为空！");
        return false;
        }else if(!islength1111(channelform1.nid.value)){
        	alert("教职工号长度为1~3");
        	return false;
        }else if(!isNumber1(channelform1.nid.value))  
        {  
            alert("教职工号必须为数字！");  
            return false;  
        }
    
    //验证日期
    else if(!isalphabet(channelform1.tel.value))  
    {  
        alert("详细日期不能为空！");  
        return false;  
    }else if(!isdate(channelform1.tel.value)){
    	alert("详细日期格式不正确！");
    	return false;
    }
    
    //验证成绩名称
    else if(!isalphabet(channelform1.email.value)){
    alert("成绩名称不能为空！");
    return false;
    }else if(!islength11(channelform1.email.value)){
    	alert("成绩名称长度为2~20");
    	return false;
    }else if(!isspecial(channelform1.email.value))  
    {  
        alert("成绩名称不能为数字或特殊字符！");  
        return false;  
    }
    
    //验证成绩结果
    else if(!isalphabet(channelform1.family.value)){
        alert("成绩结果不能为空！");
        return false;
        }else if(!islength11(channelform1.family.value)){
        	alert("成绩结果长度为2~20");
        	return false;
        }else if(!isspecial(channelform1.family.value))  
        {  
            alert("成绩结果不能为数字或特殊字符！");  
            return false;  
        }
    
    	//验证审核状况
        else if(!isalphabet(channelform1.sex.value)){
        alert("审核状况不能为空！");
        return false;
        }else if(!islength11(channelform1.sex.value)){
        	alert("审核状况长度为2~20");
        	return false;
        }else if(!isspecial(channelform1.sex.value))  
        {  
            alert("审核状况不能为数字或特殊字符！");  
            return false;  
        }

    return true;  
}   

function isalphabet(ss)          
{  
    var rs =  /\S/;  
    return rs.test(ss);  
}
function islength(l1){
var le=/^.{2,10}$/; 
return le.test(l1);
}
function islength2(k1){
	var le2=/^.{1,2}$/; 
	return le2.test(k1);
}
function islength11(l2){
var le1=/^.{2,20}$/; 
return le1.test(l2);
}
function islength111(f2){
	var le11=/^.{2,20}$/; 
	return le11.test(f2);
}
function islength1111(f2){
	var le11=/^.{1,3}$/; 
	return le11.test(f2);
}
function isspecial(p){
	var p1 = /^[\u4E00-\u9FA5A-Za-z]+$/;
	return p1.test(p);
}

function isdate(d){
	var d1 = /^\d{4}\-\d{2}\-\d{2}$/;
	return d1.test(d);
}
function ismonth(m){
	var m1 = /^0[1-9]|1[0-2]$/;
	return m1.test(m);
}
function isNumber1(str)          
{  
    var rx = /^[0-9]+$/;  
    return rx.test(str);  
}


//
//薪资总览

function info(channelform1)  
{  

  if(!isalphabet(channelform1.name3.value)) 
  {  
      alert("用户名不能为空！");
      return false;  
  }else if(!islength(channelform1.name3.value)){
  	alert("用户名长度为2~10位");
  	return false;
  }else if(!isspecial(channelform1.name3.value))  
  {  
      alert("用户名不能为数字或特殊字符！");  
      return false;  
  }
  
  //验证月份
  else if(!isalphabet(channelform1.password.value))  
  {  
      alert("获奖月份不能为空！");  
      return false;  
  }else if(!ismonth(channelform1.password.value)){
  	alert("获奖月份不正确！");
  	return false;
  }
  
  //验证日期
  else if(!isalphabet(channelform1.tel.value))  
  {  
      alert("详细日期不能为空！");  
      return false;  
  }else if(!isdate(channelform1.tel.value)){
  	alert("详细日期格式不正确！");
  	return false;
  }
  
  //验证薪资名称
  else if(!isalphabet(channelform1.email.value)){
  alert("薪资名称不能为空！");
  return false;
  }else if(!islength11(channelform1.email.value)){
  	alert("薪资名称长度为2~20");
  	return false;
  }else if(!isspecial(channelform1.email.value))  
  {  
      alert("成绩名称不能为数字或特殊字符！");  
      return false;  
  }
  
  //验证薪资详细
  else if(!isalphabet(channelform1.family.value)){
      alert("薪资详细不能为空！");
      return false;
      }else if(!islength3(channelform1.family.value)){
      	alert("薪资详细长度为3~5");
      	return false;
      }else if(!isNumber1(channelform1.family.value))  
      {  
          alert("薪资详细必须为数字！");  
          return false;  
      }
  
  		return true;  
}   

function isalphabet(ss)          
{  
  var rs =  /\S/;  
  return rs.test(ss);  
}
function islength(l1){
var le=/^.{2,10}$/; 
return le.test(l1);
}
function islength2(k1){
	var le2=/^.{1,2}$/; 
	return le2.test(k1);
}
function islength11(l2){
var le1=/^.{2,20}$/; 
return le1.test(l2);
}
function islength3(f2){
	var le11=/^.{3,5}$/; 
	return le11.test(f2);
}
function islength1111(f2){
	var le11=/^.{2,20}$/; 
	return le11.test(f2);
}
function isspecial(p){
	var p1 = /^[\u4E00-\u9FA5A-Za-z]+$/;
	return p1.test(p);
}

function isdate(d){
	var d1 = /^\d{4}\-\d{2}\-\d{2}$/;
	return d1.test(d);
}
function ismonth(m){
	var m1 = /^0[1-9]|1[0-2]$/;
	return m1.test(m);
}
function isNumber1(str)          
{  
  var rx = /^[0-9]+$/;  
  return rx.test(str);  
}



//薪资新增
function addinfo(channelform1)  
{  

  //验证教职工号
  if(!isalphabet(channelform1.name.value)){
      alert("教职工号不能为空！");
      return false;
      }else if(!islength5(channelform1.name.value)){
      	alert("教职工号长度为1~3");
      	return false;
      }else if(!isNumber1(channelform1.name.value))  
      {  
          alert("教职工号必须为数字！");  
          return false;  
      }else if(!isalphabet(channelform1.password.value)) 
      {  
          alert("用户名不能为空！");
          return false;  
      }else if(!islength(channelform1.password.value)){
      	alert("用户名长度为2~10位");
      	return false;
      }else if(!isspecial(channelform1.password.value))  
      {  
          alert("用户名不能为数字或特殊字符！");  
          return false;  
      }
  
  //验证月份
  else if(!isalphabet(channelform1.tel.value))  
  {  
      alert("获奖月份不能为空！");  
      return false;  
  }else if(!ismonth(channelform1.tel.value)){
  	alert("获奖月份不正确！");
  	return false;
  }
  
  //验证日期
  else if(!isalphabet(channelform1.email.value))  
  {  
      alert("详细日期不能为空！");  
      return false;  
  }else if(!isdate(channelform1.email.value)){
  	alert("详细日期格式不正确！");
  	return false;
  }
  
  //验证薪资名称
  else if(!isalphabet(channelform1.family.value)){
  alert("薪资名称不能为空！");
  return false;
  }else if(!islength11(channelform1.family.value)){
  	alert("薪资名称长度为2~20");
  	return false;
  }else if(!isspecial(channelform1.family.value))  
  {  
      alert("成绩名称不能为数字或特殊字符！");  
      return false;  
  }
  
  //验证薪资详细
  else if(!isalphabet(channelform1.sex.value)){
      alert("薪资详细不能为空！");
      return false;
      }else if(!islength3(channelform1.sex.value)){
      	alert("薪资详细长度为3~5");
      	return false;
      }else if(!isNumber1(channelform1.sex.value))  
      {  
          alert("薪资详细必须为数字！");  
          return false;  
      }
  
  		return true;  
}   

function isalphabet(ss)          
{  
  var rs =  /\S/;  
  return rs.test(ss);  
}
function islength(l1){
var le=/^.{2,10}$/; 
return le.test(l1);
}
function islength2(k1){
	var le2=/^.{1,2}$/; 
	return le2.test(k1);
}
function islength11(l2){
var le1=/^.{2,20}$/; 
return le1.test(l2);
}
function islength3(f2){
	var le11=/^.{3,5}$/; 
	return le11.test(f2);
}
function islength1111(f2){
	var le11=/^.{2,20}$/; 
	return le11.test(f2);
}
function islength5(v2){
	var le3=/^.{1,3}$/; 
	return le3.test(v2);
}
function isspecial(p){
	var p1 = /^[\u4E00-\u9FA5A-Za-z]+$/;
	return p1.test(p);
}

function isdate(d){
	var d1 = /^\d{4}\-\d{2}\-\d{2}$/;
	return d1.test(d);
}
function ismonth(m){
	var m1 = /^0[1-9]|1[0-2]$/;
	return m1.test(m);
}
function isNumber1(str)          
{  
  var rx = /^[0-9]+$/;  
  return rx.test(str);  
}



//
//扣税信息
//薪资总览

function detial(channelform1)  
{  

if(!isalphabet(channelform1.user.value)) 
{  
    alert("用户名不能为空！");
    return false;  
}else if(!islength(channelform1.user.value)){
	alert("用户名长度为2~10位");
	return false;
}else if(!isspecial(channelform1.user.value))  
{  
    alert("用户名不能为数字或特殊字符！");  
    return false;  
}

//验证月份
else if(!isalphabet(channelform1.month.value))  
{  
    alert("出账月份不能为空！");  
    return false;  
}else if(!ismonth(channelform1.month.value)){
	alert("出账月份不正确！");
	return false;
}

//验证日期
else if(!isalphabet(channelform1.monthdet.value))  
{  
    alert("详细日期不能为空！");  
    return false;  
}else if(!isdate(channelform1.monthdet.value)){
	alert("详细日期格式不正确！");
	return false;
}

//验证薪资名称
else if(!isalphabet(channelform1.disc.value)){
alert("扣税名称不能为空！");
return false;
}else if(!islength11(channelform1.disc.value)){
	alert("扣税名称长度为2~20");
	return false;
}else if(!isspecial(channelform1.disc.value))  
{  
    alert("扣税名称不能为数字或特殊字符！");  
    return false;  
}

//验证薪资详细
else if(!isalphabet(channelform1.discmsg.value)){
    alert("薪资详细不能为空！");
    return false;
    }else if(!islength3(channelform1.discmsg.value)){
    	alert("薪资详细长度为3~5");
    	return false;
    }else if(!isNumber1(channelform1.discmsg.value))  
    {  
        alert("薪资详细必须为数字！");  
        return false;  
    }

		return true;  
}   

function isalphabet(ss)          
{  
var rs =  /\S/;  
return rs.test(ss);  
}
function islength(l1){
var le=/^.{2,10}$/; 
return le.test(l1);
}
function islength2(k1){
	var le2=/^.{1,2}$/; 
	return le2.test(k1);
}
function islength11(l2){
var le1=/^.{2,20}$/; 
return le1.test(l2);
}
function islength3(f2){
	var le11=/^.{3,5}$/; 
	return le11.test(f2);
}
function islength1111(f2){
	var le11=/^.{2,20}$/; 
	return le11.test(f2);
}
function isspecial(p){
	var p1 = /^[\u4E00-\u9FA5A-Za-z]+$/;
	return p1.test(p);
}

function isdate(d){
	var d1 = /^\d{4}\-\d{2}\-\d{2}$/;
	return d1.test(d);
}
function ismonth(m){
	var m1 = /^0[1-9]|1[0-2]$/;
	return m1.test(m);
}
function isNumber1(str)          
{  
var rx = /^[0-9]+$/;  
return rx.test(str);  
}


//
//新增扣税

function addetial(channelform1)  
{  

//验证教职工号
if(!isalphabet(channelform1.name.value)){
    alert("教职工号不能为空！");
    return false;
    }else if(!islength5(channelform1.name.value)){
    	alert("教职工号长度为1~3");
    	return false;
    }else if(!isNumber1(channelform1.name.value))  
    {  
        alert("教职工号必须为数字！");  
        return false;  
    }else if(!isalphabet(channelform1.password.value)) 
    {  
        alert("用户名不能为空！");
        return false;  
    }else if(!islength(channelform1.password.value)){
    	alert("用户名长度为2~10位");
    	return false;
    }else if(!isspecial(channelform1.password.value))  
    {  
        alert("用户名不能为数字或特殊字符！");  
        return false;  
    }

//验证月份
else if(!isalphabet(channelform1.tel.value))  
{  
    alert("出账月份不能为空！");  
    return false;  
}else if(!ismonth(channelform1.tel.value)){
	alert("出账月份不正确！");
	return false;
}

//验证日期
else if(!isalphabet(channelform1.email.value))  
{  
    alert("详细日期不能为空！");  
    return false;  
}else if(!isdate(channelform1.email.value)){
	alert("详细日期格式不正确！");
	return false;
}

//验证薪资名称
else if(!isalphabet(channelform1.family.value)){
alert("扣税名称不能为空！");
return false;
}else if(!islength11(channelform1.family.value)){
	alert("扣税名称长度为2~20");
	return false;
}else if(!isspecial(channelform1.family.value))  
{  
    alert("扣税名称不能为数字或特殊字符！");  
    return false;  
}

//验证薪资详细
else if(!isalphabet(channelform1.sex.value)){
    alert("扣税详细不能为空！");
    return false;
    }else if(!islength3(channelform1.sex.value)){
    	alert("扣税详细长度为3~5");
    	return false;
    }else if(!isNumber1(channelform1.sex.value))  
    {  
        alert("扣税详细必须为数字！");  
        return false;  
    }

		return true;  
}   

function isalphabet(ss)          
{  
var rs =  /\S/;  
return rs.test(ss);  
}
function islength(l1){
var le=/^.{2,10}$/; 
return le.test(l1);
}
function islength2(k1){
	var le2=/^.{1,2}$/; 
	return le2.test(k1);
}
function islength11(l2){
var le1=/^.{2,20}$/; 
return le1.test(l2);
}
function islength3(f2){
	var le11=/^.{3,5}$/; 
	return le11.test(f2);
}
function islength1111(f2){
	var le11=/^.{2,20}$/; 
	return le11.test(f2);
}
function islength5(v2){
	var le3=/^.{1,3}$/; 
	return le3.test(v2);
}
function isspecial(p){
	var p1 = /^[\u4E00-\u9FA5A-Za-z]+$/;
	return p1.test(p);
}

function isdate(d){
	var d1 = /^\d{4}\-\d{2}\-\d{2}$/;
	return d1.test(d);
}
function ismonth(m){
	var m1 = /^0[1-9]|1[0-2]$/;
	return m1.test(m);
}
function isNumber1(str)          
{  
var rx = /^[0-9]+$/;  
return rx.test(str);  
}


//
//实际薪资
//新增扣税

function detinfo(channelform1)  
{  
//验证教职工号
if(!isalphabet(channelform1.name2.value)){
  alert("教职工号不能为空！");
  return false;
  }else if(!islength5(channelform1.name2.value)){
  	alert("教职工号长度为1~3");
  	return false;
  }else if(!isNumber1(channelform1.name2.value))  
  {  
      alert("教职工号必须为数字！");  
      return false;  
  }else if(!isalphabet(channelform1.name3.value)) 
  {  
      alert("用户名不能为空！");
      return false;  
  }else if(!islength(channelform1.name3.value)){
  	alert("用户名长度为2~10位");
  	return false;
  }else if(!isspecial(channelform1.name3.value))  
  {  
      alert("用户名不能为数字或特殊字符！");  
      return false;  
  }

//验证月份
else if(!isalphabet(channelform1.password.value))  
{  
  alert("出账月份不能为空！");  
  return false;  
}else if(!ismonth(channelform1.password.value)){
	alert("出账月份不正确！");
	return false;
}

//验证日期
else if(!isalphabet(channelform1.tel.value))  
{  
  alert("详细日期不能为空！");  
  return false;  
}else if(!isdate(channelform1.tel.value)){
	alert("详细日期格式不正确！");
	return false;
}
//验证基本薪资
else if(!isalphabet(channelform1.email.value)){
alert("基本薪资不能为空！");
return false;
}else if(!islength3(channelform1.email.value)){
	alert("基本薪资长度为3~5");
	return false;
}else if(!isNumber1(channelform1.email.value))  
{  
    alert("基本薪资必须为数字！");  
    return false;  
}
//验证扣税详细
else if(!isalphabet(channelform1.family.value)){
  alert("扣税薪资不能为空！");
  return false;
  }else if(!islength3(channelform1.family.value)){
  	alert("扣税薪资长度为3~5");
  	return false;
  }else if(!isNumber1(channelform1.family.value))  
  {  
      alert("扣税薪资必须为数字！");  
      return false;  
  }
//实际薪资
  else if(!isalphabet(channelform1.sex.value)){
	  alert("扣税薪资不能为空！");
	  return false;
	  }else if(!islength3(channelform1.sex.value)){
	  	alert("扣税薪资长度为3~5");
	  	return false;
	  }else if(!isNumber1(channelform1.sex.value))  
	  {  
	      alert("扣税薪资必须为数字！");  
	      return false;  
	  }else if(!isalphabet(channelform1.major.value)) 
	  {  
	      alert("审核状态不能为空！");
	      return false;  
	  }else if(!islength(channelform1.major.value)){
	  	alert("审核状态长度为2~10位");
	  	return false;
	  }else if(!isspecial(channelform1.major.value))  
	  {  
	      alert("审核状态不能为数字或特殊字符！");  
	      return false;  
	  }



	return true;  
}   

function isalphabet(ss)          
{  
var rs =  /\S/;  
return rs.test(ss);  
}
function islength(l1){
var le=/^.{2,10}$/; 
return le.test(l1);
}
function islength2(k1){
	var le2=/^.{1,2}$/; 
	return le2.test(k1);
}
function islength11(l2){
var le1=/^.{2,20}$/; 
return le1.test(l2);
}
function islength3(f2){
	var le11=/^.{3,5}$/; 
	return le11.test(f2);
}
function islength1111(f2){
	var le11=/^.{2,20}$/; 
	return le11.test(f2);
}
function islength5(v2){
	var le3=/^.{1,3}$/; 
	return le3.test(v2);
}
function isspecial(p){
	var p1 = /^[\u4E00-\u9FA5A-Za-z]+$/;
	return p1.test(p);
}

function isdate(d){
	var d1 = /^\d{4}\-\d{2}\-\d{2}$/;
	return d1.test(d);
}
function ismonth(m){
	var m1 = /^0[1-9]|1[0-2]$/;
	return m1.test(m);
}
function isNumber1(str)          
{  
var rx = /^[0-9]+$/;  
return rx.test(str);  
}
