var progress_bar = document.getElementsByClassName("progress-bar");

for (i = 0; i < progress_bar.length; i++) {
    if (parseFloat(progress_bar[i].style.width) < parseFloat("5%"))
        progress_bar[i].style.backgroundColor = "grey";
    else if (parseFloat(progress_bar[i].style.width) < parseFloat("20%"))
        progress_bar[i].style.backgroundColor = ("rgb(0, 123, 255)");

    else if (parseFloat(progress_bar[i].style.width) < parseFloat("50%"))
        progress_bar[i].style.backgroundColor = "rgb(37, 168, 71)";

    else if (parseFloat(progress_bar[i].style.width) < parseFloat("80%"))
        progress_bar[i].style.backgroundColor = "rgb(255, 192, 8)";
    else
        progress_bar[i].style.backgroundColor = "rgb(218, 54, 69)"
}