--[[ 
〰〰〰〰〰〰〰〰〰〰 
#by: @X_P_0 
Channel∶ @dev_kasper 
〰〰〰〰〰〰〰〰〰〰 
]] 

do 
local function run(msg, matches) 
muntazar2 = 'bot:myinfo2:2'..msg.from.id 
muntazar3 = 'bot:myinfo3:3'..msg.from.id 
muntazar4 = 'bot:myinfo4:4'..msg.from.id 
muntazar5 = 'bot:myinfo5:5'..msg.from.id 
muntazar6 = 'bot:myinfo6:6'..msg.from.id 
muntazar7 = 'bot:myinfo7:7'..msg.from.id 
muntazar8 = 'bot:myinfo8:8'..msg.from.id 
muntazar9 = 'bot:myinfo9:9'..msg.from.id 
muntazar10 = 'bot:myinfo10:10'..msg.from.id 
muntazar = 'bot:myinfo'..msg.from.id 
if matches[1]:lower() == 'seteg' then 
redis:set(muntazar2,'waiting:'..msg.from.id) 
return '♻الان ارسل لي عمرك ' 
else 
if redis:get(muntazar2) == 'waiting:'..msg.from.id then 
redis:set(muntazar2,msg.text) 
return 'تم حفظ عمرك في المعلومات ✅' 
end 
end 
if matches[1]:lower() == 'setname' then 
redis:set(muntazar3,'waiting:'..msg.from.id) 
return '♻ارسل لي اسمك الان ' 
else 
if redis:get(muntazar3) == 'waiting:'..msg.from.id then 
redis:set(muntazar3,msg.text) 
return 'تم حفظ اسمك في المعلومات✅' 
end 
end 

if matches[1]:lower() == 'setdrs' then 
redis:set(muntazar9,'waiting:'..msg.from.id) 
return '♻ارسل لي عنوانك الان' 
else 
if redis:get(muntazar9) == 'waiting:'..msg.from.id then 
redis:set(muntazar9,msg.text) 
return 'تم حفظ عنوانك في المعلومات✅' 
end 
end 

if matches[1]:lower() == 'setsex' then 
redis:set(muntazar4,'waiting:'..msg.from.id) 
return '♻ارسل لي جنسك (ذكر/انثى) الان' 
else 
if redis:get(muntazar4) == 'waiting:'..msg.from.id then 
redis:set(muntazar4,msg.text) 
return 'تم حفظ نوع جنسك في المعلومات ✅' 
end 
end 

--CREATED BY MUNTAZAR 

if matches[1]:lower() == 'setdu' then 
redis:set(muntazar5,'waiting:'..msg.from.id) 
return '♻ارسل لي تحصيلك الدراسي الان' 
else 
if redis:get(muntazar5) == 'waiting:'..msg.from.id then 
redis:set(muntazar5,msg.text) 
return 'تم حفظ تحصيلك الدراسي في المعلومات ✅' 
end 
end 

if matches[1]:lower() == 'setnum' then 
redis:set(muntazar6,'waiting:'..msg.from.id) 
return '♻ارسل لي رقم هاتفك ' 
else 
if redis:get(muntazar6) == 'waiting:'..msg.from.id then 
redis:set(muntazar6,msg.text) 
return 'تم حفظ رقم الهاتف في المعلومات✅' 
end 
end 

if matches[1]:lower() == 'setch' then 
redis:set(muntazar7,'waiting:'..msg.from.id) 
return '♻ارسل لي قناتك الان ' 
else 
if redis:get(muntazar7) == 'waiting:'..msg.from.id then 
redis:set(muntazar7,msg.text) 
return 'تم حفظ قناتك في المعلومات ✅' 
end 
end 

if matches[1]:lower() == 'setinsta' then 
redis:set(muntazar8,'waiting:'..msg.from.id) 
return '♻ارسل لي حساب الانستا الخاص بك الان' 
else 
if redis:get(muntazar8) == 'waiting:'..msg.from.id then 
redis:set(muntazar8,msg.text) 
return 'تم حفظ حساب الانستا في المعلومات✅' 
end 
end 

if matches[1]:lower() == 'setsit' then 
redis:set(muntazar10,'waiting:'..msg.from.id) 
return '♻ارسل لي موقعك الان ' 
else 
if redis:get(muntazar10) == 'waiting:'..msg.from.id then 
redis:set(muntazar10,msg.text) 
return 'تم حفظ موقعك في المعلومات✅' 
end 
end 

--CREATED BY MUNTAZAR 

if matches[1]:lower() == 'myinfo' then 
return "WELCOME MR ♻" ..msg.from.first_name.." <b>Your Info</b>\n" 
.."\n".."Your Name∶ " ..(redis:get(muntazar3) or 'NO NAME').."\n" 
.."Your Age∶ " ..(redis:get(muntazar2)  or 'NO AGE').."\n" 
.."Your Sex∶ " ..(redis:get(muntazar4)  or 'NO SEX').."\n" 
.."Your Address∶ " ..(redis:get(muntazar9)  or 'NO Address').."\n" 
.."Your Education∶ " ..(redis:get(muntazar5)  or 'NO Education').."\n" 
.."Your Number∶ " ..(redis:get(muntazar6)  or 'NO Number').."\n" 
.."Your Channel∶ " ..(redis:get(muntazar7)  or 'NO Channel').."\n" 
.."Your insta∶ " ..(redis:get(muntazar8)  or 'NO insta').."\n" 
.."Your Site∶ " ..(redis:get(muntazar10)  or 'NO Site').."\n\n" 
.."CHANNEL: @Dev_Kasper".."\n" 
.."SUDO: @X_P_0" 

end 
if matches[1]:lower()== 'delinfo' then 
    redis:del(muntazar, muntazar2, muntazar3, muntazar4, muntazar5, muntazar6, muntazar7, muntazar8, muntazar9, muntazar10) 
    return 'تم حذف المعلومات ♻' 
    end 
end 

return { 
    patterns = { 
        '^[/!](setname)$', 
        '^[/!](seteg)$', 
        '^[/!](setdrs)$', 
        '^[/!](myinfo)$', 
        '^[/!](setsex)$', 
        '^[/!](setdu)$', 
        '^[/!](setnum)$', 
        '^[/!](setch)$', 
        '^[/!](setinsta)$', 
        '^[/!](setsit)$', 
        '^[/!](delinfo)$', 
        '(.*)', 
    }, 
    run = run, 
    pre_process = pre_process 
} 
end 

--[[ 
#by: Muntazar Xp 
Channel∶ @dev_kasper 
]] 
