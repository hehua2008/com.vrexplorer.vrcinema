.class public Lcom/google/vr/cardboard/VrSettingsProviderContract;
.super Ljava/lang/Object;
.source "VrSettingsProviderContract.java"


# static fields
.field public static final DAYDREAM_SETUP_COMPLETED:Ljava/lang/String; = "daydream_setup"

.field public static final DEVICE_PARAMS_SETTING:Ljava/lang/String; = "device_params"

.field public static final PHONE_PARAMS_SETTING:Ljava/lang/String; = "phone_params"

.field public static final PROVIDER_INTENT_ACTION:Ljava/lang/String; = "android.content.action.VR_SETTINGS_PROVIDER"

.field public static final SDK_CONFIGURATION_PARAMS_SETTING:Ljava/lang/String; = "sdk_configuration_params"

.field public static final SETTING_VALUE_KEY:Ljava/lang/String; = "value"

.field public static final USER_PREFS_SETTING:Ljava/lang/String; = "user_prefs"

.field public static final VRCORE_AUTHORITY:Ljava/lang/String; = "com.google.vr.vrcore.settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 51
    const-string v0, "content://"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
