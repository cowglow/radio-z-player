<script>
    import StreamPlayer from "../components/StreamPlayer.svelte";
    import Header from "../components/Header.svelte";
</script>

<div class="player">
    <Header/>
    <StreamPlayer/>
    <div class="footer">View the source code:<a href="https://github.com/cowglow/radio-z-player/" target="_blank" rel="noreferrer nofollow">GitHub</a></div>
</div>

<style>
    .footer{
        display: flex;
        justify-content: center;
        font-size: 0.95rem;
        font-family: "Open Sans", sans-serif;
        font-weight: lighter;
        padding-bottom: 1rem;
        gap:1px;
    }
    .footer a {
        color: var(--blue);
        text-decoration: none;
        text-shadow: 1px 1px var(--orange);
    }
    .footer a:hover {
        color: var(--orange);
        text-shadow: 1px 1px var(--blue);
        text-decoration: underline;
    }
</style>
