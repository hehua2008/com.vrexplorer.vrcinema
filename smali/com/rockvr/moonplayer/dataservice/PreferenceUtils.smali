.class public Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# static fields
.field private static final DATA_SERVICE_PREFERENCE:Ljava/lang/String; = "DATA_SERVICE_PREFERENCE"

.field private static final IS_SEARCH_HIDE_FILE:Ljava/lang/String; = "IS_SEARCH_HIDE_FILE"

.field private static final IS_SEARCH_NO_MEDIA_FILE:Ljava/lang/String; = "IS_SEARCH_NO_MEDIA_FILE"

.field private static instance:Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getInstance()Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->instance:Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;

    invoke-direct {v0}, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;-><init>()V

    sput-object v0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->instance:Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;

    .line 24
    :cond_0
    sget-object v0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->instance:Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;

    return-object v0
.end method


# virtual methods
.method public DataServicePreference(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public isSearchHiddenFile()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 38
    :goto_0
    return v1

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->mContext:Landroid/content/Context;

    const-string v3, "DATA_SERVICE_PREFERENCE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "IS_SEARCH_HIDE_FILE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isSearchNoMediaFile()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 48
    :goto_0
    return v1

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->mContext:Landroid/content/Context;

    const-string v3, "DATA_SERVICE_PREFERENCE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "IS_SEARCH_NO_MEDIA_FILE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public updateSearchHideFilePreference(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 52
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->mContext:Landroid/content/Context;

    const-string v2, "DATA_SERVICE_PREFERENCE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IS_SEARCH_HIDE_FILE"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public updateSearchNoMediaFilePreference(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 60
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/PreferenceUtils;->mContext:Landroid/content/Context;

    const-string v2, "DATA_SERVICE_PREFERENCE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IS_SEARCH_HIDE_FILE"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
