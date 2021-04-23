document.addEventListener("turbolinks:load", function () {
    
    $(".like-toggle").click(function () {
        var button = $(this);
        
        $.ajax({
            type: 'POST',
            url: `user/posts/${button.attr("id")}/like_toggle`,
            success: function () {
                
            }
        });
    });

    function toggleButton(button, data) {
        buttonIcon = button.children().first()
    }
});

