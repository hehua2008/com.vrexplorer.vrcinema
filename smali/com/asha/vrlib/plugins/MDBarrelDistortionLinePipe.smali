.class public Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;
.super Lcom/asha/vrlib/plugins/MDAbsLinePipe;
.source "MDBarrelDistortionLinePipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;
    }
.end annotation


# instance fields
.field private mConfiguration:Lcom/asha/vrlib/model/BarrelDistortionConfig;

.field private mDirector:Lcom/asha/vrlib/MD360Director;

.field private mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

.field private mDrawingCache:Lcom/asha/vrlib/plugins/MDDrawingCache;

.field private mEnabled:Z

.field private mProgram:Lcom/asha/vrlib/MD360Program;

.field private object3D:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/strategy/display/DisplayModeManager;)V
    .locals 2
    .param p1, "displayModeManager"    # Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/asha/vrlib/plugins/MDAbsLinePipe;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    .line 52
    invoke-virtual {p1}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->getBarrelDistortionConfig()Lcom/asha/vrlib/model/BarrelDistortionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mConfiguration:Lcom/asha/vrlib/model/BarrelDistortionConfig;

    .line 53
    new-instance v0, Lcom/asha/vrlib/MD360Program;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/asha/vrlib/MD360Program;-><init>(I)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mProgram:Lcom/asha/vrlib/MD360Program;

    .line 54
    new-instance v0, Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalImpl;

    invoke-direct {v0}, Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalImpl;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalImpl;->createDirector(I)Lcom/asha/vrlib/MD360Director;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mDirector:Lcom/asha/vrlib/MD360Director;

    .line 55
    new-instance v0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;

    invoke-direct {v0, p0}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;-><init>(Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->object3D:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;

    .line 56
    new-instance v0, Lcom/asha/vrlib/plugins/MDDrawingCache;

    invoke-direct {v0}, Lcom/asha/vrlib/plugins/MDDrawingCache;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mDrawingCache:Lcom/asha/vrlib/plugins/MDDrawingCache;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;)Lcom/asha/vrlib/model/BarrelDistortionConfig;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mConfiguration:Lcom/asha/vrlib/model/BarrelDistortionConfig;

    return-object v0
.end method

.method private draw(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0}, Lcom/asha/vrlib/MD360Program;->use()V

    .line 101
    const-string v0, "MDBarrelDistortionLinePipe mProgram use"

    invoke-static {v0}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->object3D:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;

    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, v1, p1}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->uploadVerticesBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V

    .line 104
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->object3D:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;

    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, v1, p1}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->uploadTexCoordinateBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V

    .line 107
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mDirector:Lcom/asha/vrlib/MD360Director;

    invoke-virtual {v0}, Lcom/asha/vrlib/MD360Director;->beforeShot()V

    .line 108
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mDirector:Lcom/asha/vrlib/MD360Director;

    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-static {}, Lcom/asha/vrlib/model/MDPosition;->getOriginalPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/MD360Director;->shot(Lcom/asha/vrlib/MD360Program;Lcom/asha/vrlib/model/MDPosition;)V

    .line 110
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 111
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mDrawingCache:Lcom/asha/vrlib/plugins/MDDrawingCache;

    invoke-virtual {v1}, Lcom/asha/vrlib/plugins/MDDrawingCache;->getTextureOutput()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 113
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->object3D:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;

    invoke-virtual {v0}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->draw()V

    .line 114
    return-void
.end method


# virtual methods
.method public commit(III)V
    .locals 5
    .param p1, "totalWidth"    # I
    .param p2, "totalHeight"    # I
    .param p3, "size"    # I

    .prologue
    const/16 v4, 0xc11

    const/4 v3, 0x0

    .line 83
    iget-boolean v2, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mEnabled:Z

    if-nez v2, :cond_1

    .line 96
    :cond_0
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mDrawingCache:Lcom/asha/vrlib/plugins/MDDrawingCache;

    invoke-virtual {v2}, Lcom/asha/vrlib/plugins/MDDrawingCache;->unbind()V

    .line 88
    div-int v1, p1, p3

    .line 89
    .local v1, "width":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 90
    mul-int v2, v1, v0

    invoke-static {v2, v3, v1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 91
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 92
    mul-int v2, v1, v0

    invoke-static {v2, v3, v1, p2}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 93
    invoke-direct {p0, v0}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->draw(I)V

    .line 94
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MD360Program;->build(Landroid/content/Context;)V

    .line 62
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->object3D:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;

    invoke-static {p1, v0}, Lcom/asha/vrlib/objects/MDObject3DHelper;->loadObj(Landroid/content/Context;Lcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 63
    return-void
.end method

.method public takeOver(III)V
    .locals 1
    .param p1, "totalWidth"    # I
    .param p2, "totalHeight"    # I
    .param p3, "size"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mDisplayModeManager:Lcom/asha/vrlib/strategy/display/DisplayModeManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/display/DisplayModeManager;->isAntiDistortionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mEnabled:Z

    .line 68
    iget-boolean v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mEnabled:Z

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mDrawingCache:Lcom/asha/vrlib/plugins/MDDrawingCache;

    invoke-virtual {v0, p1, p2}, Lcom/asha/vrlib/plugins/MDDrawingCache;->bind(II)V

    .line 74
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->mDirector:Lcom/asha/vrlib/MD360Director;

    invoke-virtual {v0, p1, p2}, Lcom/asha/vrlib/MD360Director;->setViewport(II)V

    .line 75
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe;->object3D:Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;

    invoke-virtual {v0, p3}, Lcom/asha/vrlib/plugins/MDBarrelDistortionLinePipe$MDBarrelDistortionMesh;->setMode(I)V

    .line 77
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 78
    const-string v0, "MDBarrelDistortionLinePipe glClear"

    invoke-static {v0}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    goto :goto_0
.end method
