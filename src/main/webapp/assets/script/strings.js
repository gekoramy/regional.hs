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