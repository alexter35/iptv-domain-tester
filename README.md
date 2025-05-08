# IPTV Domain Tester

Ce projet est un outil **simple et local** pour tester des domaines IPTV avec des comptes utilisateurs valides.  
Il prend en charge **deux profils** (DINO et TREX) avec leurs propres listes de domaines et identifiants.

---

## ⚠️ AVERTISSEMENT

✅ Cet outil **ne consomme aucun flux IPTV**, il ne fait qu'interroger les serveurs pour vérifier si un compte est actif.  
❌ Il **n'accède à aucun contenu multimédia**, ne contourne aucune protection et ne stocke aucune donnée.

📌 **Ce projet est fourni exclusivement à des fins pédagogiques, de test de connectivité ou d'intégration technique** dans des environnements contrôlés.  
Aucun usage malveillant, abusif ou hors cadre légal ne sera toléré ou soutenu.

🛑 **L’auteur ne fournit aucun support, ni garantie, ni responsabilité sur l’usage de cet outil.**  
Utilisez-le uniquement avec des identifiants et services IPTV que vous possédez légalement.

---

## 🛠 Installation

1. Dézippez le dossier :
```bash
unzip iptv-domain-tester.zip
cd iptv-domain-tester
chmod +x domain_tester.sh
```

2. Modifiez les identifiants dans `domain_tester.sh` :
```bash
LOGIN_DINO="votre_login_dino"
PASS_DINO="votre_mdp_dino"

LOGIN_TREX="votre_login_trex"
PASS_TREX="votre_mdp_trex"
```

3. Remplissez les fichiers de domaines :
- `domains_dino.txt` → Liste des domaines IPTV à tester pour DINO
- `domains_trex.txt` → Idem pour TREX
###ATTENTION : les dommaine dont placé sans element supplementaire ! ###

📝 Une ligne par domaine, exemple :
```
http://domaine1.com
http://domaine2.net
http://ip.tv:8080
```

---

## ▶️ Utilisation

Lancez le script interactif :
```bash
./domain_tester.sh
```

Choisissez le serveur à tester :
```
1) DINO
2) TREX
```

Les domaines détectés comme **ONLINE** seront enregistrés dans :
- `/tmp/domains_up_dino.txt`
- `/tmp/domains_up_trex.txt`

---

## ✉️ Note légale et éducative

🧠 Ce projet a été conçu uniquement dans un objectif **éducatif et expérimental**.  
Il vise à comprendre le fonctionnement de services IPTV au niveau réseau (HTTP), sans interaction avec les flux ou les contenus.

📚 Il peut être utilisé dans un cadre :
- d'apprentissage personnel
- de tests réseau ou API
- de diagnostic d'accès (avec comptes valides)

📦 Aucune distribution ni hébergement de contenu IPTV n'est impliqué.

---

**Utilisation responsable uniquement.**  
Tout usage hors de ce cadre est **fermement déconseillé** et **aux risques de l’utilisateur**.

---
