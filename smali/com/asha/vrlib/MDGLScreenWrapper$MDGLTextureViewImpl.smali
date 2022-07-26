.class Lcom/asha/vrlib/MDGLScreenWrapper$MDGLTextureViewImpl;
.super Lcom/asha/vrlib/MDGLScreenWrapper;
.source "MDGLScreenWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDGLScreenWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MDGLTextureViewImpl"
.end annotation


# instance fields
.field glTextureView:Lcom/google/android/apps/muzei/render/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/muzei/render/GLTextureView;)V
    .locals 0
    .param p1, "glTextureView"    # Lcom/google/android/apps/muzei/render/GLTextureView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asha/vrlib/MDGLScreenWrapper;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLTextureViewImpl;->glTextureView:Lcom/google/android/apps/muzei/render/GLTextureView;

    .line 34
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLTextureViewImpl;->glTextureView:Lcom/google/android/apps/muzei/render/GLTextureView;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLTextureViewImpl;->glTextureView:Lcom/google/android/apps/muzei/render/GLTextureView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/muzei/render/GLTextureView;->setEGLContextClientVersion(I)V

    .line 49
    iget-object v0, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLTextureViewImpl;->glTextureView:Lcom/google/android/apps/muzei/render/GLTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/muzei/render/GLTextureView;->setPreserveEGLContextOnPause(Z)V

    .line 50
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLTextureViewImpl;->glTextureView:Lcom/google/android/apps/muzei/render/GLTextureView;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView;->onPause()V

    .line 60
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLTextureViewImpl;->glTextureView:Lcom/google/android/apps/muzei/render/GLTextureView;

    invoke-virtual {v0}, Lcom/google/android/apps/muzei/render/GLTextureView;->onResume()V

    .line 55
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLTextureViewImpl;->glTextureView:Lcom/google/android/apps/muzei/render/GLTextureView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/muzei/render/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 44
    return-void
.end method
