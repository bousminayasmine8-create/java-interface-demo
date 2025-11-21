const vehicles = [
    {type: 'Car', model: 'Toyota', color: 'Rouge', year: 2022},
    {type: 'Motorcycle', model: 'Yamaha', color: 'Bleu', year: 2023}
];

const listDiv = document.getElementById('vehicle-list');
vehicles.forEach(v => {
    const p = document.createElement('p');
    p.textContent = `${v.type} : ${v.model}, Couleur: ${v.color}, Année: ${v.year}`;
    listDiv.appendChild(p);
});
