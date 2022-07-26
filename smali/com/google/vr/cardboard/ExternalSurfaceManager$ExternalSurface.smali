.class Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;
.super Ljava/lang/Object;
.source "ExternalSurfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/ExternalSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalSurface"
.end annotation


# instance fields
.field private final callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

.field private final glTextureId:[I

.field private final hasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final id:I

.field private isAttached:Z

.field private final released:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile surface:Landroid/view/Surface;

.field private volatile surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final transformMatrix:[F


# direct methods
.method constructor <init>(ILcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    .line 269
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->hasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 270
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 271
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    .line 275
    iput-boolean v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    .line 278
    iput p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->id:I

    .line 279
    iput-object p2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    .line 280
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->hasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    return-object v0
.end method


# virtual methods
.method getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method maybeAttachToCurrentGLContext()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 293
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    .line 294
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 297
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;

    invoke-direct {v1, p0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface$1;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 309
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surface:Landroid/view/Surface;

    .line 313
    :goto_1
    iput-boolean v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    .line 314
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->callback:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;

    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;->postOnAvailable(Landroid/view/Surface;)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    goto :goto_1
.end method

.method maybeDetachFromCurrentGLContext()V
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    goto :goto_0
.end method

.method shutdown(Lcom/google/vr/ndk/base/GvrApi;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 367
    iput-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 368
    iput-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surface:Landroid/view/Surface;

    .line 372
    :cond_1
    iget v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->id:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/ndk/base/GvrApi;->updateSurfaceReprojectionThread(IIJ[F)V

    goto :goto_0
.end method

.method updateSurfaceTexture(Lcom/google/vr/ndk/base/GvrApi;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 336
    iget-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->isAttached:Z

    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->hasNewFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 340
    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 343
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 344
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v4

    .line 349
    iget v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->id:I

    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->glTextureId:[I

    aget v3, v0, v3

    iget-object v6, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->transformMatrix:[F

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/ndk/base/GvrApi;->updateSurfaceReprojectionThread(IIJ[F)V

    goto :goto_0
.end method
