<?php

require 'Controleur/Controleur.php';

try {
    if (isset($_GET['action'])) {

        // À propos
        if ($_GET['action'] == 'apropos') {
            apropos();
        } else

        // Afficher un site_de_ruine
        if ($_GET['action'] == 'site_de_ruine') {
            if (isset($_GET['id'])) {
                // intval renvoie la valeur numérique du paramètre ou 0 en cas d'échec
                $id = intval($_GET['id']);
                if ($id != 0) {
                    $erreur = isset($_GET['erreur']) ? $_GET['erreur'] : '';
                    site_de_ruine($id, $erreur);
                } else
                    throw new Exception("Identifiant de site_de_ruine incorrect");
            } else
                throw new Exception("Aucun identifiant de site_de_ruine");
        } else {
            // Fin des actions
            throw new Exception("Action non valide");
        }
    } else {
        accueil();  // action par défaut
    }
} catch (Exception $e) {
    erreur($e->getMessage());
}
