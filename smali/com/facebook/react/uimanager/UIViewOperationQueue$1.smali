.class Lcom/facebook/react/uimanager/UIViewOperationQueue$1;
.super Ljava/lang/Object;
.source "UIViewOperationQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/uimanager/UIViewOperationQueue;->dispatchViewUpdates(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

.field final synthetic val$batchId:I

.field final synthetic val$batchedOperations:Ljava/util/ArrayList;

.field final synthetic val$nonBatchedOperations:Ljava/util/ArrayDeque;


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;ILjava/util/ArrayDeque;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    iput p2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->val$batchId:I

    iput-object p3, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->val$nonBatchedOperations:Ljava/util/ArrayDeque;

    iput-object p4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->val$batchedOperations:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 762
    const-string v2, "DispatchUI"

    invoke-static {v6, v7, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    const-string v3, "BatchId"

    iget v4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->val$batchId:I

    .line 763
    invoke-virtual {v2, v3, v4}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 764
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V

    .line 768
    :try_start_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->val$nonBatchedOperations:Ljava/util/ArrayDeque;

    if-eqz v2, :cond_0

    .line 769
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->val$nonBatchedOperations:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;

    .line 770
    .local v1, "op":Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;
    invoke-interface {v1}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 786
    .end local v1    # "op":Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->access$1502(Lcom/facebook/react/uimanager/UIViewOperationQueue;Z)Z

    .line 788
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v6, v7}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v2

    .line 774
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->val$batchedOperations:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 775
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->val$batchedOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;

    .line 776
    .restart local v1    # "op":Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;
    invoke-interface {v1}, Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;->execute()V

    goto :goto_1

    .line 781
    .end local v1    # "op":Lcom/facebook/react/uimanager/UIViewOperationQueue$UIOperation;
    :cond_1
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->access$000(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->clearLayoutAnimation()V

    .line 783
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->access$1400(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 784
    iget-object v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$1;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v2}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->access$1400(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/react/uimanager/debug/NotThreadSafeViewHierarchyUpdateDebugListener;->onViewHierarchyUpdateFinished()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 790
    :cond_2
    invoke-static {v6, v7}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 792
    return-void
.end method
