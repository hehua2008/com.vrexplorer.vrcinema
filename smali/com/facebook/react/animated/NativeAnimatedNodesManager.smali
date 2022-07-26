.class Lcom/facebook/react/animated/NativeAnimatedNodesManager;
.super Ljava/lang/Object;
.source "NativeAnimatedNodesManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/EventDispatcherListener;


# instance fields
.field private final mActiveAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/react/animated/AnimationDriver;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatedGraphBFSColor:I

.field private final mAnimatedNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/react/animated/AnimatedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomEventTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEventDrivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/animated/EventAnimationDriver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRunUpdateNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/animated/AnimatedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

.field private final mUpdatedNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/react/animated/AnimatedNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/UIManagerModule;)V
    .locals 3
    .param p1, "uiManager"    # Lcom/facebook/react/uimanager/UIManagerModule;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    .line 57
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    .line 58
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 66
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    .line 69
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/UIManagerModule;->getUIImplementation()Lcom/facebook/react/uimanager/UIImplementation;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 70
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->addListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V

    .line 71
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/UIManagerModule;->getConstants()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "customDirectEventTypes"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "customEventTypes":Ljava/lang/Object;
    check-cast v0, Ljava/util/Map;

    .end local v0    # "customEventTypes":Ljava/lang/Object;
    iput-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mCustomEventTypes:Ljava/util/Map;

    .line 73
    return-void
.end method

