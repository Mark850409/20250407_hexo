// fetch('https://textgen.cqd.tw/?format=json&size=500', {
//   mode: "no-cors",
//   }).then(function (res){
//     console.log(res);
//     return res.json();
// })
// .then(function (data) {
//     console.log(data);
//     // var content = document.getElementById('content');
//     // content.innerText = data.text;
//   })
// .catch(function (err) {
//   console.error(err);
// })
fetch("https://textgen.cqd.tw/?format=plain&size=300", 
  {
      method: "GET", 
      headers: {
          'Access-Control-Allow-Origin': '*'
      }
  }
).then(response => response.json())
.then(data => {
  console.log(data);
})
.catch((err) => {
  console.log(err);
  })

// fetch('https://textgen.cqd.tw/?format=json&size=500', {
//   // mode: 'no-cors',
//   method: 'GET',
//   headers: {
//     Accept: 'application/json',
//   },
// },
// ).then(response => {
//   if (response.ok) {
//     response.json().then(json => {
//       console.log(json);
//     });
//   }
// });
// var post_count=Math.floor(Math.random()*100)+1;
// console.log(Math.floor(Math.random()*100)+1)

// fetch('https://jsonplaceholder.typicode.com/posts/'+post_count)
//     .then(function (res){
//       return res.json();
//     })
//     .then(function (data) {
//     var content = document.getElementById('content');
//     content.innerText = data.body;
//     console.log(data.body);
//     })
//     .catch(function (err) {
//       console.error(err);
//     })