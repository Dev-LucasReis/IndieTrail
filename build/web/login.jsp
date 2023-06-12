<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IndieTrail</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://unpkg.com/vue@next"></script>
</head>
<body>
<%@include file="WEB-INF/jspf/header.jspf" %>
<div id="app" class="container-fluid m-2">
    <div v-if="shared.session">
        <div v-if="error" class="alert alert-danger m-2" role="alert">
            {{error}}
        </div>
        <div v-else>
            <h2>Biblioteca de Jogos</h2>
            <div class="input-group mb-3">
                <span class="input-group-text" id="basic-addon1"><i class="bi bi-controller"></i></span>
                <input type="text" class="form-control" v-model="newGameTitle" placeholder="Título">
                <input type="text" class="form-control" v-model="newGameGenre" placeholder="Gênero">
                <input type="text" class="form-control" v-model="newGamePlatform" placeholder="Plataforma">
                <input type="text" class="form-control" v-model="newGameDeveloper" placeholder="Desenvolvedor">
                <input type="text" class="form-control" v-model="newGamePublisher" placeholder="Publicadora">
                <input type="text" class="form-control" v-model="newReleaseDate" placeholder="Data de Lançamento">
                <input type="number" class="form-control" v-model="newGamePrice" placeholder="Preço">
                <button class="btn btn-primary" type="button" @click="addGame"><i class="bi bi-plus"></i> Adicionar Jogo</button>
            </div>
            <div class="row">
                <div class="col-md-4 mb-4" v-for="item in list" :key="item.gameId">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">{{ item.gameTitle }}</h5>
                            <p class="card-text"><strong>Gênero:</strong> {{ item.gameGenre }}</p>
                            <p class="card-text"><strong>Plataforma:</strong> {{ item.gamePlatform }}</p>
                            <p class="card-text"><strong>Desenvolvedor:</strong> {{ item.gameDeveloper }}</p>
                            <p class="card-text"><strong>Publicadora:</strong> {{ item.gamePublisher }}</p>
                            <p class="card-text"><strong>Data de Lançamento:</strong> {{ item.releaseDate }}</p>
                            <p class="card-text"><strong>Preço:</strong> {{ item.gamePrice.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' }) }}</p>
                            <button type="button" class="btn btn-danger" @click="deleteGame(item.gameId)"><i class="bi bi-trash"></i> Excluir</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    const app = Vue.createApp({
        data() {
            return {
                shared: shared,
                error: null,
                newGameTitle: '',
                newGameGenre: '',
                newGamePlatform: '',
                newGameDeveloper: '',
                newGamePublisher: '',
                newReleaseDate: '',
                newGamePrice: 0.0,
                list: [],
            }
        },
        methods: {
            async request(url = "", method, data) {
                try {
                    const response = await fetch(url, {
                        method: method,
                        headers: {"Content-Type": "application/json"},
                        body: JSON.stringify(data)
                    });
                    if (response.status === 200) {
                        return response.json();
                    } else {
                        this.error = response.statusText;
                    }
                } catch (e) {
                    this.error = e;
                    return null;
                }
            },
            async loadList() {
                const data = await this.request("/indieTrail/api/games", "GET");
                if (data) {
                    this.list = data.list;
                }
            },
            async addGame() {
                const data = await this.request("/indieTrail/api/games", "POST", {
                    gameTitle: this.newGameTitle,
                    gameGenre: this.newGameGenre,
                    gamePlatform: this.newGamePlatform,
                    gameDeveloper: this.newGameDeveloper,
                    gamePublisher: this.newGamePublisher,
                    releaseDate: this.newReleaseDate,
                    gamePrice: this.newGamePrice,
                });
                if (data) {
                    this.newGameTitle = '';
                    this.newGameGenre = '';
                    this.newGamePlatform = '';
                    this.newGameDeveloper = '';
                    this.newGamePublisher = '';
                    this.newReleaseDate = '';
                    this.newGamePrice = 0.0;
                    await this.loadList();
                }
            },
            async deleteGame(gameId) {
                const response = await this.request(`/indieTrail/api/games/${gameId}`, "DELETE");
                if (response) {
                    await this.loadList();
                }
            },
        },
        mounted() {
            this.loadList();
        },
    });
    app.mount('#app');
</script>
<br>
<main></main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<%@include file="WEB-INF/jspf/footer.jspf" %>
</body>
</html>


