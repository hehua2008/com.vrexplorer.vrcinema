.class public Lcom/asha/vrlib/strategy/projection/DomeProjection;
.super Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;
.source "DomeProjection.java"


# instance fields
.field private mDegree:F

.field private mIsUpper:Z

.field private mTextureSize:Landroid/graphics/RectF;

.field object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;FZ)V
    .locals 0
    .param p1, "textureSize"    # Landroid/graphics/RectF;
    .param p2, "degree"    # F
    .param p3, "isUpper"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/asha/vrlib/strategy/projection/DomeProjection;->mTextureSize:Landroid/graphics/RectF;

    .line 30
    iput p2, p0, Lcom/asha/vrlib/strategy/projection/DomeProjection;->mDegree:F

    .line 31
    iput-boolean p3, p0, Lcom/asha/vrlib/strategy/projection/DomeProjection;->mIsUpper:Z

    .line 32
    return-void
.end method


# virtual methods
.method public buildMainPlugin(Lcom/asha/vrlib/model/MDMainPluginBuilder;)Lcom/asha/vrlib/plugins/MDAbsPlugin;
    .locals 1
    .param p1, "builder"    # Lcom/asha/vrlib/model/MDMainPluginBuilder;

    .prologue
    .line 62
    new-instance v0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;

    invoke-direct {v0, p1}, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;-><init>(Lcom/asha/vrlib/model/MDMainPluginBuilder;)V

    return-object v0
.end method

.method public getModelPosition()Lcom/asha/vrlib/model/MDPosition;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/asha/vrlib/model/MDPosition;->getOriginalPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v0

    return-object v0
.end method

.method public getObject3D()Lcom/asha/vrlib/objects/MDAbsObject3D;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/DomeProjection;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

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
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v0, Lcom/asha/vrlib/objects/MDDome3D;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/DomeProjection;->mTextureSize:Landroid/graphics/RectF;

    iget v2, p0, Lcom/asha/vrlib/strategy/projection/DomeProjection;->mDegree:F

    iget-boolean v3, p0, Lcom/asha/vrlib/strategy/projection/DomeProjection;->mIsUpper:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/asha/vrlib/objects/MDDome3D;-><init>(Landroid/graphics/RectF;FZ)V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/DomeProjection;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    .line 37
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/DomeProjection;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    invoke-static {p1, v0}, Lcom/asha/vrlib/objects/MDObject3DHelper;->loadObj(Landroid/content/Context;Lcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 38
    return-void
.end method
