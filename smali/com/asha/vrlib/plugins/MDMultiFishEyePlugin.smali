.class public Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;
.super Lcom/asha/vrlib/plugins/MDAbsPlugin;
.source "MDMultiFishEyePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;
    }
.end annotation


# instance fields
.field private mBitmapProgram:Lcom/asha/vrlib/MD360Program;

.field private mConverterObject3D:Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;

.field private mDrawingCache:Lcom/asha/vrlib/plugins/MDDrawingCache;

.field private mFixedDirector:Lcom/asha/vrlib/MD360Director;

.field private mProgram:Lcom/asha/vrlib/MD360Program;

.field private mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

.field private mTexture:Lcom/asha/vrlib/texture/MD360Texture;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/model/MDMainPluginBuilder;FLcom/asha/vrlib/common/MDDirection;)V
    .locals 2
    .param p1, "builder"    # Lcom/asha/vrlib/model/MDMainPluginBuilder;
    .param p2, "radius"    # F
    .param p3, "direction"    # Lcom/asha/vrlib/common/MDDirection;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/asha/vrlib/plugins/MDAbsPlugin;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->getTexture()Lcom/asha/vrlib/texture/MD360Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    .line 47
    new-instance v0, Lcom/asha/vrlib/MD360Program;

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->getContentType()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/asha/vrlib/MD360Program;-><init>(I)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    .line 48
    new-instance v0, Lcom/asha/vrlib/MD360Program;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/asha/vrlib/MD360Program;-><init>(I)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mBitmapProgram:Lcom/asha/vrlib/MD360Program;

    .line 50
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->getProjectionModeManager()Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .line 52
    new-instance v0, Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalImpl;

    invoke-direct {v0}, Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalImpl;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/MD360DirectorFactory$OrthogonalImpl;->createDirector(I)Lcom/asha/vrlib/MD360Director;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mFixedDirector:Lcom/asha/vrlib/MD360Director;

    .line 53
    new-instance v0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;

    invoke-direct {v0, p0, p2, p3}, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;-><init>(Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;FLcom/asha/vrlib/common/MDDirection;)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mConverterObject3D:Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;

    .line 54
    new-instance v0, Lcom/asha/vrlib/plugins/MDDrawingCache;

    invoke-direct {v0}, Lcom/asha/vrlib/plugins/MDDrawingCache;-><init>()V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mDrawingCache:Lcom/asha/vrlib/plugins/MDDrawingCache;

    .line 55
    return-void
.end method

.method private drawConverter(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v6, 0xc11

    const/4 v5, 0x0

    .line 117
    const/16 v2, 0x4100

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 118
    const-string v2, "MDMultiFisheyeConvertLinePipe glClear"

    invoke-static {v2}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 120
    div-int/lit8 v1, p1, 0x2

    .line 121
    .local v1, "itemWidth":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 122
    mul-int v2, v1, v0

    invoke-static {v2, v5, v1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 123
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 124
    mul-int v2, v1, v0

    invoke-static {v2, v5, v1, p2}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 126
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v2}, Lcom/asha/vrlib/MD360Program;->use()V

    .line 127
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    iget-object v3, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v2, v3}, Lcom/asha/vrlib/texture/MD360Texture;->texture(Lcom/asha/vrlib/MD360Program;)Z

    .line 129
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mFixedDirector:Lcom/asha/vrlib/MD360Director;

    invoke-virtual {v2, v1, p2}, Lcom/asha/vrlib/MD360Director;->setViewport(II)V

    .line 130
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mConverterObject3D:Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;

    iget-object v3, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v2, v3, v0}, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;->uploadVerticesBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V

    .line 131
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mConverterObject3D:Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;

    iget-object v3, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v2, v3, v0}, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;->uploadTexCoordinateBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V

    .line 134
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mFixedDirector:Lcom/asha/vrlib/MD360Director;

    invoke-virtual {v2}, Lcom/asha/vrlib/MD360Director;->beforeShot()V

    .line 135
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mFixedDirector:Lcom/asha/vrlib/MD360Director;

    iget-object v3, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-static {}, Lcom/asha/vrlib/model/MDPosition;->getOriginalPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/asha/vrlib/MD360Director;->shot(Lcom/asha/vrlib/MD360Program;Lcom/asha/vrlib/model/MDPosition;)V

    .line 137
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mConverterObject3D:Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;

    invoke-virtual {v2}, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;->draw()V

    .line 139
    invoke-static {v6}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public beforeRenderer(II)V
    .locals 1
    .param p1, "totalWidth"    # I
    .param p2, "totalHeight"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mFixedDirector:Lcom/asha/vrlib/MD360Director;

    invoke-virtual {v0, p1, p2}, Lcom/asha/vrlib/MD360Director;->setViewport(II)V

    .line 69
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mDrawingCache:Lcom/asha/vrlib/plugins/MDDrawingCache;

    invoke-virtual {v0, p1, p2}, Lcom/asha/vrlib/plugins/MDDrawingCache;->bind(II)V

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->drawConverter(II)V

    .line 71
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mDrawingCache:Lcom/asha/vrlib/plugins/MDDrawingCache;

    invoke-virtual {v0}, Lcom/asha/vrlib/plugins/MDDrawingCache;->unbind()V

    .line 72
    return-void
.end method

.method public destroyInGL()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    .line 104
    return-void
.end method

.method protected getModelPosition()Lcom/asha/vrlib/model/MDPosition;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getModelPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v0

    return-object v0
.end method

.method public initInGL(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MD360Program;->build(Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mBitmapProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MD360Program;->build(Landroid/content/Context;)V

    .line 61
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360Texture;->create()V

    .line 63
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mConverterObject3D:Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin$MDMesh;

    invoke-static {p1, v0}, Lcom/asha/vrlib/objects/MDObject3DHelper;->loadObj(Landroid/content/Context;Lcom/asha/vrlib/objects/MDAbsObject3D;)V

    .line 64
    return-void
.end method

.method protected removable()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public renderer(IIILcom/asha/vrlib/MD360Director;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "director"    # Lcom/asha/vrlib/MD360Director;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v1}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getObject3D()Lcom/asha/vrlib/objects/MDAbsObject3D;

    move-result-object v0

    .line 79
    .local v0, "object3D":Lcom/asha/vrlib/objects/MDAbsObject3D;
    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p4, p2, p3}, Lcom/asha/vrlib/MD360Director;->setViewport(II)V

    .line 85
    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mBitmapProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v1}, Lcom/asha/vrlib/MD360Program;->use()V

    .line 86
    const-string v1, "MDPanoramaPlugin mProgram use"

    invoke-static {v1}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 89
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 90
    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mDrawingCache:Lcom/asha/vrlib/plugins/MDDrawingCache;

    invoke-virtual {v2}, Lcom/asha/vrlib/plugins/MDDrawingCache;->getTextureOutput()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 92
    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mBitmapProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, v1, p1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->uploadVerticesBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V

    .line 93
    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mBitmapProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, v1, p1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->uploadTexCoordinateBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V

    .line 96
    invoke-virtual {p4}, Lcom/asha/vrlib/MD360Director;->beforeShot()V

    .line 97
    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->mBitmapProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {p0}, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;->getModelPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lcom/asha/vrlib/MD360Director;->shot(Lcom/asha/vrlib/MD360Program;Lcom/asha/vrlib/model/MDPosition;)V

    .line 98
    invoke-virtual {v0}, Lcom/asha/vrlib/objects/MDAbsObject3D;->draw()V

    goto :goto_0
.end method
