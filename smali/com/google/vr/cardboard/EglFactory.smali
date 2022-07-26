.class public Lcom/google/vr/cardboard/EglFactory;
.super Ljava/lang/Object;
.source "EglFactory.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;
.implements Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_CONTEXT_PRIORITY_HIGH:I = 0x3101

.field private static final EGL_CONTEXT_PRIORITY_LEVEL:I = 0x3100

.field private static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field private static final MIN_REQUIRED_CONTEXT_CLIENT_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GvrEglFactory"


# instance fields
.field private eglContextClientVersion:I

.field private sharedContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private usePriority:Z

.field private useProtected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/google/vr/cardboard/EglFactory;->usePriority:Z

    .line 29
    iput-boolean v0, p0, Lcom/google/vr/cardboard/EglFactory;->useProtected:Z

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/vr/cardboard/EglFactory;->eglContextClientVersion:I

    .line 31
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/google/vr/cardboard/EglFactory;->sharedContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 34
    return-void
.end method

.method private supportsProtectedContent(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    .locals 2

    .prologue
    .line 151
    const/16 v0, 0x3055

    invoke-interface {p1, p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    .line 152
    const-string v1, "EGL_EXT_protected_content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 76
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 77
    const/16 v0, 0x3098

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 78
    iget v0, p0, Lcom/google/vr/cardboard/EglFactory;->eglContextClientVersion:I

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 79
    iget-boolean v0, p0, Lcom/google/vr/cardboard/EglFactory;->usePriority:Z

    if-eqz v0, :cond_0

    .line 80
    const/16 v0, 0x3100

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 81
    const/16 v0, 0x3101

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/cardboard/EglFactory;->useProtected:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/vr/cardboard/EglFactory;->supportsProtectedContent(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const/16 v0, 0x32c0

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 85
    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    const/16 v0, 0x3038

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/google/vr/cardboard/EglFactory;->sharedContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v2

    invoke-interface {p1, p2, p3, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_3

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/google/vr/cardboard/EglFactory;->eglContextClientVersion:I

    if-le v2, v6, :cond_4

    .line 94
    const-string v0, "GvrEglFactory"

    iget v2, p0, Lcom/google/vr/cardboard/EglFactory;->eglContextClientVersion:I

    const/16 v3, 0x4b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to create EGL context with version "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", will try 2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    aput v6, v0, v5

    .line 102
    iget-object v0, p0, Lcom/google/vr/cardboard/EglFactory;->sharedContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    invoke-interface {p1, p2, p3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 105
    :cond_4
    return-object v0
.end method

.method public createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 116
    .line 118
    iget-boolean v1, p0, Lcom/google/vr/cardboard/EglFactory;->useProtected:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/vr/cardboard/EglFactory;->supportsProtectedContent(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 122
    :goto_0
    :try_start_0
    invoke-interface {p1, p2, p3, p4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    :goto_1
    return-object v0

    .line 123
    :catch_0
    move-exception v1

    .line 130
    const-string v2, "GvrEglFactory"

    const-string v3, "eglCreateWindowSurface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    move-object v1, v0

    goto :goto_0

    .line 119
    nop

    :array_0
    .array-data 4
        0x32c0
        0x1
        0x3038
    .end array-data
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .prologue
    .line 110
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 111
    return-void
.end method

.method public destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0

    .prologue
    .line 137
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 138
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/google/vr/cardboard/EglFactory;->eglContextClientVersion:I

    .line 145
    return-void
.end method

.method public setSharedContext(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/vr/cardboard/EglFactory;->sharedContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 72
    return-void
.end method

.method public setUsePriorityContext(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/vr/cardboard/EglFactory;->usePriority:Z

    .line 45
    return-void
.end method

.method public setUseProtectedBuffers(Z)V
    .locals 2

    .prologue
    .line 56
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Protected buffer support requires EGL 1.4, available only on Jelly Bean MR1 and later."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-boolean p1, p0, Lcom/google/vr/cardboard/EglFactory;->useProtected:Z

    .line 61
    return-void
.end method
