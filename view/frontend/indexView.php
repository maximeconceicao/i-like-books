<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>I LIKE BOOKS</title>
    <link href="public/css/style.css" rel="stylesheet" />
</head>

<body>
    <img class="logo" src="public/images/main_logo.png" />
    <p class="presentation">"A collection of books that I have read and recommend"</p>
    

    <section class="container">
        <?php
        while ($data = $posts->fetch()) {
        ?>
            <div class="book-sheet">
                <div class="book-header">
                    <div class="header-img" style="background-image:url(&quot public/images/<?= $data['cover'] ?>&quot);"></div>
                </div>
                <h3 class="book-title">
                    <?= htmlspecialchars($data['title']) ?>
                </h3>

                <h4 class="book-author"><?= $data['name'] ?></h4>

                <div class="genre-container">

                    <?php
                    $genres = explode(",", $data['genre']);
                    foreach ($genres as $genre) {
                    ?>
                        <p class="genre">#<?= $genre ?></p>
                    <?php
                    }
                    ?>
                </div>
                <p class="book-summary">
                    <?= nl2br(htmlspecialchars($data['summary'])) ?>
                </p>

                <div class="book-footer">
                    <div class="publication">
                        <p><?= substr($data['publication_date'], 0, 4) ?></p>
                        <p>publication</p>
                    </div>
                    <div class="vl"></div>
                    <div class="pages">
                        <p><?= $data['total_pages'] ?></p>
                        <p>pages</p>
                    </div>
                </div>
            </div>
        <?php
        }
        $posts->closeCursor();
        ?>

    </section>
</body>

</html>