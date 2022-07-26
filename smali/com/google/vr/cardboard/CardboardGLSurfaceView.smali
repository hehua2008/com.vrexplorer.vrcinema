.class public Lcom/google/vr/cardboard/CardboardGLSurfaceView;
.super Lcom/google/vr/ndk/base/GvrSurfaceView;
.source "CardboardGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/CardboardGLSurfaceView$DetachListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final eglFactory:Lcom/google/vr/cardboard/EglFactory;

.field private eventQueueWhileDetached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private isDetached:Z

.field private isRendererSet:Z

.field private final listener:Lcom/google/vr/cardboard/CardboardGLSurfaceView$DetachListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/vr/cardboard/CardboardGLSurfaceView$DetachListener;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/vr/ndk/base/GvrSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object p3, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->listener:Lcom/google/vr/cardboard/CardboardGLSurfaceView$DetachListener;

    .line 56
    new-instance v0, Lcom/google/vr/cardboard/EglFactory;

    invoke-direct {v0}, Lcom/google/vr/cardboard/EglFactory;-><init>()V

    iput-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    .line 57
    iget-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    invoke-virtual {p0, v0}, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 58
    iget-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    invoke-virtual {p0, v0}, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/cardboard/CardboardGLSurfaceView$DetachListener;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->listener:Lcom/google/vr/cardboard/CardboardGLSurfaceView$DetachListener;

    .line 47
    new-instance v0, Lcom/google/vr/cardboard/EglFactory;

    invoke-direct {v0}, Lcom/google/vr/cardboard/EglFactory;-><init>()V

    iput-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    .line 48
    iget-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    invoke-virtual {p0, v0}, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 49
    iget-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    invoke-virtual {p0, v0}, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    .line 50
    return-void
.end method


# virtual methods
.method public isDetached()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->isDetached:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-super {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->onAttachedToWindow()V

    .line 80
    iput-boolean v1, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->isDetached:Z

    .line 81
    iget-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eventQueueWhileDetached:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eventQueueWhileDetached:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/Runnable;

    .line 83
    invoke-super {p0, v1}, Lcom/google/vr/ndk/base/GvrSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eventQueueWhileDetached:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->isRendererSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->listener:Lcom/google/vr/cardboard/CardboardGLSurfaceView$DetachListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->listener:Lcom/google/vr/cardboard/CardboardGLSurfaceView$DetachListener;

    invoke-interface {v0}, Lcom/google/vr/cardboard/CardboardGLSurfaceView$DetachListener;->onSurfaceViewDetachedFromWindow()V

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->onDetachedFromWindow()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->isDetached:Z

    .line 99
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->isRendererSet:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-super {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->onPause()V

    .line 67
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->isRendererSet:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-super {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->onResume()V

    .line 75
    :cond_0
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->isRendererSet:Z

    if-nez v0, :cond_0

    .line 116
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 133
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->isDetached:Z

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eventQueueWhileDetached:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eventQueueWhileDetached:Ljava/util/ArrayList;

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eventQueueWhileDetached:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    invoke-super {p0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setEGLContextClientVersion(I)V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView;->setEGLContextClientVersion(I)V

    .line 110
    iget-object v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/EglFactory;->setEGLContextClientVersion(I)V

    .line 111
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->isRendererSet:Z

    .line 105
    return-void
.end method
