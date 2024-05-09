#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this script as root (sudo su)"
    exit
fi

echo "+##############################################+"
echo "# Welcome To Pollen! (RootFS)                   #"
echo "# The User Policy Editor                       #"
echo "# -------------------------------------------- #"
echo "# Developers:                                  #"
echo "# - OlyB                                       #"
echo "# - Rafflesia                                  #"
echo "# - r58Playz                                   #"
echo "+##############################################+"
echo "May Ultrablue Rest in Peace, o7"

sleep 1

mkdir -p /etc/opt/chrome/policies/managed
echo '{
   "chromeMetadata": {
      "application": "Google Chrome",
      "platform": "15823.40.0 (Official Build) stable-channel kukui",
      "revision": "df7619051c330b88e98a520235d51cff39bf4077-refs/branch-heads/6367@{#991}",
      "version": "124.0.6367.95 (Official Build) （64 ビット）"
   },
   "policyValues": {
      "chrome": {
         "name": "Chrome Policies",
         "policies": {
            "ArcPolicy": {
               "level": "mandatory",
               "scope": "user",
               "source": "cloud",
               "value": "{\"statusReportingSettings\":{\"applicationReportsEnabled\":true,\"softwareInfoEnabled\":true,\"applicationReportingSettings\":{\"permissionsInfoEnabled\":true}},\"installUnknownSourcesDisabled\":true,\"shortSupportMessage\":{\"localizedMessages\":{\"en\":\"Looks like your Google Account can't do that.\",\"ar\":\"يبدو أن حسابك على Google غير مسموح له بتنفيذ هذا الإجراء.\",\"de\":\"Offenbar geht das mit deinem Google-Konto nicht.\",\"en-GB\":\"It looks like your Google Account can't do that.\",\"es\":\"Parece que no es posible hacer esto con tu cuenta de Google.\",\"es-419\":\"Parece que tu cuenta de Google no puede hacer eso.\",\"fr\":\"Apparemment, ton compte Google ne te permet pas d'effectuer cette opération.\",\"it\":\"A quanto pare il tuo Account Google non può eseguire questa operazione.\",\"ja\":\"ご利用の Google アカウントでは、この操作を行うことができません。\",\"ko\":\"사용 중인 Google 계정에서는 허용되지 않는 작업으로 보입니다.\",\"nl\":\"Het lijkt erop dat je Google-account dat niet kan doen.\",\"pl\":\"Wygląda na to, że nie możesz tego zrobić na swoim koncie Google.\",\"pt\":\"Não é possível fazer isso com sua Conta do Google.\",\"ru\":\"Твой аккаунт Google не поддерживает эту возможность.\",\"th\":\"ดูเหมือนว่าบัญชี Google ของคุณจะไม่มีสิทธิ์ดำเนินการดังกล่าว\",\"tr\":\"Görünüşe göre Google Hesabınız bu işlemi yapamıyor.\",\"zh-CN\":\"您的 Google 账号似乎无法执行此操作。\",\"zh-TW\":\"你的 Google 帳戶似乎無法執行這項操作。\",\"bg\":\"Изглежда, че това действие не е възможно за профила ви в Google.\",\"ca\":\"Sembla que el teu Compte de Google no pot dur a terme aquesta acció.\",\"cs\":\"Zdá se, že váš účet Google tohle udělat nemůže.\",\"da\":\"Det ser ud til, at din Google-konto ikke kan gøre det.\",\"el\":\"Φαίνεται πως ο Λογαριασμός σας Google δεν μπορεί να πραγματοποιήσει αυτή την ενέργεια.\",\"fa\":\"به‌نظر می‌رسد با حساب Google شما نمی‌توان این کار را انجام داد.\",\"fi\":\"Näyttää siltä, että tämä ei onnistu Google-tililläsi.\",\"fil\":\"Mukhang hindi maaaring gawin iyon ng iyong Google Account.\",\"hi\":\"ऐसा लगता है कि आपका 'Google खाता' यह काम नहीं कर सकता.\",\"hr\":\"Čini se da tvoj Google račun to ne može učiniti.\",\"hu\":\"Úgy tűnik, a Google-fiókodban nem áll rendelkezésre ez a funkció.\",\"id\":\"Sepertinya Akun Google-mu tidak dapat digunakan untuk melakukan tindakan tersebut.\",\"he\":\"נראה שבחשבון Google שלך אין הרשאה לבצע את הפעולה הזו.\",\"lt\":\"Panašu, kad naudojant jūsų „Google“ paskyrą šio veiksmo atlikti negalima.\",\"lv\":\"Šķiet, ka šo darbību nevar veikt jūsu Google kontā.\",\"no\":\"Det ser ut til at du ikke kan gjøre dette med Google-kontoen din.\",\"pt-PT\":\"Parece que a tua Conta Google não pode fazer isso.\",\"ro\":\"Se pare că nu se poate face acest lucru cu Contul tău Google.\",\"sk\":\"Zdá sa, že tvoj účet Google túto akciu nemôže vykonať.\",\"sl\":\"Kaže, da tvoj račun Google nima dostopa do tega.\",\"sr\":\"Изгледа да твој Google налог не може то да уради.\",\"sv\":\"Det verkar inte gå att göra det med ditt Google-konto.\",\"uk\":\"Схоже, цю дію не можна виконати у твоєму обліковому записі Google.\",\"vi\":\"Có vẻ như Tài khoản Google của bạn không thể thực hiện hành động đó.\",\"af\":\"Dit lyk of jou Google-rekening dit nie kan doen nie.\",\"az\":\"Google Hesabınızın bu əməliyyatı etmək üçün icazəsi yoxdur.\",\"bn\":\"আপনার Google অ্যাকাউন্ট ব্যবহার করে এটি করা যাবে না বলে মনে হচ্ছে।\",\"et\":\"Tundub, et teie Google’i kontoga ei saa seda teha.\",\"hy\":\"Ձեր Google հաշիվը չի աջակցում այդ հնարավորությունը:\",\"is\":\"Svo virðist vera sem Google reikningurinn þinn geti ekki gert þetta.\",\"ka\":\"როგორც ჩანს, თქვენი Google ანგარიში ამ ქმედებას ვერ შეასრულებს.\",\"kk\":\"Мұны орындауға Google аккаунтыңыздың рұқсаты жоқ сияқты.\",\"km\":\"ហាក់ដូចជា ​គណនី Google របស់​អ្នក​មិន​អាច​ធ្វើ​ដូច​នោះ​បាន​ទេ។\",\"lo\":\"ບັນຊີ Google ຂອງທ່ານບໍ່ສາມາດເຮັດແບບນັ້ນໄດ້.\",\"mk\":\"Се чини дека вашата сметка на Google не може да го прави тоа.\",\"mn\":\"Таны Google Бүртгэл үүнийг хийх боломжгүй байна.\",\"mr\":\"असे दिसते की, तुमचे Google खाते ते करू शकत नाही.\",\"ms\":\"Nampaknya Google Account anda tidak dapat melakukan tindakan itu.\",\"my\":\"သင့် Google အကောင့်သည် ၎င်းကို ဆောင်ရွက်နိုင်ပုံ မပေါ်ပါ။\",\"ne\":\"तपाईंको Google खाता प्रयोग गरेर त्यो काम गर्न सकिँदैन जस्तो देखिन्छ।\",\"si\":\"ඔබේ Google ගිණුමට එය කළ නොහැකි බව පෙනේ.\",\"sq\":\"Me sa duket llogaria jote e Google nuk mund ta bëjë atë.\",\"sw\":\"Inaonekana Akaunti yako ya Google haiwezi kufanya hivyo.\",\"ta\":\"உங்கள் Google கணக்கால் இதைச் செய்ய முடியாதது போல் தெரிகிறது.\",\"am\":\"የእርስዎ Google መለያ ይህን ማድረግ የማይችል ይመስላል።\",\"fr-CA\":\"Il semble que ton compte Google ne peut pas encore faire cette action.\",\"gu\":\"એવું લાગી રહ્યું છે કે આ ક્રિયા તમારું Google એકાઉન્ટ કરી શકશે નહીં.\",\"kn\":\"ನಿಮ್ಮ Google ಖಾತೆಗೆ ಹಾಗೆ ಮಾಡಲು ಸಾಧ್ಯವಿಲ್ಲದಂತೆ ತೋರುತ್ತಿದೆ.\",\"ky\":\"Google аккаунтуңуз муну жасай албайт окшойт.\",\"ml\":\"നിങ്ങളുടെ Google അക്കൗണ്ടിന് അത് ചെയ്യാനാകുമെന്ന് തോന്നുന്നില്ല.\",\"pa\":\"ਇੰਝ ਜਾਪਦਾ ਹੈ ਕਿ ਤੁਹਾਡਾ 'Google ਖਾਤਾ' ਇਹਨਾਂ ਕੰਮਾਂ ਲਈ ਵਰਤਿਆ ਨਹੀਂ ਜਾ ਸਕਦਾ।\",\"sr-Latn\":\"Izgleda da tvoj Google nalog ne može to da uradi.\",\"te\":\"మీ Google ఖాతా దాన్ని చేయలేదని అనిపిస్తోంది.\",\"ur\":\"لگتا ہے آپ کا Google اکاؤنٹ ایسا نہیں کر سکتا۔\",\"uz\":\"Google hisobingiz orqali ushbu amalni bajarish imkonsiz.\",\"as\":\"আপোনাৰ Google একাউণ্টটোৱে সেইটো কৰিব নোৱাৰে যেন লাগিছে।\",\"be\":\"Ваш уліковы запіс Google не падтрымлівае такую магчымасць.\",\"bs\":\"Izgleda da tvoj Google račun to ne može učiniti.\",\"cy\":\"It looks like your Google Account can't do that.\",\"eu\":\"Badirudi zure Google-ko kontuarekin ezin dela egin hori.\",\"ga\":\"Looks like your Google Account can't do that.\",\"gl\":\"Parece que a túa Conta de Google non che permite facer iso.\",\"or\":\"ଆପଣଙ୍କର Google ଆକାଉଣ୍ଟ ତାହା ନକରିପାରିଲା ଭଳି ଲାଗୁଛି।\",\"sd\":\"Looks like your Google Account can't do that.\",\"so\":\"Looks like your Google Account can't do that.\",\"zu\":\"Kubukeka sengathi I-akhawunti yakho ye-Google ayikwazi ukwenza lokho.\",\"ar-DZ\":\"يبدو أن حسابك على Google غير مسموح له بتنفيذ هذا الإجراء.\",\"ar-EG\":\"يبدو أن حسابك على Google غير مسموح له بتنفيذ هذا الإجراء.\",\"de-CH\":\"Offenbar geht das mit deinem Google-Konto nicht.\",\"en-AU\":\"It looks like your Google Account can't do that.\",\"en-CA\":\"Looks like your Google Account can't do that.\",\"en-IN\":\"It looks like your Google Account can't do that.\",\"es-MX\":\"Parece que tu cuenta de Google no puede hacer eso.\",\"es-US\":\"Parece que tu cuenta de Google no puede hacer eso.\",\"zh-HK\":\"您的 Google 帳戶似乎無法進行這項操作。\",\"chr\":\"Looks like your Google Account can't do that.\",\"fr-CH\":\"Apparemment, ton compte Google ne te permet pas d'effectuer cette opération.\",\"ln\":\"Apparemment, ton compte Google ne te permet pas d'effectuer cette opération.\",\"rm\":\"Offenbar geht das mit deinem Google-Konto nicht.\",\"sr-ME\":\"Izgleda da tvoj Google nalog ne može to da uradi.\",\"su\":\"Sepertinya Akun Google-mu tidak dapat digunakan untuk melakukan tindakan tersebut.\",\"tn\":\"Looks like your Google Account can't do that.\",\"xh\":\"Looks like your Google Account can't do that.\"},\"defaultMessage\":\"Looks like your Google Account can't do that.\"},\"complianceRules\":[{\"nonComplianceDetailCondition\":{\"settingName\":\"applications\",\"packageName\":\"com.google.android.apps.photos\",\"nonComplianceReason\":\"APP_NOT_UPDATED\"},\"packageNamesToDisable\":[\"com.google.android.apps.photos\"]},{\"nonComplianceDetailCondition\":{\"settingName\":\"applications\",\"packageName\":\"com.google.android.googlequicksearchbox\",\"nonComplianceReason\":\"APP_NOT_UPDATED\"},\"packageNamesToDisable\":[\"com.google.android.googlequicksearchbox\"]},{\"nonComplianceDetailCondition\":{\"settingName\":\"applications\",\"packageName\":\"com.google.android.videos\",\"nonComplianceReason\":\"APP_NOT_UPDATED\"},\"packageNamesToDisable\":[\"com.google.android.videos\"]},{\"nonComplianceDetailCondition\":{\"settingName\":\"applications\",\"packageName\":\"com.google.android.play.games\",\"nonComplianceReason\":\"APP_NOT_UPDATED\"},\"packageNamesToDisable\":[\"com.google.android.play.games\"]},{\"nonComplianceDetailCondition\":{\"settingName\":\"applications\",\"packageName\":\"com.google.android.apps.chromecast.app\",\"nonComplianceReason\":\"APP_NOT_UPDATED\"},\"packageNamesToDisable\":[\"com.google.android.apps.chromecast.app\"]},{\"nonComplianceDetailCondition\":{\"settingName\":\"applications\",\"packageName\":\"com.google.android.music\",\"nonComplianceReason\":\"APP_NOT_UPDATED\"},\"packageNamesToDisable\":[\"com.google.android.music\"]},{\"nonComplianceDetailCondition\":{\"settingName\":\"applications\",\"packageName\":\"com.google.android.apps.youtube.kids\",\"nonComplianceReason\":\"APP_NOT_UPDATED\"},\"packageNamesToDisable\":[\"com.google.android.apps.youtube.kids\"]},{\"nonComplianceDetailCondition\":{\"settingName\":\"applications\",\"packageName\":\"com.google.android.apps.books\",\"nonComplianceReason\":\"APP_NOT_UPDATED\"},\"packageNamesToDisable\":[\"com.google.android.apps.books\"]},{\"nonComplianceDetailCondition\":{\"settingName\":\"applications\",\"packageName\":\"com.android.chrome\",\"nonComplianceReason\":\"APP_NOT_UPDATED\"},\"packageNamesToDisable\":[\"com.android.chrome\"]}],\"permissionGrants\":[],\"applications\":[{\"packageName\":\"com.google.android.apps.photos\",\"minimumVersionCode\":424867,\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.google.android.googlequicksearchbox\",\"minimumVersionCode\":300797853,\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.google.android.videos\",\"minimumVersionCode\":31911001,\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.play.games\",\"minimumVersionCode\":39080000,\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.apps.chromecast.app\",\"minimumVersionCode\":12920200,\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.google.android.music\",\"minimumVersionCode\":36000,\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.google.android.apps.youtube.kids\",\"minimumVersionCode\":81407000,\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.google.android.apps.books\",\"minimumVersionCode\":31027,\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.android.chrome\",\"minimumVersionCode\":339608700,\"installType\":\"AVAILABLE\"},{\"packageName\":\"org.torproject.torbrowser\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.playstation.remoteplay\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"lysesoft.andftp\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"net.imoya.tukeppa\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"ch.protonvpn.android\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"org.torproject.android\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.apps.kids.familylink\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"org.chromium.arc.applauncher\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.htc.launcher\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.clockwork.nfc\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.gms\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.apps.kids.familylinkhelper\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.android.systemui\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.clockwork.flashlight\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.qti.telephonysettings\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.launcher\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.apps.kids.familylinkmanager\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"android.autoinstalls.config.google.wear\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.apps.wearable.phone\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.apps.fitbit.p11.tiles\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.apps.fitbit.p11.smartbandexperience\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.apps.wearable.settings\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.android.vending\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.wearable.weather\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"org.chromium.arc.intent_helper\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.apps.wallpaper\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.wearable.media.sessions\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"org.chromium.arc.home\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.android.managedprovisioning\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.apps.kids.home\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.android.vpndialogs\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.inputmethod.latin\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.android.settings\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.gsf\",\"installType\":\"AVAILABLE\",\"disabled\":false},{\"packageName\":\"com.google.android.wearable.sysui\",\"installType\":\"AVAILABLE\",\"disabled\":false}]}"
            },
            "DeveloperToolsAvailability": {
               "level": "mandatory",
               "scope": "user",
               "source": "cloud",
               "value": 2
            },
            "EduCoexistenceToSVersion": {
               "level": "mandatory",
               "scope": "user",
               "source": "cloud",
               "value": "337351677"
            },
            "LacrosSecondaryProfilesAllowed": {
               "level": "mandatory",
               "scope": "user",
               "source": "cloud",
               "value": false
            },
            "ParentAccessCodeConfig": {
               "level": "mandatory",
               "scope": "user",
               "source": "cloud",
               "value": "********"
            },
            "PerAppTimeLimits": {
               "level": "mandatory",
               "scope": "user",
               "source": "cloud",
               "value": {
                  "activity_reporting_enabled": true,
                  "reset_at": {
                     "hour": 6,
                     "minute": 0
                  }
               }
            },
            "PerAppTimeLimitsAllowlist": {
               "level": "mandatory",
               "scope": "user",
               "source": "cloud",
               "value": {
                  "app_list": [
                     {
                        "app_id": "mndnfokpggljbaajbnioimlmbfngpief",
                        "app_type": "EXTENSION"
                     },
                     {
                        "app_id": "odknhmnlageboeamepcngndbggdpaobj",
                        "app_type": "WEB"
                     },
                     {
                        "app_id": "inogagmajamaleonmanpkpkkigmklfad",
                        "app_type": "WEB"
                     },
                     {
                        "app_id": "nbljnnecbjbmifnoehiemkgefbnpoeak",
                        "app_type": "WEB"
                     },
                     {
                        "app_id": "ljoammodoonkhnehlncldjelhidljdpi",
                        "app_type": "EXTENSION"
                     },
                     {
                        "app_id": "gfdkimpbcpahaombhbimeihdjnejgicl",
                        "app_type": "EXTENSION"
                     },
                     {
                        "app_id": "com.google.android.apps.kids.familylinkhelper",
                        "app_type": "ARC"
                     },
                     {
                        "app_id": "com.android.vending",
                        "app_type": "ARC"
                     },
                     {
                        "app_id": "hhaomjibdihmijegdhdafkllkbggdgoj",
                        "app_type": "EXTENSION"
                     },
                     {
                        "app_id": "ieailfmhaghpphfffooibmlghaeopach",
                        "app_type": "WEB"
                     },
                     {
                        "app_id": "hpfldicfbfomlpcikngkocigghgafkph",
                        "app_type": "WEB"
                     }
                  ],
                  "url_list": [
                     "about://*",
                     "chrome://*",
                     "chrome-search://*",
                     "file://*",
                     "https://support.google.com",
                     "http://support.google.com",
                     "https://policies.google.com",
                     "http://policies.google.com"
                  ]
               }
            },
            "ProjectorDogfoodForFamilyLinkEnabled": {
               "level": "mandatory",
               "scope": "user",
               "source": "cloud",
               "value": true
            },
            "ReportArcStatusEnabled": {
               "level": "mandatory",
               "scope": "user",
               "source": "cloud",
               "value": true
            },
            "URLBlocklist": {
               "level": "mandatory",
               "scope": "user",
               "source": "cloud",
               "value": [
                  "chrome://flags"
               ]
            },
            "UsageTimeLimit": {
               "level": "mandatory",
               "scope": "user",
               "source": "cloud",
               "value": {
                  "time_usage_limit": {
                     "reset_at": {
                        "hour": 6,
                        "minute": 0
                     }
                  }
               }
            }
         }
      },
      "extensions": {
         "ghbmnnjooekpmoecnnnilnnbdlolhkhi": {
            "forSigninScreen": false,
            "id": "ghbmnnjooekpmoecnnnilnnbdlolhkhi",
            "name": "Google オフライン ドキュメント",
            "policies": {}
         },
         "gighmmpiobklfepjocnamgkkbiglidom": {
            "forSigninScreen": false,
            "id": "gighmmpiobklfepjocnamgkkbiglidom",
            "name": "AdBlock — 最高峰の広告ブロッカー",
            "policies": {}
         }
      }
   },
   "status": {
      "user": {
         "clientId": "7554599f-6e2f-46a5-8141-e353d730ceb4",
         "domain": "gmail.com",
         "error": false,
         "flexOrgWarning": false,
         "gaiaId": "107737612703752634353",
         "isAffiliated": false,
         "policiesPushAvailable": true,
         "policyDescriptionKey": "statusUser",
         "profileId": "Y1JVqDdFg1zUejAVsG0RMimRv2k",
         "status": "ポリシー キャッシュは正常です",
         "timeSinceLastFetchAttempt": "3 分前",
         "timeSinceLastRefresh": "3 分前",
         "username": "psannetwork@gmail.com"
      }
   },
   "policyExportTime": "2024/05/10 7:59:09 JST"
}' > /etc/opt/chrome/policies/managed/pollen.json

echo ""
echo "Pollen (RootFS) has been successfully applied!"
