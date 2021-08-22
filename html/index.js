window.addEventListener('message', function(event) {
    if (event.data.armour >= 1) {
        $("#shield").slideDown();
    } else if (event.data.armour == 0) {
        $("#shield").slideUp();
    } else if (event.data.oxygen >= 1) {
        $("#shield").slideDown();
    } else if (event.data.oxygen == 0) {
        $("#shield").slideUp();
    }

    switch (event.data.action) {
        case 'tick':
            $(".vida").css("height", event.data.health + "%");
            $(".shield").css("height", event.data.armour + "%");
            $(".thirst").css("height", event.data.thirst + "%");
            $(".hunger").css("height", event.data.hunger + "%");
            $(".stamina").css("height", event.data.stamina + "%");
            $(".lungs").css("height", event.data.oxygen + "%");
            break
    }

});