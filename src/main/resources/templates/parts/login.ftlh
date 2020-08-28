<#--Форма входа и регистрации-->
<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Имя пользователя: </label>
            <div class="col-sm-5">
                <input type="text" name="username" class="form-control" placeholder="Имя пользователя"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Пароль: </label>
            <div class="col-sm-5">
                <input type="password" name="password" class="form-control" placeholder="Пароль"/>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label"> Почта: </label>
                <div class="col-sm-5">
                    <input type="email" name="email" class="form-control" placeholder="name@sweater.com"/>
                </div>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>

        <button class="btn btn-primary" type="submit"><#if isRegisterForm>Создать<#else>Войти</#if></button>

        <#if !isRegisterForm><a href="/registration">Регистрация</a></#if>

    </form>
</#macro>

<#--Кнопка выхода из учетной записи-->
<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">Sign Out</button>
    </form>
</#macro>
