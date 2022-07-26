.class public Lcom/google/vr/ndk/base/SwapChain;
.super Ljava/lang/Object;
.source "SwapChain.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentFrame:I

.field private final frames:[Lcom/google/vr/ndk/base/Frame;

.field private nativeSwapChain:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/vr/ndk/base/SwapChain;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/SwapChain;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(J)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/vr/ndk/base/Frame;

    iput-object v0, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    .line 46
    iget-object v0, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    new-instance v1, Lcom/google/vr/ndk/base/Frame;

    invoke-direct {v1}, Lcom/google/vr/ndk/base/Frame;-><init>()V

    aput-object v1, v0, v3

    .line 47
    iget-object v0, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/vr/ndk/base/Frame;

    invoke-direct {v2}, Lcom/google/vr/ndk/base/Frame;-><init>()V

    aput-object v2, v0, v1

    .line 48
    iput v3, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    .line 49
    return-void
.end method


# virtual methods
.method public acquireFrame()Lcom/google/vr/ndk/base/Frame;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/Frame;->getNativeFrame()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/Frame;->getNativeFrame()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Previous frame not submitted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    iget v0, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    .line 84
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainAcquireFrame(J)J

    move-result-wide v0

    .line 85
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 86
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    iget v3, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Lcom/google/vr/ndk/base/Frame;->setNativeFrame(J)V

    .line 89
    iget-object v0, p0, Lcom/google/vr/ndk/base/SwapChain;->frames:[Lcom/google/vr/ndk/base/Frame;

    iget v1, p0, Lcom/google/vr/ndk/base/SwapChain;->currentFrame:I

    aget-object v0, v0, v1

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
    .line 55
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/google/vr/ndk/base/SwapChain;->TAG:Ljava/lang/String;

    const-string v1, "SwapChain.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/SwapChain;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBufferCount()I
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainGetBufferCount(J)I

    move-result v0

    return v0
.end method

.method public getBufferSize(ILandroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainGetBufferSize(JILandroid/graphics/Point;)V

    .line 109
    return-void
.end method

.method public resizeBuffer(ILandroid/graphics/Point;)V
    .locals 4

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainResizeBuffer(JIII)V

    .line 122
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 126
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 127
    iget-wide v0, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainDestroy(J)V

    .line 128
    iput-wide v2, p0, Lcom/google/vr/ndk/base/SwapChain;->nativeSwapChain:J

    .line 130
    :cond_0
    return-void
.end method
