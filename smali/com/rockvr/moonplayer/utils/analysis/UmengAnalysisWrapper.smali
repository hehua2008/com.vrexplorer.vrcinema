.class public Lcom/rockvr/moonplayer/utils/analysis/UmengAnalysisWrapper;
.super Ljava/lang/Object;
.source "UmengAnalysisWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    return-void
.end method

.method public static onPageEnd(Ljava/lang/String;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static onPageStart(Ljava/lang/String;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public static openActivityDurationTrack(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 36
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->openActivityDurationTrack(Z)V

    .line 37
    return-void
.end method

.method public static setScenarioType(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/umeng/analytics/MobclickAgent;->setScenarioType(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 25
    return-void
.end method

.method public static startWithAppKeyAndChannelId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->startWithConfigure(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V

    .line 13
    return-void
.end method
