.class Lcom/rockvr/moonplayer_gvr/media/PlayerManager;
.super Ljava/lang/Object;
.source "PlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer_gvr/media/PlayerManager$InnerPlayerManager;,
        Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;
    }
.end annotation


# static fields
.field private static final GUIDE_360:Ljava/lang/String; = "360_guide"

.field private static final PLAYER_MODE:Ljava/lang/String; = "player_mode"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/rockvr/moonplayer_gvr/media/PlayerManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$InnerPlayerManager;->INSTANCE:Lcom/rockvr/moonplayer_gvr/media/PlayerManager;

    return-object v0
.end method


# virtual methods
.method getPlayerMode(Landroid/content/Context;)Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "player_mode"

    sget-object v3, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->MODE_360:Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    .line 49
    invoke-virtual {v3}, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->getMode()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 50
    .local v0, "result":I
    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->MODE_2D:Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    invoke-virtual {v1}, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 51
    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->MODE_2D:Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    .line 53
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->MODE_360:Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;

    goto :goto_0
.end method

.method isGuide360()Z
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "360_guide"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method setGuided360()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/PlayerManager;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "360_guide"

    const/4 v2, 0x1

    .line 65
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    return-void
.end method

.method setPlayMode(Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;Landroid/content/Context;)V
    .locals 3
    .param p1, "playMode"    # Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "player_mode"

    .line 42
    invoke-virtual {p1}, Lcom/rockvr/moonplayer_gvr/media/PlayerManager$PlayMode;->getMode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    return-void
.end method
