<?php
if (!empty($_SESSION["userId"])) {
    require_once "./controlerOTD/membre.php";
    $membre = new Membre();
    $membreResultat = $membre->getMemberById($_SESSION["userId"]);
    if(!empty($membreResultat[0]["mail"])) {
        $afficherNom = ucwords($membreResultat[0]["mail"]);
    } else {
        $afficherNom = $membreResultat[0]["pseudo"];
    }
}
?>
<section id="pageContent">
    <article>
        <br><h1> Carré Vip </h1>
    </article>
        <br><br>
        Bonjour <strong><?php echo $afficherNom; ?></strong>, <br>Bravo vous vous êtes connecté avec succès !<br>
       
        <br><br>
    </article>
    
</section>
  