/* Build a simple in-page TOC without plugins. */
(function () {
  var content = document.getElementById("main_content");
  var toc = document.getElementById("toc");
  if (!content || !toc) return;

  var headings = content.querySelectorAll("h2, h3");
  if (!headings.length) {
    var sidebar = document.querySelector(".toc-sidebar");
    if (sidebar) sidebar.style.display = "none";
    return;
  }

  var used = {};
  var makeId = function (text) {
    var base = text
      .toLowerCase()
      .replace(/[^a-z0-9\s-]/g, "")
      .trim()
      .replace(/\s+/g, "-");
    if (!base) base = "section";
    var id = base;
    var i = 2;
    while (used[id] || document.getElementById(id)) {
      id = base + "-" + i;
      i += 1;
    }
    used[id] = true;
    return id;
  };

  var ul = document.createElement("ul");
  headings.forEach(function (h) {
    if (!h.id) h.id = makeId(h.textContent);
    var li = document.createElement("li");
    li.className = "toc-" + h.tagName.toLowerCase();
    var a = document.createElement("a");
    a.href = "#" + h.id;
    a.textContent = h.textContent;
    li.appendChild(a);
    ul.appendChild(li);
  });

  toc.appendChild(ul);
})();
