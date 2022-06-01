<template>
    <div id="svaMap">
        <p>Geschäftsstellen | Standorte | Mitarbeiter/innen</p>
        <div class="img-wrapper">
            <div class="column-wrapper">
                <img src="SVA_Map.png" alt="SVA-Map" usemap="#workmap">
                <span class="berlin">O</span>
            </div>

        </div>
    </div>

</template>

<script>
export default {
    name: "DashMap"
};
</script>

<style scoped>
span {
    position: absolute;
    top: 185px;
    right: 105px;
}

img {
    width: 450px;
    height: 600px;
}

#svaMap {
    display: flex;
    flex-direction: column;
}
.img-wrapper {
    display: flex;
    justify-content: center;
    align-items: flex-start;
}
.column-wrapper {
    position: relative;
}
</style>

<!-- <template>        
    <div id="map">
        <p>Geschäftsstellen | Standorte | Teams & Mitarbeiter</p>
        <img src="DMap.jpg" alt="sva-map" width="200" height="300">
    </div>
</template> -->