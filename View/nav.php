<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.php">CMSG2</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <?php foreach($nav as $page):?>
                <li class="active"><a href="index.php?p=<?=$page->slug?>"><?=$page->title?></a></li>
                <?php endforeach;?>
            </ul>
        </div>
    </div>
</nav>
