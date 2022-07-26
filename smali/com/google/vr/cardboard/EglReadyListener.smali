.class public Lcom/google/vr/cardboard/EglReadyListener;
.super Ljava/lang/Object;
.source "EglReadyListener.java"


# annotations
.annotation build Lcom/google/vr/cardboard/UsedByNative;
.end annotation


# instance fields
.field private volatile eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private volatile monitor:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/vr/cardboard/EglReadyListener;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public onEglReady()V
    .locals 2
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/cardboard/EglReadyListener;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 24
    iget-object v0, p0, Lcom/google/vr/cardboard/EglReadyListener;->monitor:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 25
    iget-object v1, p0, Lcom/google/vr/cardboard/EglReadyListener;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/cardboard/EglReadyListener;->monitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 27
    monitor-exit v1

    .line 29
    :cond_0
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMonitor(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/vr/cardboard/EglReadyListener;->monitor:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EglReadyListener must be configured only once."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/google/vr/cardboard/EglReadyListener;->monitor:Ljava/lang/Object;

    .line 53
    return-void
.end method
