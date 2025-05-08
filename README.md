# IPTV Domain Tester

Ce projet est un outil **simple et local** pour tester des domaines IPTV avec des comptes utilisateurs valides.  
Il prend en charge **deux profils** (DINO et TREX) avec leurs propres listes de domaines et identifiants.

---

## ⚠️ AVERTISSEMENT

✅ Cet outil **ne consomme aucun flux IPTV**, il ne fait qu'interroger les serveurs pour vérifier si le compte est valide.  
❌ Il **n'accède à aucun contenu vidéo** ni ne contourne de protections.  
🟡 Il **fonctionne uniquement avec des identifiants valides** **associés aux bons serveurs**.

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
cd iptv-domain-tester       #si cdomain_tester.sh est dans le dossier iptv-domain-tester !
chmod +x domain_tester.sh
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

## 🧪 Recommandation

- Testez uniquement **vos propres comptes** ou ceux sous votre responsabilité.
- N’utilisez pas cet outil à des fins d’abus ou de scan massif de services tiers.

---

## ✉️ Contact

Pour toute amélioration ou bug : ouvrez une issue ou modifiez via Git.

---
