<html>
<?php session_start()
  ?>
  <head>

    <meta charset="utf-8" />
    <title>Nouveautés</title>
      
  </head>

  <?php include "./templateOTD/header2.php"; ?>

  <article>
    <table>
      <?php
        echo "<tbody>";
          $tproduits = (empty($tproduits) ? $tproduits=array() : $tproduits);
          foreach($tproduits as $prods){
          
          echo "<form action='index.php?action=New2' method='POST'>";
          
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
  </article>
  </body>
</html>