[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

</head>
<body>
<div class="container-md">
    <form method="post">
        <h1>Registrace byla úspěšně odeslána</h1>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Jméno dítěte</label>
            [@spring.formInput path="form.firstName" attributes="${rekapitulace?then('readonly','')}"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>

        </div>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Příjmení dítěte</label>
            [@spring.formInput path="form.surname"attributes="${rekapitulace?then('readonly','')}" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

        </div>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Datum narození dítěte</label>
            [@spring.formInput path="form.birthDate" fieldType="date" attributes="${rekapitulace?then('readonly','')}"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>

        </div>
        <div class="form-group mb-3">
            <label for="exampleFormControlSelect1">Pohlaví</label>
            [@spring.formSingleSelect path="form.sex" attributes="${rekapitulace?then('disabled','')}" options={
            "": "",
            "1": "Dívka",
            "2": "Chlapec"
            } /]
            <div class="error">[@spring.showErrors "<br>"/]</div>
        </div>

        <div class="form-group mb-3">
            <label for="exampleFormControlSelect1">Turnus</label>
            [@spring.formRadioButtons path="form.turnus"  attributes="${rekapitulace?then('disabled','')}" options={
            "turnus1": "5.-11. července",
            "turnus2": "12.-18. července",
            "turnus3": "19.-25. července"
            } separator="<br>" /]

            <div class="error">[@spring.showErrors "<br>"/]</div>


        </div>
        <div class="form-group mb-3">
            <label for="exampleFormControlInput1">E-mail na rodiče</label>
            [@spring.formInput path="form.email"attributes="${rekapitulace?then('readonly','')}" fieldType="email" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

        </div>
        <div class="mb-3 form-check">
            [@spring.formCheckbox path="form.agreement" attributes="${rekapitulace?then('disabled','')}" /]
            <label class="form-check-label" for="exampleCheck1">Souhlasím se zpracováním osobních údajů</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>
        <button type="submit" class="btn btn-primary">Přihlásit se</button>
    </form>
</div>



<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>