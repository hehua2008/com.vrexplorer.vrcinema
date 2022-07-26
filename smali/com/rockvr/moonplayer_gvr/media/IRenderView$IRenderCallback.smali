.class public interface abstract Lcom/rockvr/moonplayer_gvr/media/IRenderView$IRenderCallback;
.super Ljava/lang/Object;
.source "IRenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/IRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRenderCallback"
.end annotation


# virtual methods
.method public abstract onSurfaceChanged(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;III)V
    .param p1    # Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSurfaceCreated(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;II)V
    .param p1    # Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSurfaceDestroyed(Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;)V
    .param p1    # Lcom/rockvr/moonplayer_gvr/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
