.class Lcom/facebook/react/devsupport/DevLoadingViewController$3;
.super Ljava/lang/Object;
.source "DevLoadingViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevLoadingViewController;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevLoadingViewController;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevLoadingViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/devsupport/DevLoadingViewController;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevLoadingViewController$3;->this$0:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevLoadingViewController$3;->this$0:Lcom/facebook/react/devsupport/DevLoadingViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/DevLoadingViewController;->access$100(Lcom/facebook/react/devsupport/DevLoadingViewController;Z)V

    .line 124
    return-void
.end method
