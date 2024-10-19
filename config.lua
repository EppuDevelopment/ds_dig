DS = {}
LANGUAGE = 'ENG' --- The Language is at 18 row there you can make more language's and put here the start name like ENG / FIN or your own

DS.item = 'shovel' -- the item you need to start digging?


DS.digsite = {
    ['oxtargetlabel'] = 'Dig', --- This is the ox_target label like: Dig / Start Dig
    ['oxtargeticon'] = 'fas fa-person-digging',
    ['position'] = vector3(2083.7119, 4599.1787, 34.6251),
    ['digsitesize'] = 50.0,
    ['progresduration'] = 10,
}

DS.digsiteblip = {
    ['blipsprite'] = 273,
    ['blipcolor'] = 24
}


DS.language = {
    ['FIN'] = {
        ['progresslabel'] = 'Kaivetaan...',
        ['bliplabel'] = 'Kaivuualue',
        ['notifyfailed'] = 'Kaivuu!',
        ['notifyfaileddesc'] = 'Epäonnistuit kaivamisessa!',

    },
    ['ENG'] = {
        ['progresslabel'] = 'Digging...',
        ['bliplabel'] = 'Excavation area',
        ['notifyfailed'] = 'You Failed',
        ['notifyfaileddesc'] = 'You failed at digging!',
    },
}

DS.stashlabel = 'Ground' --- This is the second inventory label where you get your items like Ground,Dirt,sand
DS.stashweight = '25000' ----- Inventorys Weight it could be like 9999999 just for items when given


