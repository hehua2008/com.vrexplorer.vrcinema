.class Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$3;
.super Ljava/lang/Object;
.source "AbstractAnimatedDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$3;->this$0:Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "(%s) Invalidate Task"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$3;->this$0:Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    invoke-static {v2}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->access$200(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$3;->this$0:Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->access$402(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;Z)Z

    .line 121
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$3;->this$0:Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->access$500(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    .line 122
    return-void
.end method
