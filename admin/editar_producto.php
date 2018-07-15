<?php include '../extend/header.php'; 
$clave = htmlentities($_GET['clave']);
$sel = $con->prepare("SELECT * FROM inventario WHERE clave = ?");
$sel->execute(array($clave));
if ($f = $sel->fetch()) { 
}
$sel = null;

?>

<div class="container">
	<div class="card text-white bg-secondary">
		<div class="card-header"><h4 class="card-title">Editar Producto</h4></div>
		<div class="card-body">
			<form action="up_inventario.php" method="post" autocomplete="off" enctype="multipart/form-data">
				<input type="hidden" name="clave" value="<?php echo $clave ?>">
				<div class="form-group">
					<input type="text" name="product" required placeholder="Nombre del libro" class="form-control" value="<?php echo $f['producto'] ?>">
				</div>
				<div class="form-group">
					<input type="number" name="quantity" required placeholder="Cantidad existente" class="form-control" value="<?php echo $f['cantidad'] ?>">
				</div>
				<div class="form-group">
					<input type="number" step="0.01" required name="price" placeholder="Precio por unidad" class="form-control" value="<?php echo $f['precio'] ?>">
				</div>
				<div class="form-group">
					<select name="category" class="form-control">
						<option value="<?php echo $f['categoria']?>"><?php echo $f['categoria']?></option>
						<option value="ficcion">Ficción</option>
						<option value="teen">Juvenil</option>
						<option value="drama">Drama</option>
						<option value="terror">Terror</option>
						<option value="classic">Clásicos</option>
						<option value="noficcion">No Ficción</option>
					</select>
				</div>
				<div class="form-group">
					<img src="<?php echo $f['foto'] ?>" width="200">
				</div>
				<div class="form-group">
					<input type="file" name="image" class="form-control">
				</div>
				<input type="hidden" name="anterior" value="<?php echo $f['foto'] ?>">
				<div class="form-group">
					<textarea name="description" required class="form-control" cols="30" rows="10"><?php echo $f['descripcion']?></textarea>
				</div>
				<button type="submit" class="btn btn-warning">Guardar</button>
			</form>
		</div>
	</div>
</div>

<?php include '../extend/footer.php'; ?>
</body>
</html>