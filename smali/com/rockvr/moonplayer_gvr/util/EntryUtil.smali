.class public Lcom/rockvr/moonplayer_gvr/util/EntryUtil;
.super Ljava/lang/Object;
.source "EntryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIntentVideoPath(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 47
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v1

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "intentAction":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseIntent(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    if-nez p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6}, Lcom/rockvr/moonplayer_gvr/util/EntryUtil;->getIntentVideoPath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, "videoPath":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 29
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "video_uri"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "unityTmpMsg"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .local v4, "unityTmpMsg":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 35
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 36
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/rockvr/moonplayer_gvr/MyGoogleUnityActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 37
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .end local v4    # "unityTmpMsg":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
