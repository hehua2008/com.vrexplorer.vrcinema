.class public Lcom/google/vr/cardboard/NFCUtils;
.super Ljava/lang/Object;
.source "NFCUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;

.field nfcAdapter:Landroid/nfc/NfcAdapter;

.field nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field nfcIntentFilters:[Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/vr/cardboard/NFCUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/NFCUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/vr/cardboard/NFCUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createNfcIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    return-object v0
.end method


# virtual methods
.method protected isNFCEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->context:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 31
    new-instance v0, Lcom/google/vr/cardboard/NFCUtils$1;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/NFCUtils$1;-><init>(Lcom/google/vr/cardboard/NFCUtils;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    invoke-direct {p0}, Lcom/google/vr/cardboard/NFCUtils;->createNfcIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 40
    const-string v1, "cardboard"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/google/vr/cardboard/NFCUtils;->createNfcIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 43
    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 44
    const-string v2, "goo.gl"

    invoke-virtual {v1, v2, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/google/vr/cardboard/NFCUtils;->createNfcIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 47
    const-string v3, "http"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 48
    const-string v3, "google.com"

    invoke-virtual {v2, v3, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "/cardboard/cfg.*"

    invoke-virtual {v2, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 51
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/content/IntentFilter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    aput-object v2, v3, v5

    iput-object v3, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcIntentFilters:[Landroid/content/IntentFilter;

    .line 56
    return-void
.end method

.method protected onNFCTagDetected(Landroid/nfc/Tag;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/vr/cardboard/NFCUtils;->isNFCEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/google/vr/cardboard/NFCUtils;->createNfcIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/google/vr/cardboard/NFCUtils;->context:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/google/vr/cardboard/NFCUtils;->isNFCEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/google/vr/cardboard/NFCUtils;->nfcIntentFilters:[Landroid/content/IntentFilter;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method
