.class Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;
.super Ljava/lang/Object;
.source "GvrSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GLThreadManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/ndk/base/GvrSurfaceView$1;)V
    .locals 0

    .prologue
    .line 1954
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;-><init>()V

    return-void
.end method


# virtual methods
.method public releaseEglContextLocked(Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;)V
    .locals 0

    .prologue
    .line 1970
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1971
    return-void
.end method

.method public declared-synchronized threadExiting(Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;)V
    .locals 1

    .prologue
    .line 1961
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->access$1102(Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;Z)Z

    .line 1962
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1963
    monitor-exit p0

    return-void

    .line 1961
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
