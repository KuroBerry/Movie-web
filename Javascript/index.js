var swiper = new Swiper(".theater-content", {
  slidersPerView: 1,
  spaceBetween: 10,
  autoplay: {
    delay: 3500,
    disableOnInteraction: false,
  },
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  breakpoints: {
    280: {
      slidesPerView: 1,
      spaceBetween: 10,
    },
    320: {
      slidesPerView: 2,
      spaceBetween: 10,
    },
    510: {
      slidesPerView: 2,
      spaceBetween: 15,
    },
    758: {
      slidesPerView: 3,
      spaceBetween: 15,
    },
    900: {
      slidesPerView: 4,
      spaceBetween: 20,
    }
  }
});


//Show video
let playButton = document.querySelector(".play-movie");
let video = document.querySelector(".video-container");
let closeButton = document.querySelector(".close-video");
let myVideo = document.querySelector("#myvideo");

playButton.onclick = () => {
  video.classList.add("show-video");
  console.log(video.classList);
  myVideo.play();
}

closeButton.onclick = () => {
  video.classList.remove("show-video");
  myVideo.pause();
}

const allStar = document.querySelectorAll('.rating-comment .star')
const ratingValue = document.querySelector('.rating-comment .rate')

allStar.forEach((item, idx)=> {
	item.addEventListener('click', function () {
		let click = 0
		ratingValue.value = idx + 1
    // alert(ratingValue.value);

		allStar.forEach(i=> {
			i.classList.replace('bxs-star', 'bx-star')
			i.classList.remove('active')
		})
		for(let i=0; i<allStar.length; i++) {
			if(i <= idx) {
				allStar[i].classList.replace('bx-star', 'bxs-star')
				allStar[i].classList.add('active')
			} 
      else {
				allStar[i].style.setProperty('--i', click)
				click++
			}
		}
	})
})