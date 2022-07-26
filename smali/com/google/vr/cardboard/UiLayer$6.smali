.class Lcom/google/vr/cardboard/UiLayer$6;
.super Ljava/lang/Object;
.source "UiLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->setBackButtonListener(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$6;->this$0:Lcom/google/vr/cardboard/UiLayer;

    iput-object p2, p0, Lcom/google/vr/cardboard/UiLayer$6;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$6;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$6;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$600(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$300(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$6;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$700(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$6;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$700(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$6;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setBackButtonListener(Ljava/lang/Runnable;)V

    .line 238
    :cond_0
    return-void

    .line 233
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
