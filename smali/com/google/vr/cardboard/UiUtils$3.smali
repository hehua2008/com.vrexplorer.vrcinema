.class final Lcom/google/vr/cardboard/UiUtils$3;
.super Ljava/lang/Object;
.source "UiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiUtils;->showDaydreamHelpCenterDialog(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onCancelledCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/vr/cardboard/UiUtils$3;->val$onCancelledCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/vr/cardboard/UiUtils$3;->val$onCancelledCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 157
    return-void
.end method
