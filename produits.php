<html>
<head>
  <?php session_start()
  ?>

  <meta charset="utf-8" />
  <title>Produits</title>
    
</head>

<?php include_once "./templateOTD/header.php"; ?>

<?php include_once "./templateOTD/header2.php"; ?>

<article>
  <div class = "block">
    <table>
      <?php
        echo "<tbody>";
          $tproduits = (empty($tproduits) ? $tproduits=array() : $tproduits);
          foreach($tproduits as $prods){
          
          echo "<form action='index.php?action=produits' method='POST'>";
          
            echo "<tr>"
              
              ."<td>"."<figure class='image is-128x128'>"."<p>".$prods['lien']."</td>"."</p>"."</figure>"
              ."<td>"."<p class = 'content is-middle'>".$prods['nompro']."</p> "."</td>"
              ."<td>"."<p class = 'subtitle is-6''>".$prods['prix']."€"."</p> "."</td>"
              ."<td>".
              "<input type='submit' name='action' value='Ajouter au panier'>"
              ."</td>"."</p>".

            "</tr>";

          echo "</form>";
          }
        echo "</tbody>";

        //$nbPages = ceil($nbelementstotal / $limite);
        //if ($page > 1):
          //<img src = "chemin" width="">
      ?>
    </table>
  </div>
</article>

</html>