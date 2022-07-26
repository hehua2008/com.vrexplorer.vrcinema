.class public Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;
.super Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;
.source "MDSimpleHotspot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MDSimplePlugin"


# instance fields
.field private mCurrentTextureKey:I

.field private mPendingTextureKey:I

.field private provider:Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;

.field private texture:Lcom/asha/vrlib/texture/MD360Texture;

.field private uriList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/model/MDHotspotBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/asha/vrlib/model/MDHotspotBuilder;

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p1, Lcom/asha/vrlib/model/MDHotspotBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-direct {p0, v0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;-><init>(Lcom/asha/vrlib/model/MDPluginBuilder;)V

    .line 24
    iput v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->mPendingTextureKey:I

    .line 26
    iput v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->mCurrentTextureKey:I

    .line 35
    iget-object v0, p1, Lcom/asha/vrlib/model/MDHotspotBuilder;->imageLoadProvider:Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->provider:Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;

    .line 36
    iget-object v0, p1, Lcom/asha/vrlib/model/MDHotspotBuilder;->uriList:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->uriList:Landroid/util/SparseArray;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;)I
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;

    .prologue
    .line 18
    iget v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->mCurrentTextureKey:I

    return v0
.end method

.method static synthetic access$100(Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->uriList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;)Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->provider:Lcom/asha/vrlib/MDVRLibrary$IImageLoadProvider;

    return-object v0
.end method


# virtual methods
.method protected initInGL(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->initInGL(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/asha/vrlib/texture/MD360BitmapTexture;

    new-instance v1, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot$1;

    invoke-direct {v1, p0}, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot$1;-><init>(Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;)V

    invoke-direct {v0, v1}, Lcom/asha/vrlib/texture/MD360BitmapTexture;-><init>(Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->texture:Lcom/asha/vrlib/texture/MD360Texture;

    .line 52
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->texture:Lcom/asha/vrlib/texture/MD360Texture;

    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360Texture;->create()V

    .line 53
    return-void
.end method

.method public renderer(IIILcom/asha/vrlib/MD360Director;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "director"    # Lcom/asha/vrlib/MD360Director;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->texture:Lcom/asha/vrlib/texture/MD360Texture;

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->mPendingTextureKey:I

    iget v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->mCurrentTextureKey:I

    if-eq v0, v1, :cond_2

    .line 62
    iget v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->mPendingTextureKey:I

    iput v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->mCurrentTextureKey:I

    .line 63
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->texture:Lcom/asha/vrlib/texture/MD360Texture;

    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360Texture;->notifyChanged()V

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->texture:Lcom/asha/vrlib/texture/MD360Texture;

    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->program:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/texture/MD360Texture;->texture(Lcom/asha/vrlib/MD360Program;)Z

    .line 68
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->texture:Lcom/asha/vrlib/texture/MD360Texture;

    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360Texture;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->renderer(IIILcom/asha/vrlib/MD360Director;)V

    goto :goto_0
.end method

.method public useTexture(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/asha/vrlib/plugins/hotspot/MDSimpleHotspot;->mPendingTextureKey:I

    .line 75
    return-void
.end method
