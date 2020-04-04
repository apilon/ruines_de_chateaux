<?php $titre = 'Le Ruinesue du prof'; ?>

<?php ob_start(); ?>
<a href="index.php?action=apropos">
    <h4>À propos</h4>
</a>
<?php foreach ($sites_de_ruines as $site_de_ruine):
    ?>

    <article>
        <header>
            <a href="<?= "index.php?action=site_de_ruine&id=" . $site_de_ruine['id'] ?>">
                <h1 class="titreSite_de_ruine"><?= $site_de_ruine['nom'] ?></h1>
            </a>
            par utilisateur #<?= $site_de_ruine['utilisateur_id'] ?>
        </header>
        <p>Prix : <?= $site_de_ruine['prix'] ?> CZK</p>
    </article>
    <hr />
<?php endforeach; ?>    
<?php $contenu = ob_get_clean(); ?>

<?php require 'Vue/gabarit.php'; ?>