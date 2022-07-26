.class public Lcom/facebook/react/MemoryPressureRouter;
.super Ljava/lang/Object;
.source "MemoryPressureRouter.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final ACTION_TRIM_MEMORY_CRITICAL:Ljava/lang/String; = "com.facebook.react.ACTION_TRIM_MEMORY_CRITICAL"

.field private static final ACTION_TRIM_MEMORY_MODERATE:Ljava/lang/String; = "com.facebook.react.ACTION_TRIM_MEMORY_MODERATE"

.field private static final ACTION_TRIM_MEMORY_UI_HIDDEN:Ljava/lang/String; = "com.facebook.react.ACTION_TRIM_MEMORY_UI_HIDDEN"


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/react/bridge/MemoryPressureListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 39
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/MemoryPressureRouter;->mListeners:Ljava/util/Set;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 61
    return-void
.end method

.method private dispatchMemoryPressure(Lcom/facebook/react/bridge/MemoryPressure;)V
    .locals 4
    .param p1, "level"    # Lcom/facebook/react/bridge/MemoryPressure;

    .prologue
    .line 103
    iget-object v2, p0, Lcom/facebook/react/MemoryPressureRouter;->mListeners:Ljava/util/Set;

    iget-object v3, p0, Lcom/facebook/react/MemoryPressureRouter;->mListeners:Ljava/util/Set;

    .line 104
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/facebook/react/bridge/MemoryPressureListener;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/bridge/MemoryPressureListener;

    .line 105
    .local v1, "listeners":[Lcom/facebook/react/bridge/MemoryPressureListener;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 106
    .local v0, "listener":Lcom/facebook/react/bridge/MemoryPressureListener;
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/MemoryPressureListener;->handleMemoryPressure(Lcom/facebook/react/bridge/MemoryPressure;)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "listener":Lcom/facebook/react/bridge/MemoryPressureListener;
    :cond_0
    return-void
.end method

.method public static handleDebugIntent(Landroid/app/Application;Ljava/lang/String;)Z
    .locals 4
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "action"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 56
    :goto_1
    return v0

    .line 43
    :sswitch_0
    const-string v3, "com.facebook.react.ACTION_TRIM_MEMORY_UI_HIDDEN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "com.facebook.react.ACTION_TRIM_MEMORY_MODERATE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "com.facebook.react.ACTION_TRIM_MEMORY_CRITICAL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 45
    :pswitch_0
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/facebook/react/MemoryPressureRouter;->simulateTrimMemory(Landroid/app/Application;I)V

    :goto_2
    move v0, v1

    .line 56
    goto :goto_1

    .line 48
    :pswitch_1
    const/16 v0, 0x3c

    invoke-static {p0, v0}, Lcom/facebook/react/MemoryPressureRouter;->simulateTrimMemory(Landroid/app/Application;I)V

    goto :goto_2

    .line 51
    :pswitch_2
    const/16 v1, 0x50

    invoke-static {p0, v1}, Lcom/facebook/react/MemoryPressureRouter;->simulateTrimMemory(Landroid/app/Application;I)V

    goto :goto_1

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        -0x49b3efbd -> :sswitch_1
        -0x2104858b -> :sswitch_0
        0x4f8a8adf -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static simulateTrimMemory(Landroid/app/Application;I)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "level"    # I

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 112
    return-void
.end method


# virtual methods
.method public addMemoryPressureListener(Lcom/facebook/react/bridge/MemoryPressureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/bridge/MemoryPressureListener;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/react/MemoryPressureRouter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 65
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 94
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 83
    const/16 v0, 0x50

    if-lt p1, v0, :cond_1

    .line 84
    sget-object v0, Lcom/facebook/react/bridge/MemoryPressure;->CRITICAL:Lcom/facebook/react/bridge/MemoryPressure;

    invoke-direct {p0, v0}, Lcom/facebook/react/MemoryPressureRouter;->dispatchMemoryPressure(Lcom/facebook/react/bridge/MemoryPressure;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/16 v0, 0x28

    if-ge p1, v0, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_3

    .line 86
    :cond_2
    sget-object v0, Lcom/facebook/react/bridge/MemoryPressure;->MODERATE:Lcom/facebook/react/bridge/MemoryPressure;

    invoke-direct {p0, v0}, Lcom/facebook/react/MemoryPressureRouter;->dispatchMemoryPressure(Lcom/facebook/react/bridge/MemoryPressure;)V

    goto :goto_0

    .line 87
    :cond_3
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 88
    sget-object v0, Lcom/facebook/react/bridge/MemoryPressure;->UI_HIDDEN:Lcom/facebook/react/bridge/MemoryPressure;

    invoke-direct {p0, v0}, Lcom/facebook/react/MemoryPressureRouter;->dispatchMemoryPressure(Lcom/facebook/react/bridge/MemoryPressure;)V

    goto :goto_0
.end method

.method public removeMemoryPressureListener(Lcom/facebook/react/bridge/MemoryPressureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/bridge/MemoryPressureListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/react/MemoryPressureRouter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method
