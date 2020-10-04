<?php

function dbConnect(){
    try{
        $bdd = new PDO('mysql:host=localhost;dbname=ilikebooks;charset=utf8', 'root', '');
    }
    catch(Exception $e){
        die('Error : '.$e->getMessage());
    }

    return $bdd;
}

function getBooks(){

    $bdd = dbConnect();

    $req = $bdd->query('SELECT b.title, a.name, b.publication_date, GROUP_CONCAT(g.genre) as genre, b.total_pages, b.cover, b.summary  FROM books b, authors a, genres g, books_authors ba, books_genres bg 
    WHERE b.book_id = ba.book_id AND a.author_id = ba.author_id AND b.book_id = bg.book_id AND g.genre_id = bg.genre_id GROUP BY b.title');

    return $req;
}

function getGenres(){

    $bdd = dbConnect();

    $req = $bdd->query('SELECT genre  FROM genres ');

    return $req;
}
?>