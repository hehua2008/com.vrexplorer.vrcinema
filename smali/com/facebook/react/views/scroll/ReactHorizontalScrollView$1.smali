.class Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "ReactHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->handlePostTouchScrolling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSnappingToPage:Z

.field final synthetic this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->mSnappingToPage:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x14

    const/4 v2, 0x0

    .line 282
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-static {v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$000(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-static {v1, v2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$002(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)Z

    .line 285
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {v1, p0, v4, v5}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 305
    :goto_0
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x1

    .line 288
    .local v0, "doneWithAllScrolling":Z
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-static {v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$100(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->mSnappingToPage:Z

    if-nez v1, :cond_1

    .line 291
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->mSnappingToPage:Z

    .line 292
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-static {v1, v2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$200(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;I)V

    .line 293
    const/4 v0, 0x0

    .line 295
    :cond_1
    if-eqz v0, :cond_3

    .line 296
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-static {v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$300(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-static {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollMomentumEndEvent(Landroid/view/ViewGroup;)V

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$402(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 300
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-static {v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$500(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V

    goto :goto_0

    .line 302
    :cond_3
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {v1, p0, v4, v5}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
