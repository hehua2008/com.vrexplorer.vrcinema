.class public Lcom/asha/vrlib/strategy/projection/SphereProjection;
.super Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;
.source "SphereProjection.java"


# instance fields
.field private object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public buildMainPlugin(Lcom/asha/vrlib/model/MDMainPluginBuilder;)Lcom/asha/vrlib/plugins/MDAbsPlugin;
    .locals 1
    .param p1, "builder"    # Lcom/asha/vrlib/model/MDMainPluginBuilder;

    .prologue
    .line 52
    new-instance v0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;

    invoke-direct {v0, p1}, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;-><init>(Lcom/asha/vrlib/model/MDMainPluginBuilder;)V

    return-object v0
.end method

.method public getModelPosition()Lcom/asha/vrlib/model/MDPosition;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/asha/vrlib/model/MDPosition;->getOriginalPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v0

    return-object v0
.end method

.method public getObject3D()Lcom/asha/vrlib/objects/MDAbsObject3D;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/SphereProjection;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    return-object v0
.end method

.method public isSupport(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public turnOffInGL(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    return-void
.end method

.method public turnOnInGL(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    new-instance v0, Lcom/asha/vrlib/objects/MDSphere3D;

    invoke-direct {v0}, Lcom/asha/vrlib/objects/MDSphere3D;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/SphereProjection;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    .line 38
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/SphereProjection;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    invoke-static {p1, v0}, Lcom/asha/vrlib/objects/MDObject3DHelper;->loadObj(Landroid/content/Context;Lcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 39
    return-void
.end method
