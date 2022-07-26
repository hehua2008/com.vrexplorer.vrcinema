.class public Lcom/asha/vrlib/plugins/MDPanoramaPlugin;
.super Lcom/asha/vrlib/plugins/MDAbsPlugin;
.source "MDPanoramaPlugin.java"


# instance fields
.field private mDirectorCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

.field private mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

.field private mProgram:Lcom/asha/vrlib/MD360Program;

.field private mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

.field private mTexture:Lcom/asha/vrlib/texture/MD360Texture;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/model/MDMainPluginBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/asha/vrlib/model/MDMainPluginBuilder;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/asha/vrlib/plugins/MDAbsPlugin;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->getTexture()Lcom/asha/vrlib/texture/MD360Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    .line 37
    new-instance v0, Lcom/asha/vrlib/MD360Program;

    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->getContentType()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/asha/vrlib/MD360Program;-><init>(I)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    .line 38
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->getProjectionModeManager()Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .line 39
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->getCameraUpdate()Lcom/asha/vrlib/MDDirectorCamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mDirectorCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 40
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDMainPluginBuilder;->getFilter()Lcom/asha/vrlib/MDDirectorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

    .line 41
    return-void
.end method


# virtual methods
.method public beforeRenderer(II)V
    .locals 4
    .param p1, "totalWidth"    # I
    .param p2, "totalHeight"    # I

    .prologue
    .line 51
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v2}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getDirectors()Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "directors":Ljava/util/List;, "Ljava/util/List<Lcom/asha/vrlib/MD360Director;>;"
    if-eqz v1, :cond_2

    .line 54
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/MD360Director;

    .line 55
    .local v0, "director":Lcom/asha/vrlib/MD360Director;
    iget-object v3, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mDirectorCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v3}, Lcom/asha/vrlib/MDDirectorCamUpdate;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mDirectorCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v0, v3}, Lcom/asha/vrlib/MD360Director;->applyUpdate(Lcom/asha/vrlib/MDDirectorCamUpdate;)V

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mDirectorFilter:Lcom/asha/vrlib/MDDirectorFilter;

    invoke-virtual {v0, v3}, Lcom/asha/vrlib/MD360Director;->applyFilter(Lcom/asha/vrlib/MDDirectorFilter;)V

    goto :goto_0

    .line 62
    .end local v0    # "director":Lcom/asha/vrlib/MD360Director;
    :cond_1
    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mDirectorCameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    invoke-virtual {v2}, Lcom/asha/vrlib/MDDirectorCamUpdate;->consumeChanged()V

    .line 64
    :cond_2
    return-void
.end method

.method public destroyInGL()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    .line 97
    return-void
.end method

.method protected getModelPosition()Lcom/asha/vrlib/model/MDPosition;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v0}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getModelPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v0

    return-object v0
.end method

.method public initInGL(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MD360Program;->build(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360Texture;->create()V

    .line 47
    return-void
.end method

.method protected removable()Z
    .locals 1

    .prologue
    .line 106
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
    .line 69
    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mProjectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    invoke-virtual {v1}, Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;->getObject3D()Lcom/asha/vrlib/objects/MDAbsObject3D;

    move-result-object v0

    .line 71
    .local v0, "object3D":Lcom/asha/vrlib/objects/MDAbsObject3D;
    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p4, p2, p3}, Lcom/asha/vrlib/MD360Director;->setViewport(II)V

    .line 77
    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v1}, Lcom/asha/vrlib/MD360Program;->use()V

    .line 78
    const-string v1, "MDPanoramaPlugin mProgram use"

    invoke-static {v1}, Lcom/asha/vrlib/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    iget-object v2, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v1, v2}, Lcom/asha/vrlib/texture/MD360Texture;->texture(Lcom/asha/vrlib/MD360Program;)Z

    .line 82
    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, v1, p1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->uploadVerticesBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V

    .line 84
    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, v1, p1}, Lcom/asha/vrlib/objects/MDAbsObject3D;->uploadTexCoordinateBufferIfNeed(Lcom/asha/vrlib/MD360Program;I)V

    .line 88
    invoke-virtual {p4}, Lcom/asha/vrlib/MD360Director;->beforeShot()V

    .line 89
    iget-object v1, p0, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->mProgram:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {p0}, Lcom/asha/vrlib/plugins/MDPanoramaPlugin;->getModelPosition()Lcom/asha/vrlib/model/MDPosition;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lcom/asha/vrlib/MD360Director;->shot(Lcom/asha/vrlib/MD360Program;Lcom/asha/vrlib/model/MDPosition;)V

    .line 90
    invoke-virtual {v0}, Lcom/asha/vrlib/objects/MDAbsObject3D;->draw()V

    goto :goto_0
.end method
