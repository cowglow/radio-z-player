<script>
    import "./StreamPlayer.styles.css"

    let active = false
    const streamUrl = "https://stream.radio-z.net/live"
    const audioFile = new Audio(streamUrl)

    function toggleActive() {
        active = !active
    }

    function playBtnInit(node) {
        node.addEventListener("click", () => {
            toggleActive()
            if (active) {
                audioFile.play()
            } else {
                audioFile.pause()
            }
        })
    }
</script>

<div class="timeline">
    <div class="soundline"></div>
    <div class="controllers">
        <button class="play" use:playBtnInit>
            {#if active}
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
                    <!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                    <path d="M48 64C21.5 64 0 85.5 0 112V400c0 26.5 21.5 48 48 48H80c26.5 0 48-21.5 48-48V112c0-26.5-21.5-48-48-48H48zm192 0c-26.5 0-48 21.5-48 48V400c0 26.5 21.5 48 48 48h32c26.5 0 48-21.5 48-48V112c0-26.5-21.5-48-48-48H240z"/>
                </svg>
            {:else}
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512">
                    <!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                    <path d="M73 39c-14.8-9.1-33.4-9.4-48.5-.9S0 62.6 0 80V432c0 17.4 9.4 33.4 24.5 41.9s33.7 8.1 48.5-.9L361 297c14.3-8.7 23-24.2 23-41s-8.7-32.2-23-41L73 39z"/>
                </svg>
            {/if}
        </button>
    </div>
</div>

<!--<div class="audio-player">-->
<!--    <audio id="audio" use:audioInit>-->
<!--        <source src={streamUrl} type="audio/mpeg">-->
<!--        Your browser does not support the audio tag.-->
<!--    </audio>-->
<!--</div>-->
