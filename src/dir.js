function addRow(name, url, isdir,
    size, size_string, date_modified, date_modified_string) {
    if (name == "." || name == "..")
        return;

    var root = document.location.pathname;
    if (root.substr(-1) !== "/")
        root += "/";

    var tbody = document.getElementById("tbody");
    var row = document.createElement("tr");
    var file_cell = document.createElement("td");
    var link = document.createElement("a");

    link.className = isdir ? "icon dir" : "icon file";

    if (isdir) {
        name = name + "/";
        url = url + "/";
        size = 0;
        size_string = "";
    } else {
        link.draggable = "true";
        link.addEventListener("dragstart", onDragStart, false);
    }
    link.innerText = name;
    link.href = root + url;

    file_cell.dataset.value = name;
    file_cell.appendChild(link);

    row.appendChild(file_cell);
    row.appendChild(createCell(size, size_string));
    row.appendChild(createCell(date_modified, date_modified_string));

    tbody.appendChild(row);
    }

function onDragStart(e) {
    var el...row1.cells[column].dataset.value;
    var b = row2.cells[column].dataset.value;
    if (column) {
        a = parseInt(a, 10);
        b = parseInt(b, 10);
        return a > b ? newOrder : a < b ? oldOrder : 0;
    }

    // Column 0 is text.
    if (a > b)
        return newOrder;
    if (a < b)
        return oldOrder;
    return 0;
});

// Appending an existing child again just moves it.
for (i = 0; i < list.length; i++) {
    tbody.appendChild(list[i]);
}
}

// Add event handlers to column headers.
function addHandlers(element, column) {
    element.onclick = (e) => sortTable(column);
    element.onkeydown = (e) => {
        if (e.key == 'Enter' || e.key == ' ') {
            sortTable(column);
            e.preventDefault();
        }
    };
}

function onLoad() {
    addHandlers(document.getElementById('nameColumnHeader'), 0);
    addHandlers(document.getElementById('sizeColumnHeader'), 1);
    addHandlers(document.getElementById('dateColumnHeader'), 2);
}

window.addEventListener('DOMContentLoaded', onLoad);
