<form role="form" class="gdpr-settings">
	<div class="row">
		<div class="col-sm-2 col-xs-12 settings-header">Configuration</div>
		<div class="col-sm-5 col-xs-12">
			<p class="lead">
				Ce plugin vous permet d'administrer les états de consentement de vos utilisateurs.
			</p>
			<p>
				Il est utile aux communautés soumise à la législation GDPR, car les utilisateurs doivent donner leur accord pour le traitement des données.
				Malheureusement, il n'y a pas de clause pour les droits acquis ou implicites.
				En tant qu'administrateur, vous devez vous assurer que tous vos utilisateurs ont donné leur consentement pour que votre forum soit considéré conforme à GDPR.
			</p>
			<div class="form-group">
				<div class="checkbox">
					<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
						<input class="mdl-switch__input" type="checkbox" id="require_consent" name="require_consent">
						<span class="mdl-switch__label">Exiger le consentement des utilisateurs existants</span>
					</label>
				</div>
				<p class="help-block">
					Si cette option est activée, tout utilisateur connecté n'ayant pas explicitement donné son consentement sera redirigé vers la page &quot;Vos données personnelles&quot; pour pouvoir donner son consentement. Ils devront le faire avant de pouvoir interagir avec le forum
				</p>
			</div>
		</div>
		<div class="col-sm-5 col-xs-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Rechercher un Utilisateur</h3>
				</div>
				<div class="panel-body form">
					<p>Vérifiez le statut par un utilisateur ici.</p>
					<div class="form-group">
						<label for="user-search">[[users:search]]</label>
						<input class="form-control" type="text" id="user-search" placeholder="[[users:enter_username]]" />
						<div class="consent-check">
							<!-- IF check -->
							<!-- BEGIN check -->
							<hr />
							<div class="row">
								<div class="col-xs-3">
									<a target="_blank" href="{config.relative_path}/uid/{../uid}">
										<!-- IF ../picture -->
										<img class="avatar avatar-lg" component="user/picture" src="{../picture}" itemprop="image" />
										<!-- ELSE -->
										<div class="avatar avatar-lg" component="user/picture" style="background-color: {../icon:bgColor};">{../icon:text}</div>
										<!-- END -->
									</a>
								</div>
								<div class="col-xs-9">
									<p>
										<strong>Utilisateur :</strong> {../username}<br />
										<strong>Consentement:</strong>
										<!-- IF ../consented -->
										<span class="label label-success"><i class="fa fa-thumbs-up"></i></span>
										<!-- ELSE -->
										<span class="label label-danger"><i class="fa fa-thumbs-down"></i></span>
										<!-- END -->
									</p>
								</div>
							</div>
							<!-- END -->
							<!-- END -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<hr />

	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Utilisateur</h3>
				</div>
				<div class="panel-body">
					<table class="table table-striped">
						<thead>
							<tr>
								<th colspan="2">Utilisateurs</th>
								<th>Accord</th>
							</tr>
						</thead>
						<tbody>
							<!-- BEGIN users -->
							<tr>
								<td>
									<!-- IF ../picture -->
									<a href="{config.relative_path}/user/{../userslug}"><img class="avatar avatar-sm" src="{../picture}" title="{../username}" /></a>
									<!-- ELSE -->
									<div class="avatar avatar-sm" style="background-color: {../icon:bgColor};" title="{../username}">{../icon:text}</div>
									<!-- ENDIF ../picture -->
								</td>
								<td>
									{../username}
								</td>
								<td>
									<!-- IF ../gdpr_consent -->
									<span class="label label-success"><i class="fa fa-thumbs-up"></i></span>
									<!-- ELSE -->
									<span class="label label-danger"><i class="fa fa-thumbs-down"></i></span>
									<!-- END -->
								</td>
							</tr>
							<!-- END -->
						</tbody>
					</table>

					<!-- IMPORT partials/paginator.tpl -->
				</div>
			</div>
		</div>
	</div>
</form>

<button id="save" class="floating-button mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
	<i class="material-icons">save</i>
</button>