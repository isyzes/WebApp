<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<#import "parts/token.ftl" as t>

<@c.page>
    <div>
        <@l.logout />
        <span><a href="/user">User list</a> </span>
    </div>

    <div>
        <form method="post" enctype="multipart/form-data">
            <input type="text" name="text" placeholder="Введите text" />
            <input type="text" name="teg" placeholder="Введите teg" />
            <input type="file" name="file">
            <@t.token_csrf />
            <button type="submit">Добавить</button>
        </form>
    </div>

    <div>Список сообщений</div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter?ifExists}" placeholder="Поиск...">
        <button type="submit">Найти</button>
    </form>
    <#list  messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.teg}</i>
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                    <img src="/img/"${message.filename}>
                </#if>
            </div>
        </div>
    <#else> No message
    </#list>
</@c.page>