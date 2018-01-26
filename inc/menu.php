<div id="Teams">
  <div id="Categories">
  <h1 id="teams">Teams</h1>
<?php
foreach($teams as $key => $team)
{
  ?>
  <a href="index.php?teamId=<?php echo $team["teamId"]; ?>"><h2 id="Category1"><?php echo $team["teamName"]; ?></h2></a>
  <?php
}
 ?>
  </div>
</div>
