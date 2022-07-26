.class public Lcom/asha/vrlib/model/MDViewBuilder;
.super Ljava/lang/Object;
.source "MDViewBuilder.java"


# instance fields
.field public attachedView:Landroid/view/View;

.field public builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

.field public layoutParams:Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-direct {v0}, Lcom/asha/vrlib/model/MDPluginBuilder;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/model/MDViewBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    .line 23
    return-void
.end method

.method public static create()Lcom/asha/vrlib/model/MDViewBuilder;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/asha/vrlib/model/MDViewBuilder;

    invoke-direct {v0}, Lcom/asha/vrlib/model/MDViewBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public listenClick(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;)Lcom/asha/vrlib/model/MDViewBuilder;
    .locals 1
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/asha/vrlib/model/MDViewBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/MDPluginBuilder;->listenClick(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;)Lcom/asha/vrlib/model/MDPluginBuilder;

    .line 53
    return-object p0
.end method

.method public position(Lcom/asha/vrlib/model/MDPosition;)Lcom/asha/vrlib/model/MDViewBuilder;
    .locals 1
    .param p1, "position"    # Lcom/asha/vrlib/model/MDPosition;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/asha/vrlib/model/MDViewBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/MDPluginBuilder;->position(Lcom/asha/vrlib/model/MDPosition;)Lcom/asha/vrlib/model/MDPluginBuilder;

    .line 48
    return-object p0
.end method

.method public provider(Landroid/view/View;II)Lcom/asha/vrlib/model/MDViewBuilder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthInPx"    # I
    .param p3, "heightInPx"    # I

    .prologue
    .line 26
    new-instance v0, Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

    invoke-direct {v0, p2, p3}, Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/asha/vrlib/model/MDViewBuilder;->provider(Landroid/view/View;Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;)Lcom/asha/vrlib/model/MDViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public provider(Landroid/view/View;Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;)Lcom/asha/vrlib/model/MDViewBuilder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/asha/vrlib/model/MDViewBuilder;->attachedView:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lcom/asha/vrlib/model/MDViewBuilder;->layoutParams:Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

    .line 32
    return-object p0
.end method

.method public size(FF)Lcom/asha/vrlib/model/MDViewBuilder;
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asha/vrlib/model/MDViewBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/asha/vrlib/model/MDPluginBuilder;->size(FF)Lcom/asha/vrlib/model/MDPluginBuilder;

    .line 43
    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/asha/vrlib/model/MDViewBuilder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/asha/vrlib/model/MDViewBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/MDPluginBuilder;->tag(Ljava/lang/String;)Lcom/asha/vrlib/model/MDPluginBuilder;

    .line 58
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/asha/vrlib/model/MDViewBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asha/vrlib/model/MDViewBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/model/MDPluginBuilder;->title(Ljava/lang/String;)Lcom/asha/vrlib/model/MDPluginBuilder;

    .line 38
    return-object p0
.end method
