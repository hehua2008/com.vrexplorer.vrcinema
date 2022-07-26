.class public abstract Lcom/asha/vrlib/MDGLScreenWrapper;
.super Ljava/lang/Object;
.source "MDGLScreenWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/MDGLScreenWrapper$MDGLSurfaceViewImpl;,
        Lcom/asha/vrlib/MDGLScreenWrapper$MDGLTextureViewImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Landroid/opengl/GLSurfaceView;)Lcom/asha/vrlib/MDGLScreenWrapper;
    .locals 2
    .param p0, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 21
    new-instance v0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLSurfaceViewImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLSurfaceViewImpl;-><init>(Landroid/opengl/GLSurfaceView;Lcom/asha/vrlib/MDGLScreenWrapper$1;)V

    return-object v0
.end method

.method public static wrap(Lcom/google/android/apps/muzei/render/GLTextureView;)Lcom/asha/vrlib/MDGLScreenWrapper;
    .locals 1
    .param p0, "glTextureView"    # Lcom/google/android/apps/muzei/render/GLTextureView;

    .prologue
    .line 25
    new-instance v0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLTextureViewImpl;

    invoke-direct {v0, p0}, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLTextureViewImpl;-><init>(Lcom/google/android/apps/muzei/render/GLTextureView;)V

    return-object v0
.end method


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
.end method
