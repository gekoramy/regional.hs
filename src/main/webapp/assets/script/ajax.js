String.prototype.formatUnicorn = String.prototype.formatUnicorn || function () {
    let str = this.toString();

    if (arguments.length) {
        const t = typeof arguments[0];
        let key;
        const args = ("string" === t || "number" === t)
            ? Array.prototype.slice.call(arguments)
            : arguments[0];

        for (key in args) {
            str = str.replace(new RegExp("\\{" + key + "\\}", "gi"), args[key]);
        }
    }

    return str;
};

function people(url, filter, items, name, width) {
    filter
        .keyup(
            () => $.getJSON(
                url,
                {
                    name: filter.val()
                },
                (result) => {

                    items.empty();

                    $.each(
                        result,
                        (i, it) => items.append(
                            `
                            <div class="${width} pl-3 pl-lg-5">
                                <button type="submit" name="${name}" value="{id}" class="bg-transparent border-0 avatar-wrapper avatar-extra-text">
                                    <div class="avatar size-xl">
                                        <img src="{avatar}" alt="{name} {surname}">
                                    </div>
                                    <div class="extra-text">
                                        <h4 class="text-left">{name} {surname}</h4>
                                        <code class="text-left">{fc}</code>
                                    </div>
                                </button>
                            </div>
                            `.formatUnicorn(it)
                        )
                    );
                }
            )
        )
        .keyup()
}

function peoplePage(url, filter, items, name) {
    people(url, filter, items, name, "col-11 col-md-6 col-lg-4")
}

function peopleModal(url, filter, items, name) {
    people(url, filter, items, name, "col-12")
}