<#import "token.ftl" as t>

<#macro login path>
    <form action="${path}" method="post">
        <div><label> User Name : <input type="text" name="username"/> </label></div>
        <div><label> Password: <input type="password" name="password"/> </label></div>
        <@t.token_csrf/>
        <div><input type="submit" value="Sign In"/></div>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <@t.token_csrf/>
        <input type="submit" value="Sign Out"/>
    </form>
</#macro>