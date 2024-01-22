<script>
// import StreamPlayer from "../components/StreamPlayer.svelte";
import StreamPlayer from "../components/StreamPlayer.svelte";
</script>

<div class="player">
    <div class="head">
        <div class="back"></div>
        <div class="front">
            <div class="avatar">
                <img src="http://vignette4.wikia.nocookie.net/lyricwiki/images/1/15/Semisonic_portrait.jpg/revision/latest?cb=20090409134209" alt="Artist Avatar">
            </div>
            <div class="infos">
                <div class="titulo_song">
                    KFC - Killing Fabulous Chickens
                </div>
                <div class="duracao_song">
                    <i class="fa fa-clock-o"></i> Total time 45:12
                </div>
                <div class="tags">
                    <span>Educativo</span>
                    <span>Galinhas</span>
                    <span>Podcast</span>
                </div>
            </div>
        </div>
    </div>

   <StreamPlayer/>

    <div class="rotation"></div>
</div>
