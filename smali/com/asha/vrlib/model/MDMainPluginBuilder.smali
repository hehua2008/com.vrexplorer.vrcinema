.class public Lcom/asha/vrlib/model/MDMainPluginBuilder;
.super Ljava/lang/Object;
.source "MDMainPluginBuilder.java"


# instance fields
.field private cameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

.field private contentType:I

.field private filter:Lcom/asha/vrlib/MDDirectorFilter;

.field private projectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

.field private texture:Lcom/asha/vrlib/texture/MD360Texture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/asha/vrlib/model/MDMainPluginBuilder;->contentType:I

    .line 21
    return-void
.end method


# virtual methods
.method public getCameraUpdate()Lcom/asha/vrlib/MDDirectorCamUpdate;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/asha/vrlib/model/MDMainPluginBuilder;->cameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/asha/vrlib/model/MDMainPluginBuilder;->contentType:I

    return v0
.end method

.method public getFilter()Lcom/asha/vrlib/MDDirectorFilter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asha/vrlib/model/MDMainPluginBuilder;->filter:Lcom/asha/vrlib/MDDirectorFilter;

    return-object v0
.end method

.method public getProjectionModeManager()Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asha/vrlib/model/MDMainPluginBuilder;->projectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    return-object v0
.end method

.method public getTexture()Lcom/asha/vrlib/texture/MD360Texture;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asha/vrlib/model/MDMainPluginBuilder;->texture:Lcom/asha/vrlib/texture/MD360Texture;

    return-object v0
.end method

.method public setCameraUpdate(Lcom/asha/vrlib/MDDirectorCamUpdate;)Lcom/asha/vrlib/model/MDMainPluginBuilder;
    .locals 0
    .param p1, "cameraUpdate"    # Lcom/asha/vrlib/MDDirectorCamUpdate;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/asha/vrlib/model/MDMainPluginBuilder;->cameraUpdate:Lcom/asha/vrlib/MDDirectorCamUpdate;

    .line 65
    return-object p0
.end method

.method public setContentType(I)Lcom/asha/vrlib/model/MDMainPluginBuilder;
    .locals 0
    .param p1, "contentType"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/asha/vrlib/model/MDMainPluginBuilder;->contentType:I

    .line 37
    return-object p0
.end method

.method public setFilter(Lcom/asha/vrlib/MDDirectorFilter;)Lcom/asha/vrlib/model/MDMainPluginBuilder;
    .locals 0
    .param p1, "filter"    # Lcom/asha/vrlib/MDDirectorFilter;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/asha/vrlib/model/MDMainPluginBuilder;->filter:Lcom/asha/vrlib/MDDirectorFilter;

    .line 70
    return-object p0
.end method

.method public setProjectionModeManager(Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;)Lcom/asha/vrlib/model/MDMainPluginBuilder;
    .locals 0
    .param p1, "projectionModeManager"    # Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/asha/vrlib/model/MDMainPluginBuilder;->projectionModeManager:Lcom/asha/vrlib/strategy/projection/ProjectionModeManager;

    .line 60
    return-object p0
.end method

.method public setTexture(Lcom/asha/vrlib/texture/MD360Texture;)Lcom/asha/vrlib/model/MDMainPluginBuilder;
    .locals 0
    .param p1, "texture"    # Lcom/asha/vrlib/texture/MD360Texture;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/asha/vrlib/model/MDMainPluginBuilder;->texture:Lcom/asha/vrlib/texture/MD360Texture;

    .line 55
    return-object p0
.end method
