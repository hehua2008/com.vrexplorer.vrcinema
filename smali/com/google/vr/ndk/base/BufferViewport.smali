.class public Lcom/google/vr/ndk/base/BufferViewport;
.super Ljava/lang/Object;
.source "BufferViewport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/BufferViewport$Reprojection;,
        Lcom/google/vr/ndk/base/BufferViewport$EyeType;
    }
.end annotation


# static fields
.field public static final BUFFER_INDEX_EXTERNAL_SURFACE:I = -0x1

.field public static final EXTERNAL_SURFACE_ID_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field nativeBufferViewport:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/vr/ndk/base/BufferViewport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/BufferViewport;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 72
    instance-of v0, p1, Lcom/google/vr/ndk/base/BufferViewport;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 75
    :cond_0
    check-cast p1, Lcom/google/vr/ndk/base/BufferViewport;

    .line 76
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    iget-wide v2, p1, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportEqual(JJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/google/vr/ndk/base/BufferViewport;->TAG:Ljava/lang/String;

    const-string v1, "BufferViewport.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/BufferViewport;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getExternalSurfaceId()I
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetExternalSurfaceId(J)I

    move-result v0

    return v0
.end method

.method public getReprojection()I
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetReprojection(J)I

    move-result v0

    return v0
.end method

.method public getSourceBufferIndex()I
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetSourceBufferIndex(J)I

    move-result v0

    return v0
.end method

.method public getSourceFov(Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetSourceFov(JLandroid/graphics/RectF;)V

    .line 132
    return-void
.end method

.method public getSourceUv(Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetSourceUv(JLandroid/graphics/RectF;)V

    .line 113
    return-void
.end method

.method public getTargetEye()I
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetTargetEye(J)I

    move-result v0

    return v0
.end method

.method public getTransform([F)V
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportGetTransform(J[F)V

    .line 153
    return-void
.end method

.method public setExternalSurfaceId(I)V
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetExternalSurfaceId(JI)V

    .line 215
    return-void
.end method

.method public setReprojection(I)V
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetReprojection(JI)V

    .line 237
    return-void
.end method

.method public setSourceBufferIndex(I)V
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetSourceBufferIndex(JI)V

    .line 194
    return-void
.end method

.method public setSourceFov(Landroid/graphics/RectF;)V
    .locals 6

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetSourceFov(JFFFF)V

    .line 142
    return-void
.end method

.method public setSourceUv(Landroid/graphics/RectF;)V
    .locals 6

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetSourceUv(JFFFF)V

    .line 123
    return-void
.end method

.method public setTargetEye(I)V
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetTargetEye(JI)V

    .line 178
    return-void
.end method

.method public setTransform([F)V
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportSetTransform(J[F)V

    .line 164
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 100
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 101
    iget-wide v0, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportDestroy(J)V

    .line 102
    iput-wide v2, p0, Lcom/google/vr/ndk/base/BufferViewport;->nativeBufferViewport:J

    .line 104
    :cond_0
    return-void
.end method
