.class public Lcom/asha/vrlib/strategy/projection/StereoSphereProjection;
.super Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;
.source "StereoSphereProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/strategy/projection/StereoSphereProjection$FixedDirectorFactory;
    }
.end annotation


# instance fields
.field private direction:Lcom/asha/vrlib/common/MDDirection;

.field private object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/common/MDDirection;)V
    .locals 0
    .param p1, "direction"    # Lcom/asha/vrlib/common/MDDirection;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/asha/vrlib/strategy/projection/StereoSphereProjection;->direction:Lcom/asha/vrlib/common/MDDirection;

    .line 35
    return-void
.end method


# virtual methods
.method public buildMainPlugin(Lcom/asha/vrlib/model/MDMainPluginBuilder;)Lcom/asha/vrlib/plugins/MDAbsPlugin;
    .locals 1
    .param p1, "builder"    # Lcom/asha/vrlib/model/MDMainPluginBuilder;

    .prologue
    .line 70
    new-instance v0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;

    invoke-direct {v0, p1}, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;-><init>(Lcom/asha/vrlib/model/MDMainPluginBuilder;)V

    return-object v0
.end method

.method public getModelPosition()Lcom/asha/vrlib/model/MDPosition;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/asha/vrlib/model/MDPosition;->getOriginalPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v0

    return-object v0
.end method

.method public getObject3D()Lcom/asha/vrlib/objects/MDAbsObject3D;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/StereoSphereProjection;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    return-object v0
.end method

.method protected hijackDirectorFactory()Lcom/asha/vrlib/MD360DirectorFactory;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/asha/vrlib/strategy/projection/StereoSphereProjection$FixedDirectorFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/asha/vrlib/strategy/projection/StereoSphereProjection$FixedDirectorFactory;-><init>(Lcom/asha/vrlib/strategy/projection/StereoSphereProjection$1;)V

    return-object v0
.end method

.method public isSupport(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public turnOffInGL(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    return-void
.end method

.method public turnOnInGL(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    new-instance v0, Lcom/asha/vrlib/objects/MDStereoSphere3D;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/StereoSphereProjection;->direction:Lcom/asha/vrlib/common/MDDirection;

    invoke-direct {v0, v1}, Lcom/asha/vrlib/objects/MDStereoSphere3D;-><init>(Lcom/asha/vrlib/common/MDDirection;)V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/StereoSphereProjection;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    .line 40
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/StereoSphereProjection;->object3D:Lcom/asha/vrlib/objects/MDAbsObject3D;

    invoke-static {p1, v0}, Lcom/asha/vrlib/objects/MDObject3DHelper;->loadObj(Landroid/content/Context;Lcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 41
    return-void
.end method
