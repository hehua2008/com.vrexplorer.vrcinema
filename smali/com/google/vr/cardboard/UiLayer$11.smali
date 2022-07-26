.class Lcom/google/vr/cardboard/UiLayer$11;
.super Ljava/lang/Object;
.source "UiLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->setViewerName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;

.field final synthetic val$viewerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$11;->this$0:Lcom/google/vr/cardboard/UiLayer;

    iput-object p2, p0, Lcom/google/vr/cardboard/UiLayer$11;->val$viewerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$11;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$700(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$11;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$700(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$11;->val$viewerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setViewerName(Ljava/lang/String;)V

    .line 344
    :cond_0
    return-void
.end method
