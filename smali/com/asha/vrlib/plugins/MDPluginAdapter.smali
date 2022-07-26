.class public Lcom/asha/vrlib/plugins/MDPluginAdapter;
.super Lcom/asha/vrlib/plugins/MDAbsPlugin;
.source "MDPluginAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/asha/vrlib/plugins/MDAbsPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeRenderer(II)V
    .locals 0
    .param p1, "totalWidth"    # I
    .param p2, "totalHeight"    # I

    .prologue
    .line 26
    return-void
.end method

.method public destroyInGL()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method protected initInGL(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    return-void
.end method

.method protected removable()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public renderer(IIILcom/asha/vrlib/MD360Director;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "itemWidth"    # I
    .param p3, "itemHeight"    # I
    .param p4, "director"    # Lcom/asha/vrlib/MD360Director;

    .prologue
    .line 31
    return-void
.end method
