<template>
  <div class="home">
    Title: <input type="text" v-model="title" /><br />
    Name: <input type="number" v-model="year" /><br />
    Plot: <input type="text" v-model="plot" /><br />
     <button v-on:click="createMovie()">Add Movie</button>
    <div v-for="movie in movies" v-bind:key="movie.id">
      <h1>{{movie}}</h1>
    </div>  
    <div>
    </div>
  </div>
</template>
<style></style>
<script>
import axios from "axios";
export default {
  data: function () {
    return {
      movies: [],
      newMovie: "",
      form: {
        title: this.title,
        year: this.year,
        plot: this.plot,
        director: this.director,
        english: this.english
      },
    };
  }, 
  created: function () {
    this.indexMovie();

  },
  methods: {
   indexMovie: function () {
      axios.get("http://localhost:3000/movies").then((response) => {
        console.log(response.data);
        this.movies = response.data;
      });
    },
   createMovie: function() {
     axios
        .post("http://localhost:3000/movies", this.form)
        .then((response) => {
          console.log("Success!", response.data);
          this.newMovie.push(response.data);
        })
        .catch((error) => {
          console.log(error.response.data.errors);
        });
   }
  },
};
</script>