.method private stopAnimationsForNode(Lcom/facebook/react/animated/AnimatedNode;)V
    .locals 6
    .param p1, "animatedNode"    # Lcom/facebook/react/animated/AnimatedNode;

    .prologue
    const/4 v5, 0x0

    .line 216
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 217
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimationDriver;

    .line 218
    .local v0, "animation":Lcom/facebook/react/animated/AnimationDriver;
    iget-object v3, v0, Lcom/facebook/react/animated/AnimationDriver;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 221
    .local v1, "endCallbackResponse":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "finished"

    invoke-interface {v1, v3, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    iget-object v3, v0, Lcom/facebook/react/animated/AnimationDriver;->mEndCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 223
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 224
    add-int/lit8 v2, v2, -0x1

    .line 216
    .end local v1    # "endCallbackResponse":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    :cond_1
    return-void
.end method

.method private updateNodes(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/animated/AnimatedNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/animated/AnimatedNode;>;"
    const/4 v1, 0x0

    .line 447
    .local v1, "activeNodesCount":I
    const/4 v8, 0x0

    .line 454
    .local v8, "updatedNodesCount":I
    iget v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 455
    iget v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-nez v9, :cond_0

    .line 458
    iget v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 461
    :cond_0
    new-instance v7, Ljava/util/ArrayDeque;

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    .line 462
    .local v7, "nodesQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/facebook/react/animated/AnimatedNode;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/animated/AnimatedNode;

    .line 463
    .local v6, "node":Lcom/facebook/react/animated/AnimatedNode;
    iget v10, v6, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    iget v11, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-eq v10, v11, :cond_1

    .line 464
    iget v10, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    iput v10, v6, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    .line 465
    add-int/lit8 v1, v1, 0x1

    .line 466
    invoke-interface {v7, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    .end local v6    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_2
    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 471
    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/animated/AnimatedNode;

    .line 472
    .local v5, "nextNode":Lcom/facebook/react/animated/AnimatedNode;
    iget-object v9, v5, Lcom/facebook/react/animated/AnimatedNode;->mChildren:Ljava/util/List;

    if-eqz v9, :cond_2

    .line 473
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v9, v5, Lcom/facebook/react/animated/AnimatedNode;->mChildren:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 474
    iget-object v9, v5, Lcom/facebook/react/animated/AnimatedNode;->mChildren:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/AnimatedNode;

    .line 475
    .local v2, "child":Lcom/facebook/react/animated/AnimatedNode;
    iget v9, v2, Lcom/facebook/react/animated/AnimatedNode;->mActiveIncomingNodes:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v2, Lcom/facebook/react/animated/AnimatedNode;->mActiveIncomingNodes:I

    .line 476
    iget v9, v2, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    iget v10, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-eq v9, v10, :cond_3

    .line 477
    iget v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    iput v9, v2, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    .line 478
    add-int/lit8 v1, v1, 0x1

    .line 479
    invoke-interface {v7, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 493
    .end local v2    # "child":Lcom/facebook/react/animated/AnimatedNode;
    .end local v4    # "i":I
    .end local v5    # "nextNode":Lcom/facebook/react/animated/AnimatedNode;
    :cond_4
    iget v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 494
    iget v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-nez v9, :cond_5

    .line 496
    iget v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    .line 501
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/animated/AnimatedNode;

    .line 502
    .restart local v6    # "node":Lcom/facebook/react/animated/AnimatedNode;
    iget v10, v6, Lcom/facebook/react/animated/AnimatedNode;->mActiveIncomingNodes:I

    if-nez v10, :cond_6

    iget v10, v6, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    iget v11, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-eq v10, v11, :cond_6

    .line 503
    iget v10, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    iput v10, v6, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    .line 504
    add-int/lit8 v8, v8, 0x1

    .line 505
    invoke-interface {v7, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 510
    .end local v6    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_7
    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    .line 511
    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/animated/AnimatedNode;

    .line 512
    .restart local v5    # "nextNode":Lcom/facebook/react/animated/AnimatedNode;
    invoke-virtual {v5}, Lcom/facebook/react/animated/AnimatedNode;->update()V

    .line 513
    instance-of v9, v5, Lcom/facebook/react/animated/PropsAnimatedNode;

    if-eqz v9, :cond_8

    .line 516
    :try_start_0
    move-object v0, v5

    check-cast v0, Lcom/facebook/react/animated/PropsAnimatedNode;

    move-object v9, v0

    iget-object v10, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-virtual {v9, v10}, Lcom/facebook/react/animated/PropsAnimatedNode;->updateView(Lcom/facebook/react/uimanager/UIImplementation;)V
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_8
    :goto_3
    instance-of v9, v5, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v9, :cond_9

    move-object v9, v5

    .line 529
    check-cast v9, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v9}, Lcom/facebook/react/animated/ValueAnimatedNode;->onValueUpdate()V

    .line 531
    :cond_9
    iget-object v9, v5, Lcom/facebook/react/animated/AnimatedNode;->mChildren:Ljava/util/List;

    if-eqz v9, :cond_7

    .line 532
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    iget-object v9, v5, Lcom/facebook/react/animated/AnimatedNode;->mChildren:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_7

    .line 533
    iget-object v9, v5, Lcom/facebook/react/animated/AnimatedNode;->mChildren:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/animated/AnimatedNode;

    .line 534
    .restart local v2    # "child":Lcom/facebook/react/animated/AnimatedNode;
    iget v9, v2, Lcom/facebook/react/animated/AnimatedNode;->mActiveIncomingNodes:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v2, Lcom/facebook/react/animated/AnimatedNode;->mActiveIncomingNodes:I

    .line 535
    iget v9, v2, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    iget v10, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    if-eq v9, v10, :cond_a

    iget v9, v2, Lcom/facebook/react/animated/AnimatedNode;->mActiveIncomingNodes:I

    if-nez v9, :cond_a

    .line 536
    iget v9, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedGraphBFSColor:I

    iput v9, v2, Lcom/facebook/react/animated/AnimatedNode;->mBFSColor:I

    .line 537
    add-int/lit8 v8, v8, 0x1

    .line 538
    invoke-interface {v7, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 517
    .end local v2    # "child":Lcom/facebook/react/animated/AnimatedNode;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 524
    .local v3, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    const-string v9, "ReactNative"

    const-string v10, "Native animation workaround, frame lost as result of race condition"

    invoke-static {v9, v10, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 548
    .end local v3    # "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    .end local v5    # "nextNode":Lcom/facebook/react/animated/AnimatedNode;
    :cond_b
    if-eq v1, v8, :cond_c

    .line 549
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Looks like animated nodes graph has cycles, there are "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " but toposort visited only "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 552
    :cond_c
    return-void
.end method


# virtual methods
.method public addAnimatedEventToView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 11
    .param p1, "viewTag"    # I
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventMapping"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 319
    const-string v8, "animatedValueTag"

    invoke-interface {p3, v8}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 320
    .local v5, "nodeTag":I
    iget-object v8, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/animated/AnimatedNode;

    .line 321
    .local v4, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-nez v4, :cond_0

    .line 322
    new-instance v8, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Animated node with tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not exists"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 325
    :cond_0
    instance-of v8, v4, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v8, :cond_1

    .line 326
    new-instance v8, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Animated node connected to event should beof type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 327
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 330
    :cond_1
    const-string v8, "nativeEventPath"

    invoke-interface {p3, v8}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v6

    .line 331
    .local v6, "path":Lcom/facebook/react/bridge/ReadableArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    .local v7, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v6}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 333
    invoke-interface {v6, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_2
    new-instance v1, Lcom/facebook/react/animated/EventAnimationDriver;

    check-cast v4, Lcom/facebook/react/animated/ValueAnimatedNode;

    .end local v4    # "node":Lcom/facebook/react/animated/AnimatedNode;
    invoke-direct {v1, v7, v4}, Lcom/facebook/react/animated/EventAnimationDriver;-><init>(Ljava/util/List;Lcom/facebook/react/animated/ValueAnimatedNode;)V

    .line 337
    .local v1, "event":Lcom/facebook/react/animated/EventAnimationDriver;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 339
    iget-object v8, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :goto_1
    return-void

    .line 341
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    .local v0, "drivers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/animated/EventAnimationDriver;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v8, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public connectAnimatedNodeToView(II)V
    .locals 5
    .param p1, "animatedNodeTag"    # I
    .param p2, "viewTag"    # I

    .prologue
    .line 282
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 283
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-nez v0, :cond_0

    .line 284
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animated node with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_0
    instance-of v2, v0, Lcom/facebook/react/animated/PropsAnimatedNode;

    if-nez v2, :cond_1

    .line 288
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animated node connected to view should beof type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 289
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v1, v0

    .line 291
    check-cast v1, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 292
    .local v1, "propsAnimatedNode":Lcom/facebook/react/animated/PropsAnimatedNode;
    iget v2, v1, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 293
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animated node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "already attached to a view"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_2
    iput p2, v1, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    .line 297
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    return-void
.end method

.method public connectAnimatedNodes(II)V
    .locals 5
    .param p1, "parentNodeTag"    # I
    .param p2, "childNodeTag"    # I

    .prologue
    .line 252
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/animated/AnimatedNode;

    .line 253
    .local v1, "parentNode":Lcom/facebook/react/animated/AnimatedNode;
    if-nez v1, :cond_0

    .line 254
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animated node with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 258
    .local v0, "childNode":Lcom/facebook/react/animated/AnimatedNode;
    if-nez v0, :cond_1

    .line 259
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animated node with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_1
    invoke-virtual {v1, v0}, Lcom/facebook/react/animated/AnimatedNode;->addChild(Lcom/facebook/react/animated/AnimatedNode;)V

    .line 263
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    return-void
.end method

.method public createAnimatedNode(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 84
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animated node with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    const-string v2, "type"

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "type":Ljava/lang/String;
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    new-instance v0, Lcom/facebook/react/animated/StyleAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/StyleAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .line 113
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    :goto_0
    iput p1, v0, Lcom/facebook/react/animated/AnimatedNode;->mTag:I

    .line 114
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    return-void

    .line 92
    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_1
    const-string v2, "value"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    new-instance v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-direct {v0, p2}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .restart local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 94
    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_2
    const-string v2, "props"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    new-instance v0, Lcom/facebook/react/animated/PropsAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/PropsAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 96
    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_3
    const-string v2, "interpolation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 97
    new-instance v0, Lcom/facebook/react/animated/InterpolationAnimatedNode;

    invoke-direct {v0, p2}, Lcom/facebook/react/animated/InterpolationAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .restart local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 98
    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_4
    const-string v2, "addition"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 99
    new-instance v0, Lcom/facebook/react/animated/AdditionAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/AdditionAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 100
    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_5
    const-string v2, "division"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 101
    new-instance v0, Lcom/facebook/react/animated/DivisionAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/DivisionAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 102
    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_6
    const-string v2, "multiplication"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 103
    new-instance v0, Lcom/facebook/react/animated/MultiplicationAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/MultiplicationAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 104
    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_7
    const-string v2, "modulus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 105
    new-instance v0, Lcom/facebook/react/animated/ModulusAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/ModulusAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 106
    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_8
    const-string v2, "diffclamp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 107
    new-instance v0, Lcom/facebook/react/animated/DiffClampAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/DiffClampAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_0

    .line 108
    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_9
    const-string v2, "transform"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 109
    new-instance v0, Lcom/facebook/react/animated/TransformAnimatedNode;

    invoke-direct {v0, p2, p0}, Lcom/facebook/react/animated/TransformAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .restart local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto/16 :goto_0

    .line 111
    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_a
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported node type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public disconnectAnimatedNodeFromView(II)V
    .locals 5
    .param p1, "animatedNodeTag"    # I
    .param p2, "viewTag"    # I

    .prologue
    .line 301
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 302
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-nez v0, :cond_0

    .line 303
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animated node with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    :cond_0
    instance-of v2, v0, Lcom/facebook/react/animated/PropsAnimatedNode;

    if-nez v2, :cond_1

    .line 307
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animated node connected to view should beof type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 308
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v1, v0

    .line 310
    check-cast v1, Lcom/facebook/react/animated/PropsAnimatedNode;

    .line 311
    .local v1, "propsAnimatedNode":Lcom/facebook/react/animated/PropsAnimatedNode;
    iget v2, v1, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    if-eq v2, p2, :cond_2

    .line 312
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v3, "Attempting to disconnect view that has not been connected with the given animated node"

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    :cond_2
    const/4 v2, -0x1

    iput v2, v1, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    .line 316
    return-void
.end method

.method public disconnectAnimatedNodes(II)V
    .locals 5
    .param p1, "parentNodeTag"    # I
    .param p2, "childNodeTag"    # I

    .prologue
    .line 267
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/animated/AnimatedNode;

    .line 268
    .local v1, "parentNode":Lcom/facebook/react/animated/AnimatedNode;
    if-nez v1, :cond_0

    .line 269
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animated node with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 273
    .local v0, "childNode":Lcom/facebook/react/animated/AnimatedNode;
    if-nez v0, :cond_1

    .line 274
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animated node with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_1
    invoke-virtual {v1, v0}, Lcom/facebook/react/animated/AnimatedNode;->removeChild(Lcom/facebook/react/animated/AnimatedNode;)V

    .line 278
    iget-object v2, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    return-void
.end method

.method public dropAnimatedNode(I)V
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 120
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 121
    return-void
.end method

.method public extractAnimatedNodeOffset(I)V
    .locals 4
    .param p1, "tag"    # I

    .prologue
    .line 172
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 173
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v1, :cond_1

    .line 174
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animated node with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exists or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_1
    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    invoke-virtual {v0}, Lcom/facebook/react/animated/ValueAnimatedNode;->extractOffset()V

    .line 178
    return-void
.end method

.method public flattenAnimatedNodeOffset(I)V
    .locals 4
    .param p1, "tag"    # I

    .prologue
    .line 163
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 164
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v1, :cond_1

    .line 165
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animated node with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exists or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_1
    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    invoke-virtual {v0}, Lcom/facebook/react/animated/ValueAnimatedNode;->flattenOffset()V

    .line 169
    return-void
.end method

.method getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    return-object v0
.end method

.method public hasActiveAnimations()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEventDispatch(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 7
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/Event;

    .prologue
    .line 368
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v4

    if-nez v4, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 374
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getEventName()Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "eventName":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mCustomEventTypes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 376
    .local v0, "customEventType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 377
    const-string v4, "registrationName"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "eventName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 380
    .restart local v3    # "eventName":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getViewTag()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 381
    .local v2, "driversForKey":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/animated/EventAnimationDriver;>;"
    if-eqz v2, :cond_0

    .line 382
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/animated/EventAnimationDriver;

    .line 383
    .local v1, "driver":Lcom/facebook/react/animated/EventAnimationDriver;
    iget-object v5, v1, Lcom/facebook/react/animated/EventAnimationDriver;->mValueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-direct {p0, v5}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->stopAnimationsForNode(Lcom/facebook/react/animated/AnimatedNode;)V

    .line 384
    invoke-virtual {p1, v1}, Lcom/facebook/react/uimanager/events/Event;->dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    .line 385
    iget-object v5, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    iget-object v6, v1, Lcom/facebook/react/animated/EventAnimationDriver;->mValueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 387
    .end local v1    # "driver":Lcom/facebook/react/animated/EventAnimationDriver;
    :cond_3
    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->updateNodes(Ljava/util/List;)V

    .line 388
    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public removeAnimatedEventFromView(ILjava/lang/String;I)V
    .locals 5
    .param p1, "viewTag"    # I
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "animatedValueTag"    # I

    .prologue
    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 351
    .local v0, "driversForKey":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/animated/EventAnimationDriver;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 352
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mEventDrivers:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .end local v0    # "driversForKey":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/animated/EventAnimationDriver;>;"
    :cond_0
    :goto_0
    return-void

    .line 354
    .restart local v0    # "driversForKey":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/animated/EventAnimationDriver;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 355
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/facebook/react/animated/EventAnimationDriver;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/animated/EventAnimationDriver;

    iget-object v3, v3, Lcom/facebook/react/animated/EventAnimationDriver;->mValueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    iget v3, v3, Lcom/facebook/react/animated/ValueAnimatedNode;->mTag:I

    if-ne v3, p3, :cond_2

    .line 357
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0
.end method

.method public runUpdates(J)V
    .locals 11
    .param p1, "frameTimeNanos"    # J

    .prologue
    const/4 v9, 0x1

    .line 406
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 407
    const/4 v2, 0x0

    .line 409
    .local v2, "hasFinishedAnimations":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 410
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/animated/AnimatedNode;

    .line 411
    .local v4, "node":Lcom/facebook/react/animated/AnimatedNode;
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 415
    .end local v4    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_0
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 417
    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 418
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimationDriver;

    .line 419
    .local v0, "animation":Lcom/facebook/react/animated/AnimationDriver;
    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/animated/AnimationDriver;->runAnimationStep(J)V

    .line 420
    iget-object v5, v0, Lcom/facebook/react/animated/AnimationDriver;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 421
    .local v5, "valueNode":Lcom/facebook/react/animated/AnimatedNode;
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget-boolean v6, v0, Lcom/facebook/react/animated/AnimationDriver;->mHasFinished:Z

    if-eqz v6, :cond_1

    .line 423
    const/4 v2, 0x1

    .line 417
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 427
    .end local v0    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    .end local v5    # "valueNode":Lcom/facebook/react/animated/AnimatedNode;
    :cond_2
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->updateNodes(Ljava/util/List;)V

    .line 428
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mRunUpdateNodeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 432
    if-eqz v2, :cond_4

    .line 433
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_2
    if-ltz v3, :cond_4

    .line 434
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimationDriver;

    .line 435
    .restart local v0    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    iget-boolean v6, v0, Lcom/facebook/react/animated/AnimationDriver;->mHasFinished:Z

    if-eqz v6, :cond_3

    .line 436
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 437
    .local v1, "endCallbackResponse":Lcom/facebook/react/bridge/WritableMap;
    const-string v6, "finished"

    invoke-interface {v1, v6, v9}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    iget-object v6, v0, Lcom/facebook/react/animated/AnimationDriver;->mEndCallback:Lcom/facebook/react/bridge/Callback;

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 439
    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 433
    .end local v1    # "endCallbackResponse":Lcom/facebook/react/bridge/WritableMap;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 443
    .end local v0    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    :cond_4
    return-void
.end method

.method public setAnimatedNodeOffset(ID)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "offset"    # D

    .prologue
    .line 153
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 154
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v1, :cond_1

    .line 155
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animated node with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exists or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v1, v0

    .line 158
    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    iput-wide p2, v1, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    .line 159
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    return-void
.end method

.method public setAnimatedNodeValue(ID)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # D

    .prologue
    .line 142
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 143
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animated node with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exists or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->stopAnimationsForNode(Lcom/facebook/react/animated/AnimatedNode;)V

    move-object v1, v0

    .line 148
    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    iput-wide p2, v1, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    .line 149
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mUpdatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method public startAnimatingNode(IILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 6
    .param p1, "animationId"    # I
    .param p2, "animatedNodeTag"    # I
    .param p3, "animationConfig"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p4, "endCallback"    # Lcom/facebook/react/bridge/Callback;

    .prologue
    .line 185
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/animated/AnimatedNode;

    .line 186
    .local v1, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-nez v1, :cond_0

    .line 187
    new-instance v3, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Animated node with tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_0
    instance-of v3, v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v3, :cond_1

    .line 191
    new-instance v3, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Animated node should be of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 192
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 194
    :cond_1
    const-string v3, "type"

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "type":Ljava/lang/String;
    const-string v3, "frames"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    new-instance v0, Lcom/facebook/react/animated/FrameBasedAnimationDriver;

    invoke-direct {v0, p3}, Lcom/facebook/react/animated/FrameBasedAnimationDriver;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 205
    .local v0, "animation":Lcom/facebook/react/animated/AnimationDriver;
    :goto_0
    iput p1, v0, Lcom/facebook/react/animated/AnimationDriver;->mId:I

    .line 206
    iput-object p4, v0, Lcom/facebook/react/animated/AnimationDriver;->mEndCallback:Lcom/facebook/react/bridge/Callback;

    .line 207
    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    .end local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    iput-object v1, v0, Lcom/facebook/react/animated/AnimationDriver;->mAnimatedValue:Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 208
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    return-void

    .line 198
    .end local v0    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    .restart local v1    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_2
    const-string v3, "spring"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    new-instance v0, Lcom/facebook/react/animated/SpringAnimation;

    invoke-direct {v0, p3}, Lcom/facebook/react/animated/SpringAnimation;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .restart local v0    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    goto :goto_0

    .line 200
    .end local v0    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    :cond_3
    const-string v3, "decay"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 201
    new-instance v0, Lcom/facebook/react/animated/DecayAnimation;

    invoke-direct {v0, p3}, Lcom/facebook/react/animated/DecayAnimation;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .restart local v0    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    goto :goto_0

    .line 203
    .end local v0    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    :cond_4
    new-instance v3, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported animation type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public startListeningToAnimatedNodeValue(ILcom/facebook/react/animated/AnimatedNodeValueListener;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "listener"    # Lcom/facebook/react/animated/AnimatedNodeValueListener;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 125
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v1, :cond_1

    .line 126
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animated node with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exists or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_1
    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    invoke-virtual {v0, p2}, Lcom/facebook/react/animated/ValueAnimatedNode;->setValueListener(Lcom/facebook/react/animated/AnimatedNodeValueListener;)V

    .line 130
    return-void
.end method

.method public stopAnimation(I)V
    .locals 6
    .param p1, "animationId"    # I

    .prologue
    const/4 v5, 0x0

    .line 234
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 235
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimationDriver;

    .line 236
    .local v0, "animation":Lcom/facebook/react/animated/AnimationDriver;
    iget v3, v0, Lcom/facebook/react/animated/AnimationDriver;->mId:I

    if-ne v3, p1, :cond_1

    .line 238
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 239
    .local v1, "endCallbackResponse":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "finished"

    invoke-interface {v1, v3, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    iget-object v3, v0, Lcom/facebook/react/animated/AnimationDriver;->mEndCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 241
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mActiveAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 249
    .end local v0    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    .end local v1    # "endCallbackResponse":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void

    .line 234
    .restart local v0    # "animation":Lcom/facebook/react/animated/AnimationDriver;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stopListeningToAnimatedNodeValue(I)V
    .locals 4
    .param p1, "tag"    # I

    .prologue
    .line 133
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/animated/AnimatedNode;

    .line 134
    .local v0, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v1, :cond_1

    .line 135
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animated node with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exists or is not a \'value\' node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_1
    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    .end local v0    # "node":Lcom/facebook/react/animated/AnimatedNode;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/react/animated/ValueAnimatedNode;->setValueListener(Lcom/facebook/react/animated/AnimatedNodeValueListener;)V

    .line 139
    return-void
.end method
