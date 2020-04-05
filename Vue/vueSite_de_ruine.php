<?php $titre = "Ruines de châteaux - " . $site_de_ruine['nom']; ?>

<?php ob_start(); ?>
<site_de_ruine>
    <header>
        <h1 class="titreSite_de_ruine"><?= $site_de_ruine['nom'] ?></h1>
        par utilisateur #<?= $site_de_ruine['utilisateur_id'] ?>
    </header>
    <p><?= $site_de_ruine['description'] ?></p>
    <p>Prix : <?= $site_de_ruine['prix'] ?> CZK</p>
</site_de_ruine>
<hr />
<header>
    <h1 id="titreReponses">Choses à faire dans près de <?= $site_de_ruine['nom'] ?> :</h1>
</header>
<?php foreach ($choses_a_faire as $chose_a_faire): ?>
<p><strong><?= $chose_a_faire['nom'] ?></strong><br/>
        <?= $chose_a_faire['description'] ?>
    </p>
<?php endforeach; ?>
<?php $contenu = ob_get_clean(); ?>

<?php require 'Vue/gabarit.php'; ?>

