.class public Lcom/google/vr/ndk/base/BufferSpec;
.super Ljava/lang/Object;
.source "BufferSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/BufferSpec$DepthStencilFormat;,
        Lcom/google/vr/ndk/base/BufferSpec$ColorFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field nativeBufferSpec:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/google/vr/ndk/base/BufferSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/BufferSpec;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    .line 61
    return-void
.end method

.method public static isValidColorFormat(I)Z
    .locals 1

    .prologue
    .line 158
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDepthStencilFormat(I)Z
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_1

    const/4 v0, 0x6

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/google/vr/ndk/base/BufferSpec;->TAG:Ljava/lang/String;

    const-string v1, "BufferSpec.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/BufferSpec;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getSamples()I
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecGetSamples(J)I

    move-result v0

    return v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecGetSize(JLandroid/graphics/Point;)V

    .line 97
    return-void
.end method

.method public setColorFormat(I)V
    .locals 2

    .prologue
    .line 133
    invoke-static {p1}, Lcom/google/vr/ndk/base/BufferSpec;->isValidColorFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid color format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecSetColorFormat(JI)V

    .line 137
    return-void
.end method

.method public setDepthStencilFormat(I)V
    .locals 2

    .prologue
    .line 145
    invoke-static {p1}, Lcom/google/vr/ndk/base/BufferSpec;->isValidDepthStencilFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid depth-stencil format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecSetDepthStencilFormat(JI)V

    .line 149
    return-void
.end method

.method public setSamples(I)V
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecSetSamples(JI)V

    .line 125
    return-void
.end method

.method public setSize(Landroid/graphics/Point;)V
    .locals 4

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecSetSize(JII)V

    .line 106
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 83
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 84
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecDestroy(J)V

    .line 85
    iput-wide v2, p0, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    .line 87
    :cond_0
    return-void
.end method
