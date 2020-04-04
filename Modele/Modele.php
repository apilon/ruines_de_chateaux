<?php

// Effectue la connexion à la BDD
// Instancie et renvoie l'objet PDO associé
function getBdd() {
    $bdd = new PDO('mysql:host=localhost;dbname=ruines_de_chateaux;charset=utf8', 'root', 'mysql', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    return $bdd;
}

// Renvoie la liste de tous les Sites_de_ruines
function getSites_de_ruines() {
    $bdd = getBdd();
    $Sites_de_ruines = $bdd->query('select * from Sites_de_ruines');
    return $Sites_de_ruines;
}

// Renvoie les informations sur un site_de_ruine
function getSite_de_ruine($idSite_de_ruine) {
    $bdd = getBdd();
    $site_de_ruine = $bdd->prepare('select * from Sites_de_ruines'
            . ' where ID=?');
    $site_de_ruine->execute(array($idSite_de_ruine));
    if ($site_de_ruine->rowCount() == 1)
        return $site_de_ruine->fetch();  // Accès à la première ligne de résultat
    else
        throw new Exception("Aucun site_de_ruine ne correspond à l'identifiant '$idSite_de_ruine'");
}

// Renvoie la liste des choses à faire associées à un site_de_ruine
function getChoses_a_faire($idSite_de_ruine) {
    $bdd = getBdd();
    $chose_a_faire = $bdd->prepare('select * from choses_a_faire'
            . ' where site_de_ruine_id = ?');
    $chose_a_faire->execute(array($idSite_de_ruine));
    return $chose_a_faire;
}

