<?php
require('model/model.php');

$posts = getBooks();

require('view/frontend/indexView.php');