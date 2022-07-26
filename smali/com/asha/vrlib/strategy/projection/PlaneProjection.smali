.class public Lcom/asha/vrlib/strategy/projection/PlaneProjection;
.super Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;
.source "PlaneProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;,
        Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirectorFactory;,
        Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;
    }
.end annotation


# static fields
.field private static final position:Lcom/asha/vrlib/model/MDPosition;


# instance fields
.field private object3D:Lcom/asha/vrlib/objects/MDPlane;

.field private planeScaleCalculator:Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/asha/vrlib/model/MDPosition;->newInstance()Lcom/asha/vrlib/model/position/MDMutablePosition;

    move-result-object v0

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/model/position/MDMutablePosition;->setZ(F)Lcom/asha/vrlib/model/position/MDMutablePosition;

    move-result-object v0

    sput-object v0, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->position:Lcom/asha/vrlib/model/MDPosition;

    return-void
.end method

.method private constructor <init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;)V
    .locals 0
    .param p1, "calculator"    # Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/asha/vrlib/strategy/projection/AbsProjectionStrategy;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->planeScaleCalculator:Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    .line 32
    return-void
.end method

.method static synthetic access$200(Lcom/asha/vrlib/strategy/projection/PlaneProjection;)Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/projection/PlaneProjection;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->planeScaleCalculator:Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    return-object v0
.end method

.method public static create(ILandroid/graphics/RectF;)Lcom/asha/vrlib/strategy/projection/PlaneProjection;
    .locals 2
    .param p0, "scaleType"    # I
    .param p1, "textureSize"    # Landroid/graphics/RectF;

    .prologue
    .line 71
    new-instance v0, Lcom/asha/vrlib/strategy/projection/PlaneProjection;

    new-instance v1, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    invoke-direct {v1, p0, p1}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;-><init>(ILandroid/graphics/RectF;)V

    invoke-direct {v0, v1}, Lcom/asha/vrlib/strategy/projection/PlaneProjection;-><init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;)V

    return-object v0
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
    sget-object v0, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->position:Lcom/asha/vrlib/model/MDPosition;

    return-object v0
.end method

.method public getObject3D()Lcom/asha/vrlib/objects/MDAbsObject3D;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->object3D:Lcom/asha/vrlib/objects/MDPlane;

    return-object v0
.end method

.method protected hijackDirectorFactory()Lcom/asha/vrlib/MD360DirectorFactory;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirectorFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirectorFactory;-><init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection;Lcom/asha/vrlib/strategy/projection/PlaneProjection$1;)V

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
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v0, Lcom/asha/vrlib/objects/MDPlane;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->planeScaleCalculator:Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;

    invoke-direct {v0, v1}, Lcom/asha/vrlib/objects/MDPlane;-><init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection$PlaneScaleCalculator;)V

    iput-object v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->object3D:Lcom/asha/vrlib/objects/MDPlane;

    .line 37
    iget-object v0, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection;->object3D:Lcom/asha/vrlib/objects/MDPlane;

    invoke-static {p1, v0}, Lcom/asha/vrlib/objects/MDObject3DHelper;->loadObj(Landroid/content/Context;Lcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 38
    return-void
.end method
