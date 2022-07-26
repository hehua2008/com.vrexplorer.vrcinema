.class public abstract Lcom/asha/vrlib/texture/MD360Texture;
.super Ljava/lang/Object;
.source "MD360Texture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MD360Texture"

.field private static final TEXTURE_EMPTY:I


# instance fields
.field private mTextureId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/asha/vrlib/texture/MD360Texture;->mTextureId:I

    .line 19
    return-void
.end method


# virtual methods
.method public create()V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/asha/vrlib/texture/MD360Texture;->createTextureId()I

    move-result v0

    .line 25
    .local v0, "glTexture":I
    if-eqz v0, :cond_0

    .line 26
    iput v0, p0, Lcom/asha/vrlib/texture/MD360Texture;->mTextureId:I

    .line 28
    :cond_0
    return-void
.end method

.method protected abstract createTextureId()I
.end method

.method public abstract destroy()V
.end method

.method public getCurrentTextureId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/asha/vrlib/texture/MD360Texture;->mTextureId:I

    return v0
.end method

.method protected final isEmpty(I)Z
    .locals 1
    .param p1, "textureId"    # I

    .prologue
    .line 41
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isReady()Z
.end method

.method public abstract notifyChanged()V
.end method

.method public abstract release()V
.end method

.method public abstract texture(Lcom/asha/vrlib/MD360Program;)Z
.end method
