.class public Lcom/asha/vrlib/plugins/MDPluginManager;
.super Ljava/lang/Object;
.source "MDPluginManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MDPluginManager"


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asha/vrlib/plugins/MDAbsPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDPluginManager;->mList:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public add(Lcom/asha/vrlib/plugins/MDAbsPlugin;)V
    .locals 1
    .param p1, "plugin"    # Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDPluginManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public findHotspotByTag(Ljava/lang/String;)Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDPluginManager;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 49
    .local v1, "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    invoke-virtual {v1}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->removable()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v1, Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 50
    check-cast v0, Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    .line 51
    .local v0, "hotspot":Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
    invoke-interface {v0}, Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    .end local v0    # "hotspot":Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
    .end local v1    # "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(Ljava/lang/String;)Lcom/asha/vrlib/plugins/hotspot/MDAbsView;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDPluginManager;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 61
    .local v1, "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    invoke-virtual {v1}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->removable()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v1, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 62
    check-cast v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;

    .line 63
    .local v0, "mdView":Lcom/asha/vrlib/plugins/hotspot/MDAbsView;
    invoke-virtual {v0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    .end local v0    # "mdView":Lcom/asha/vrlib/plugins/hotspot/MDAbsView;
    .end local v1    # "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlugins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/asha/vrlib/plugins/MDAbsPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDPluginManager;->mList:Ljava/util/List;

    return-object v0
.end method

.method public remove(Lcom/asha/vrlib/plugins/MDAbsPlugin;)V
    .locals 1
    .param p1, "plugin"    # Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDPluginManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDPluginManager;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/plugins/MDAbsPlugin;

    .line 41
    .local v0, "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    invoke-virtual {v0}, Lcom/asha/vrlib/plugins/MDAbsPlugin;->removable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDPluginManager;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v0    # "plugin":Lcom/asha/vrlib/plugins/MDAbsPlugin;
    :cond_1
    return-void
.end method
