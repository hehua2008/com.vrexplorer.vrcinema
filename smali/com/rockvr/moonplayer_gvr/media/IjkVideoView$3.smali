.class Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 3
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "sarNum"    # I
    .param p5, "sarDen"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$100(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Lcom/asha/vrlib/MDVRLibrary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$100(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Lcom/asha/vrlib/MDVRLibrary;

    move-result-object v0

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/MDVRLibrary;->onTextureResize(FF)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$302(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 270
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$402(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 271
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$502(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 272
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v1

    invoke-static {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$602(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;I)I

    .line 273
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$300(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$400(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$700(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Lcom/rockvr/moonplayer_gvr/media/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$700(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Lcom/rockvr/moonplayer_gvr/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$300(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v2}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$400(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/IRenderView;->setVideoSize(II)V

    .line 276
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$700(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)Lcom/rockvr/moonplayer_gvr/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v1}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$500(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-static {v2}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->access$600(Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/rockvr/moonplayer_gvr/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView$3;->this$0:Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/rockvr/moonplayer_gvr/media/IjkVideoView;->requestLayout()V

    .line 281
    :cond_2
    return-void
.end method
