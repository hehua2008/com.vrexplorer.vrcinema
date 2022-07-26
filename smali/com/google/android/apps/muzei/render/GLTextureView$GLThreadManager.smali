.class Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/muzei/render/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1587
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/muzei/render/GLTextureView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/apps/muzei/render/GLTextureView$1;

    .prologue
    .line 1586
    invoke-direct {p0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1670
    iget-boolean v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_0

    .line 1675
    iput-boolean v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1681
    iput-boolean v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1683
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1651
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_1

    .line 1652
    invoke-direct {p0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1653
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1654
    .local v0, "renderer":Ljava/lang/String;
    iget v3, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_0

    .line 1655
    const-string v3, "Q3Dimension MSM7500 "

    .line 1656
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1657
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1659
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1665
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1667
    .end local v0    # "renderer":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .restart local v0    # "renderer":Ljava/lang/String;
    :cond_2
    move v3, v2

    .line 1656
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1659
    goto :goto_1

    .line 1651
    .end local v0    # "renderer":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    .line 1635
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1636
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 1642
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 1646
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1647
    iget-boolean v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    .prologue
    .line 1593
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->access$1102(Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;Z)Z

    .line 1594
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    .line 1597
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    monitor-exit p0

    return-void

    .line 1593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;)Z
    .locals 2
    .param p1, "thread"    # Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    .prologue
    const/4 v0, 0x1

    .line 1608
    iget-object v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    if-nez v1, :cond_2

    .line 1609
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    .line 1610
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1624
    :cond_1
    :goto_0
    return v0

    .line 1613
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1614
    iget-boolean v1, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1621
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    if-eqz v0, :cond_3

    .line 1622
    iget-object v0, p0, Lcom/google/android/apps/muzei/render/GLTextureView$GLThreadManager;->mEglOwner:Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView$GLThread;->requestReleaseEglContextLocked()V

    .line 1624
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
