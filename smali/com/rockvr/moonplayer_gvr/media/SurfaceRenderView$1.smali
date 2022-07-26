.class Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;
.super Ljava/lang/Object;
.source "SurfaceRenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 65
    iget-object v8, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    iget-object v9, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    .line 66
    invoke-virtual {v9}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->getWidth()I

    move-result v9

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    .line 67
    invoke-virtual {v10}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->getHeight()I

    move-result v10

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 65
    invoke-virtual {v8, v9, v10}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->measure(II)V

    .line 69
    iget-object v8, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    invoke-virtual {v8}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->getLeft()I

    move-result v3

    .line 70
    .local v3, "left":I
    iget-object v8, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    invoke-virtual {v8}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->getTop()I

    move-result v5

    .line 71
    .local v5, "top":I
    iget-object v8, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    invoke-virtual {v8}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->getRight()I

    move-result v4

    .line 72
    .local v4, "right":I
    iget-object v8, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    invoke-virtual {v8}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->getBottom()I

    move-result v0

    .line 74
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    invoke-virtual {v8}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 75
    .local v2, "height":I
    iget-object v8, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    invoke-virtual {v8}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 77
    .local v7, "width":I
    sub-int v1, v0, v5

    .line 78
    .local v1, "h1":I
    sub-int v6, v4, v3

    .line 83
    .local v6, "w1":I
    iget-object v8, p0, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView$1;->this$0:Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;

    add-int v9, v3, v4

    sub-int/2addr v9, v7

    div-int/lit8 v9, v9, 0x2

    add-int v10, v5, v0

    sub-int/2addr v10, v2

    div-int/lit8 v10, v10, 0x2

    add-int v11, v3, v4

    add-int/2addr v11, v7

    div-int/lit8 v11, v11, 0x2

    add-int v12, v5, v0

    add-int/2addr v12, v2

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/rockvr/moonplayer_gvr/media/SurfaceRenderView;->layout(IIII)V

    .line 87
    return-void
.end method
