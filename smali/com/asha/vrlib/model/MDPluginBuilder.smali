.class public Lcom/asha/vrlib/model/MDPluginBuilder;
.super Ljava/lang/Object;
.source "MDPluginBuilder.java"


# instance fields
.field public clickListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

.field public height:F

.field public position:Lcom/asha/vrlib/model/MDPosition;

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/asha/vrlib/model/MDPluginBuilder;->width:F

    .line 14
    iput v0, p0, Lcom/asha/vrlib/model/MDPluginBuilder;->height:F

    .line 25
    return-void
.end method


# virtual methods
.method public listenClick(Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;)Lcom/asha/vrlib/model/MDPluginBuilder;
    .locals 0
    .param p1, "listener"    # Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/asha/vrlib/model/MDPluginBuilder;->clickListener:Lcom/asha/vrlib/MDVRLibrary$ITouchPickListener;

    .line 45
    return-object p0
.end method

.method public position(Lcom/asha/vrlib/model/MDPosition;)Lcom/asha/vrlib/model/MDPluginBuilder;
    .locals 0
    .param p1, "position"    # Lcom/asha/vrlib/model/MDPosition;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/asha/vrlib/model/MDPluginBuilder;->position:Lcom/asha/vrlib/model/MDPosition;

    .line 40
    return-object p0
.end method

.method public size(FF)Lcom/asha/vrlib/model/MDPluginBuilder;
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/asha/vrlib/model/MDPluginBuilder;->width:F

    .line 34
    iput p2, p0, Lcom/asha/vrlib/model/MDPluginBuilder;->height:F

    .line 35
    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/asha/vrlib/model/MDPluginBuilder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/asha/vrlib/model/MDPluginBuilder;->tag:Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/asha/vrlib/model/MDPluginBuilder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/asha/vrlib/model/MDPluginBuilder;->title:Ljava/lang/String;

    .line 29
    return-object p0
.end method
