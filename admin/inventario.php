<?php include '../extend/header.php'; ?>

<div class="container">
	<div class="card text-white bg-secondary">
		<div class="card-header"><h4 class="card-title">Alta de inventario</h4></div>
		<div class="card-body">
			<form action="ins_inventario.php" method="post" autocomplete="off" enctype="multipart/form-data">
				<div class="form-group">
					<input type="text" name="product" required placeholder="Nombre del libro" class="form-control">
				</div>
				<div class="form-group">
					<input type="number" name="quantity" required placeholder="Cantidad existente" class="form-control">
				</div>
				<div class="form-group">
					<input type="number" step="0.01" required name="price" placeholder="Precio por unidad" class="form-control">
				</div>
				<div class="form-group">
					<select name="category" class="form-control">
						<option value="" disabled="" selected="">Elige una categoría</option>
						<option value="Ficcion">Ficción</option>
						<option value="Juvenil">Juvenil</option>
						<option value="Drama">Drama</option>
						<option value="Terror">Terror</option>
						<option value="Clasico">Clásicos</option>
						<option value="NoFiccion">No Ficción</option>
					</select>
				</div>
				<div class="form-group">
					<input type="file" name="image" class="form-control">
				</div>
				<div class="form-group">
					<textarea name="description" required class="form-control" cols="30" rows="10"></textarea> 
				</div>
				<button type="submit" class="btn btn-warning">Guardar</button>
			</form>
		</div>
	</div>

	<div class="card text-white bg-dark" style="margin-top: 1%;">
		<div class="card-header"><h4 class="card-title">Último registro</h4></div>
		<div class="card-body">
			<table class="table">
				<thead>
					<th>Foto</th>
					<th>Producto</th>
					<th>Cantidad</th>
					<th>Precio</th>
					<th>Categoría</th>
					<th>Desc.</th>
					<th></th>
					<th></th>
					<th></th>
				</thead>
				<tbody>
					<?php
					$sel = $con->prepare("SELECT * FROM inventario ORDER BY id DESC limit 1");
					$sel->execute();
					while ($f = $sel->fetch()) { ?>
					<tr>
						<td><img src="<?php echo $f['foto'] ?>" width="50" heigth="50"></td>
						<td><?php echo $f['producto'];?></td>
						<td><?php echo $f['cantidad'];?></td>
						<td><?php echo "$". number_format($f['precio']);?></td>
						<td><?php echo $f['categoria'];?></td>
						<td><?php echo substr($f['descripcion'], 0, 100);?>...</td>
						<td><a href="agregar_imagenes.php?clave=<?php echo $f['clave']?>" class="btn btn-outline-success btn-sm"><span class="material-icons">add</span></a></td>
						<td><a href="editar_producto.php?clave=<?php echo $f['clave']?>" class="btn btn-outline-primary btn-sm"><span class="material-icons">edit</span></a></td>
						<td>
							<a href="#" class="btn btn-outline-danger btn-sm" onclick="bootbox.confirm('Seguro que desea realizar esta accion', function(result){ if (result == true){ location.href='eliminar_producto.php?clave=<?php echo $f['clave'] ?>&foto=<?php echo $f['foto'] ?>&pag=inventario.php';}})"><span class="material-icons">clear</span></a>
						</td>
					</tr>
					<?php 
				}
				$sel = null;
				$con = null;
				?>
			</tbody>
		</table>
	</div>
</div>


</div>


<?php include '../extend/footer.php'; ?>
</body>
</html>