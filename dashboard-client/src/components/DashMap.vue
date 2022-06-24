<template>
    <div id="svaMap">
        <!-- <p>Geschäftsstellen | Standorte | Mitarbeiter/innen</p> -->
        <div class="img-wrapper">
            <div class="column-wrapper">
                <img src="SVA_Map.png" alt="SVA-Map" usemap="#workmap">
                <span class="nord info-hover" id="nord">{{ database.geschaeftsstelle[0].bezeichnung }}
                    <InfoBox title="Geschäftsstelle Nord" id="info-nord" class="info-box" />
                </span>
                <span class="bremen info-hover" id="bremen">
                    <InfoBox title="Mitarbeiter am Standort Bremen" class="info-box" id="info-bremen" />
                </span>
                <span class="ost info-hover" id="ost">{{ database.geschaeftsstelle[2].bezeichnung }}
                    <InfoBox title="Geschäftsstelle Ost" id="info-ost" class="info-box" />
                </span>
                <span class="berlin info-hover" id="berlin">
                    <InfoBox class="info-box" :mitarbeiter="database.mitarbeiter[0]" />
                </span>
                <span class="nord-west info-hover" id="nord-west">{{ database.geschaeftsstelle[1].bezeichnung }}
                    <InfoBox title="Geschäftsstelle Nord-West" id="info-nord-west" class="info-box" />
                </span>
                <span class="schwerte info-hover" id="schwerte">
                    <InfoBox title="Standort Schwerte" class="info-box" />
                </span>
                <span class="mitte info-hover" id="mitte">{{ database.geschaeftsstelle[3].bezeichnung }}
                    <InfoBox title="Geschäftsstelle Mitte" id="info-mitte" class="info-box" />
                </span>
                <span class="düsseldorf info-hover" id="düsseldorf">
                    <InfoBox title="Standort Düsseldorf" class="info-box" />
                </span>
                <span class="köln info-hover" id="köln">
                    <InfoBox title="Standort Köln" class="info-box" />
                </span>
                <span class="bonn info-hover" id="bonn">
                    <InfoBox title="Standort Bonn" class="info-box" />
                </span>
                <span class="wiesbaden info-hover" id="wiesbaden">
                    <InfoBox title="Standort Wiesbaden" class="info-box" />
                </span>
                <span class="würzburg info-hover" id="würzburg">
                    <InfoBox title="Standort Würzburg" class="info-box" />
                </span>
                <span class="süd-west info-hover" id="süd-west">{{ database.geschaeftsstelle[9].bezeichnung }}
                    <InfoBox title="Geschäftsstelle Süd-West" id="info-süd-west" class="info-box" />
                </span>
                <span class="karlsruhe info-hover" id="karlsruhe">
                    <InfoBox title="Standort Karlsruhe" class="info-box" />
                </span>
                <span class="ulm info-hover" id="ulm">
                    <InfoBox title="Standort Ulm" class="info-box" />
                </span>
            </div>
        </div>
    </div>
</template>

<script>
import InfoBox from '@/components/InfoBox.vue';
import db from '@/db';

export default {
    data() {
        const database = db;

        return {
            database
        }
    },
    /* methods() {
        const xData = JSON.stringify(database);

        return {
            xData
        }
    }, */
    components: {
        InfoBox,
    },
};

console.log(db);
</script>


<style scoped>
.info-box {
    width: 250px;
    height: 320px;
    position: absolute;
    z-index: 1;
    right: 40%;
    display: none;
    background-color: antiquewhite; 
    color: rgb(80, 130, 195);
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: large;
    font-weight: 500;
}

.info-hover {
    width: 50px;
    height: 50px;
}

.info-hover:hover  {
    height: 80px;
}

.info-hover:hover > .info-box {
    display: block;
}

.nord {
    position: absolute;
    top: 140px;
    right: 230px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-weight: 600;
    color: rgb(80, 130, 195);
}

#nord:hover {
    color: black;
}

#info-nord::after {
    content: "1 Standort \A ----- \A Allerkai 4 \A 28309 Bremen";
    white-space: pre-wrap;
}
.bremen {
    position: absolute;
    top: 90px;
    right: 293px;
}

#info-bremen::after {
    content: "1 Mitarbeiterin \A ---- \A Lisa-Marie Liu \A Team Individualentwicklung \A lisa-marie.liu@sva.de \A +49 151 99887766 \A UX/UI-Design";
    white-space: pre-wrap;
}

.ost {
    position: absolute;
    top: 240px;
    right: 110px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-weight: 600;
    color: rgb(80, 130, 195);;
}

#ost:hover {
    color: black;
}

#info-ost::after {
    content: "1 Standort \A ----- \A Rotherstraße 16 \A 10245 Berlin";
    white-space: pre-wrap;
}

.berlin {
    position: absolute;
    top: 187px;
    right: 105px;
    height: 50px;
    width: 50px;
}

.nord-west {
    position: absolute;
    top: 180px;
    right: 320px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-weight: 600;
    color: rgb(80, 130, 195);;
}

#nord-west:hover {
    color: black;
}

#info-nord-west::after {
    content: "1 Standort \A ----- \A Konrad-Zuse-Straße 14 \A 58239 Schwerte";
    white-space: pre-wrap;
}

.schwerte {
    position: absolute;
    top: 277px;
    right: 353px;
}

.mitte {
    position: absolute;
    top: 450px;
    right: 140px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-weight: 600;
    color: rgb(80, 130, 195);;
}

#mitte:hover {
    color: black;
}

#info-mitte::after {
    content: "5 Standorte \A ----- \A > Borsigstraße 26 \A 65205 Wiesbaden \A > Kennedydamm 24 \A 40476 Düsseldorf \A > Breslauer Platz 4 \A 50668 Köln \A > Joseph-Schumpeter-Allee 29 \A 53227 Bonn \A > Friedrich-Bergius-Ring 52 \A 97076 Würzburg";
    white-space: pre-wrap;
}

.düsseldorf {
    position: absolute;
    top: 273px;
    right: 398px;
}

.köln {
    position: absolute;
    top: 320px;
    right: 393px;
}

.bonn {
    position: absolute;
    top: 351px;
    right: 380px;
}

.wiesbaden {
    position: absolute;
    top: 390px;
    right: 338px;
}

.würzburg {
    position: absolute;
    top: 413px;
    right: 232px;
}

.süd-west {
    position: absolute;
    top: 490px;
    right: 260px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-weight: 600;
    color: rgb(80, 130, 195);;
}

#süd-west:hover {
    color: black;
}

#info-süd-west::after {
    content: "2 Standorte \A ----- \A > Amalienbadstraße 41 \A 76227 Karlsruhe \A > Syrlinstraße 35 \A 89073 Ulm";
    white-space: pre-wrap;
}

.karlsruhe {
    position: absolute;
    top: 470px;
    right: 315px;
}

.ulm {
    position: absolute;
    top: 503px;
    right: 227px;
}

img {
    width: 450px;
    height: 600px;
}

p {
    padding-bottom: 2.5%;
}

#svaMap {
    display: flex;
    flex-direction: column;
    padding: 2%;
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
