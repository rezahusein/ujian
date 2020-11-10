<div class="show_error"></div>

<input type="hidden" name="ids" value="<?= $user['id'] ?>">

<input type="hidden" name="nip" value="<?= $user['nip'] ?>">

<input type="hidden" name="email" value="<?= $user['email'] ?>">





<small>Username</small>

<input name="dt[nip]" type="text" class="form-control" value="<?= $user['nip'] ?>" />

<small>Email</small>

<input name="dt[email]" type="text" class="form-control" value="<?= $user['email'] ?>" />



<small>Password</small>

<input name="password" type="password" class="form-control" placeholder="****************" />

<small>Confirm Password</small>

<input name="password_confirmation_field" type="password" class="form-control" placeholder="****************" />





<small>Name</small>

<input name="dt[name]" type="text" class="form-control" value="<?= $user['name'] ?>" />
<?php
            if(empty($_GET['role'])){
          ?>
<small>Role</small>

<select class="form-control" name="dt[role_id]">

	<?php 

	$res =  $this->mymodel->selectData('role');

	foreach ($res as $role) {
 if($role['role'] != 'Peserta'){
	 ?>

	<option value="<?= $role['id'] ?>" <?php if($user['role_id']==$role['id']){ echo "selected"; } ?>><?= $role['role'] ?></option>

	<?php 
}
} 
?>

</select>	
<?php
            }
          ?>
<small>Description</small>

<textarea class="form-control" name="dt[desc]"><?= $user['desc'] ?></textarea>

    <br>



 
