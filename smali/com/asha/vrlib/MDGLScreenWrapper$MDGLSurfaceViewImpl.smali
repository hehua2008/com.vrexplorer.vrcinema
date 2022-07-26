.class Lcom/asha/vrlib/MDGLScreenWrapper$MDGLSurfaceViewImpl;
.super Lcom/asha/vrlib/MDGLScreenWrapper;
.source "MDGLScreenWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDGLScreenWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MDGLSurfaceViewImpl"
.end annotation


# instance fields
.field glSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method private constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 0
    .param p1, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/asha/vrlib/MDGLScreenWrapper;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLSurfaceViewImpl;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/opengl/GLSurfaceView;Lcom/asha/vrlib/MDGLScreenWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/opengl/GLSurfaceView;
    .param p2, "x1"    # Lcom/asha/vrlib/MDGLScreenWrapper$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLSurfaceViewImpl;-><init>(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLSurfaceViewImpl;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLSurfaceViewImpl;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 84
    iget-object v0, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLSurfaceViewImpl;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 85
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLSurfaceViewImpl;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLSurfaceViewImpl;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 90
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/asha/vrlib/MDGLScreenWrapper$MDGLSurfaceViewImpl;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 79
    return-void
.end method
