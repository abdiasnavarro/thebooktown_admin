var config = {
	apiKey: "AIzaSyCWgyfHVSFPhYOsCXsjGFc-5T4jk7Y0Lto",
	authDomain: "theb00kt0wn1.firebaseapp.com",
	databaseURL: "https://theb00kt0wn1.firebaseio.com",
	projectId: "theb00kt0wn1",
	storageBucket: "",
	messagingSenderId: "212856509014"
};
firebase.initializeApp(config);

const txtEmail = document.getElementById('correo');
const txtPassword = document.getElementById('pass');
const btnLogin = document.getElementById('login');

btnLogin.addEventListener('click', e => {
	const email = txtEmail.value;
	const pass = txtPassword.value;
	const auth = firebase.auth();

	const promesa = auth.signInWithEmailAndPassword(email, pass);
	promesa.catch(e => loginError());	
});

	firebase.auth().onAuthStateChanged(firebaseUser => {
		if(firebaseUser)
			location.href = "admin/inventario.php"; 
	});

function loginError() {
	 alert("Usuario o contraseña incorrectos. Inténtalo de nuevo.");
}