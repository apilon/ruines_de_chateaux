<?php

require 'Modele/Modele.php';

// Affiche la liste de tous les sites_de_ruines
function accueil() {
    $sites_de_ruines = getSites_de_ruines();
    require 'Vue/vueAccueil.php';
}

// Affiche la page À propos
function apropos() {
    require 'Vue/vueApropos.php';
}

// Affiche les détails sur un site_de_ruine
function site_de_ruine($idSite_de_ruine) {
    $site_de_ruine = getSite_de_ruine($idSite_de_ruine);
    $choses_a_faire = getChoses_a_faire($idSite_de_ruine);
    require 'Vue/vueSite_de_ruine.php';
}

// Affiche une erreur
function erreur($msgErreur) {
    require 'Vue/vueErreur.php';
}
