.class Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil$1;
.super Ljava/lang/Object;
.source "RNNativeUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil;->activate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil$1;->this$0:Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil;

    iput-object p2, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/rnpackage/RNNativeUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 40
    return-void
.end method
