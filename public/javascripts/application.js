// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function selectTag(tagElem) {
    tagElem.toggleClassName('selectedTag');
    var selected_tags = buildTagList();
    $('record_tags').value = selected_tags;
    $('record_tags').focus();
};

function updateTagList(selected_tags) {
    selected_tags = selected_tags.split(',');
    var tags = $H();
    $$('.tag').each(function(tag) { 
        tags.set(tag.innerHTML, tag);
        tag.removeClassName("selectedTag");
    });
    selected_tags.each(function(tagName) {
        tagName = tagName.strip();
        var tag = tags.get(tagName);
        if (tag) {
            tag.addClassName("selectedTag");
        } else {
            $('tags').insert('<span class="tag selectedTag" onclick="selectTag(this);">'+tagName+'</span> ');
        }
    });
};

function buildTagList(tag) {
    var selected_tags = [];
    $$('.selectedTag').each(function(tagElem) {
        selected_tags.push(tagElem.innerHTML);
    });
    if (tag) {
        if (selected_tags.indexOf(tag) === -1) {
            selected_tags.push(tag);
        } else {
            selected_tags = selected_tags.without(tag);
        }
    }
    selected_tags = selected_tags.join(',');
    return selected_tags;
}