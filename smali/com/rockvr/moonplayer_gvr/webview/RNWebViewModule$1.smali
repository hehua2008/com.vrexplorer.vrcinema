.class Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule$1;
.super Ljava/lang/Object;
.source "RNWebViewModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;Landroid/webkit/JsResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule$1;->this$0:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;

    iput-object p2, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 68
    return-void
.end method
