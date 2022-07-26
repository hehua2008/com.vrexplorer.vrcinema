.class public Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
.super Ljava/lang/Object;
.source "NativeViewHierarchyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAnimationRegistry:Lcom/facebook/react/animation/AnimationRegistry;

.field private final mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

.field private mLayoutAnimationEnabled:Z

.field private final mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

.field private final mRootTags:Landroid/util/SparseBooleanArray;

.field private final mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

.field private final mTagsToViewManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagsToViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V
    .locals 1
    .param p1, "viewManagers"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .prologue
    .line 82
    new-instance v0, Lcom/facebook/react/uimanager/RootViewManager;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/RootViewManager;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;)V
    .locals 1
    .param p1, "viewManagers"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;
    .param p2, "manager"    # Lcom/facebook/react/uimanager/RootViewManager;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/facebook/react/touch/JSResponderHandler;

    invoke-direct {v0}, Lcom/facebook/react/touch/JSResponderHandler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 77
    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 86
    new-instance v0, Lcom/facebook/react/animation/AnimationRegistry;

    invoke-direct {v0}, Lcom/facebook/react/animation/AnimationRegistry;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mAnimationRegistry:Lcom/facebook/react/animation/AnimationRegistry;

    .line 87
    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    .line 91
    iput-object p2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)Lcom/facebook/react/animation/AnimationRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mAnimationRegistry:Lcom/facebook/react/animation/AnimationRegistry;

    return-object v0
.end method

.method private arrayContains([II)Z
    .locals 4
    .param p1, "array"    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "ele"    # I

    .prologue
    const/4 v1, 0x0

    .line 432
    if-nez p1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v1

    .line 435
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget v0, p1, v2

    .line 436
    .local v0, "curEle":I
    if-ne v0, p2, :cond_2

    .line 437
    const/4 v1, 0x1

    goto :goto_0

    .line 435
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;
    .locals 6
    .param p0, "viewToManage"    # Landroid/view/ViewGroup;
    .param p1, "viewManager"    # Lcom/facebook/react/uimanager/ViewGroupManager;
    .param p2, "indicesToRemove"    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "viewsToAdd"    # [Lcom/facebook/react/uimanager/ViewAtIndex;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "tagsToDelete"    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x10

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_2

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  children("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): [\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, "innerOffset":I
    :goto_1
    add-int v3, v0, v1

    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v4

    if-ge v3, v4, :cond_0

    if-ge v1, v5, :cond_0

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int v4, v0, v1

    invoke-virtual {p1, p0, v4}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 251
    :cond_0
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 253
    .end local v1    # "innerOffset":I
    :cond_1
    const-string v3, " ],\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .end local v0    # "index":I
    :cond_2
    if-eqz p2, :cond_5

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  indicesToRemove("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): [\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_4

    .line 260
    const/4 v1, 0x0

    .line 261
    .restart local v1    # "innerOffset":I
    :goto_3
    add-int v3, v0, v1

    array-length v4, p2

    if-ge v3, v4, :cond_3

    if-ge v1, v5, :cond_3

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int v4, v0, v1

    aget v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 265
    :cond_3
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    add-int/lit8 v0, v0, 0x10

    goto :goto_2

    .line 267
    .end local v1    # "innerOffset":I
    :cond_4
    const-string v3, " ],\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .end local v0    # "index":I
    :cond_5
    if-eqz p3, :cond_8

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  viewsToAdd("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): [\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_4
    array-length v3, p3

    if-ge v0, v3, :cond_7

    .line 273
    const/4 v1, 0x0

    .line 274
    .restart local v1    # "innerOffset":I
    :goto_5
    add-int v3, v0, v1

    array-length v4, p3

    if-ge v3, v4, :cond_6

    if-ge v1, v5, :cond_6

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, v0, v1

    aget-object v4, p3, v4

    iget v4, v4, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, v0, v1

    aget-object v4, p3, v4

    iget v4, v4, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "],"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 280
    :cond_6
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    add-int/lit8 v0, v0, 0x10

    goto :goto_4

    .line 282
    .end local v1    # "innerOffset":I
    :cond_7
    const-string v3, " ],\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .end local v0    # "index":I
    :cond_8
    if-eqz p4, :cond_b

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  tagsToDelete("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): [\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_6
    array-length v3, p4

    if-ge v0, v3, :cond_a

    .line 288
    const/4 v1, 0x0

    .line 289
    .restart local v1    # "innerOffset":I
    :goto_7
    add-int v3, v0, v1

    array-length v4, p4

    if-ge v3, v4, :cond_9

    if-ge v1, v5, :cond_9

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int v4, v0, v1

    aget v4, p4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 293
    :cond_9
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    add-int/lit8 v0, v0, 0x10

    goto :goto_6

    .line 295
    .end local v1    # "innerOffset":I
    :cond_a
    const-string v3, " ]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .end local v0    # "index":I
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static constructSetChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;
    .locals 5
    .param p0, "viewToManage"    # Landroid/view/ViewGroup;
    .param p1, "viewManager"    # Lcom/facebook/react/uimanager/ViewGroupManager;
    .param p2, "childrenTags"    # Lcom/facebook/react/bridge/ReadableArray;

    .prologue
    const/4 v4, 0x0

    .line 451
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    new-array v1, v2, [Lcom/facebook/react/uimanager/ViewAtIndex;

    .line 452
    .local v1, "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 453
    new-instance v2, Lcom/facebook/react/uimanager/ViewAtIndex;

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/facebook/react/uimanager/ViewAtIndex;-><init>(II)V

    aput-object v2, v1, v0

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_0
    invoke-static {p0, p1, v4, v1, v4}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getReactContextForView(I)Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 4
    .param p1, "reactTag"    # I

    .prologue
    .line 775
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 776
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 777
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find view with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 779
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object v1
.end method

.method private updateLayout(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "viewToUpdate"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 196
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->applyLayoutUpdate(Landroid/view/View;IIII)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addRootView(ILcom/facebook/react/uimanager/SizeMonitoringFrameLayout;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "view"    # Lcom/facebook/react/uimanager/SizeMonitoringFrameLayout;
    .param p3, "themedContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->addRootViewGroup(ILandroid/view/ViewGroup;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized addRootViewGroup(ILandroid/view/ViewGroup;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "view"    # Landroid/view/ViewGroup;
    .param p3, "themedContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 504
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v1, "Trying to add a root view with an explicit id already set. React Native uses the id field to track react tags and will overwrite this field. If that is fine, explicitly overwrite the id field to View.NO_ID before calling addRootView."

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 510
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 511
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 512
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 513
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    monitor-exit p0

    return-void
.end method

.method public clearJSResponder()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {v0}, Lcom/facebook/react/touch/JSResponderHandler;->clearJSResponder()V

    .line 648
    return-void
.end method

.method clearLayoutAnimation()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->reset()V

    .line 656
    return-void
.end method

.method configureLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 652
    return-void
.end method

.method public declared-synchronized createView(Lcom/facebook/react/uimanager/ThemedReactContext;ILjava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 6
    .param p1, "themedContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "tag"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "initialProps"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 209
    const-wide/16 v2, 0x0

    const-string v4, "NativeViewHierarchyManager_createView"

    invoke-static {v2, v3, v4}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    const-string v3, "tag"

    .line 212
    invoke-virtual {v2, v3, p2}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    const-string v3, "className"

    .line 213
    invoke-virtual {v2, v3, p3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 214
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    :try_start_1
    iget-object v2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v2, p3}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    .line 218
    .local v1, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    iget-object v2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {v1, p1, v2}, Lcom/facebook/react/uimanager/ViewManager;->createView(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/touch/JSResponderHandler;)Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    iget-object v2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 226
    if-eqz p4, :cond_0

    .line 227
    invoke-virtual {v1, v0, p4}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :cond_0
    const-wide/16 v2, 0x0

    :try_start_2
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    monitor-exit p0

    return-void

    .line 230
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    :catchall_0
    move-exception v2

    const-wide/16 v4, 0x0

    :try_start_3
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized dispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 5
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 701
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 702
    iget-object v2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 703
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 704
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to send command to a non-existing view with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .end local v0    # "view":Landroid/view/View;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 708
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    .line 709
    .local v1, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    invoke-virtual {v1, v0, p2, p3}, Lcom/facebook/react/uimanager/ViewManager;->receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized dropView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 521
    iget-object v6, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/facebook/react/uimanager/ViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 525
    :cond_0
    iget-object v6, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/uimanager/ViewManager;

    .line 526
    .local v5, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    instance-of v6, v5, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v6, :cond_3

    .line 527
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v0

    .line 528
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    move-object v0, v5

    check-cast v0, Lcom/facebook/react/uimanager/ViewGroupManager;

    move-object v4, v0

    .line 529
    .local v4, "viewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    invoke-virtual {v4, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 530
    invoke-virtual {v4, v3, v2}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 531
    .local v1, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 532
    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V

    .line 529
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 535
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {v4, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeAllViews(Landroid/view/ViewGroup;)V

    .line 537
    .end local v2    # "i":I
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    .end local v4    # "viewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    :cond_3
    iget-object v6, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 538
    iget-object v6, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    monitor-exit p0

    return-void

    .line 520
    .end local v5    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized findTargetTagForTouch(IFF)I
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F

    .prologue
    .line 613
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 614
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 615
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 616
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find view with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .end local v0    # "view":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 618
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    :try_start_1
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {p2, p3, v0}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTargetTagForTouch(FFLandroid/view/ViewGroup;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1
.end method

.method public getAnimationRegistry()Lcom/facebook/react/animation/AnimationRegistry;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mAnimationRegistry:Lcom/facebook/react/animation/AnimationRegistry;

    return-object v0
.end method

.method public declared-synchronized manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    .locals 16
    .param p1, "tag"    # I
    .param p2, "indicesToRemove"    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "viewsToAdd"    # [Lcom/facebook/react/uimanager/ViewAtIndex;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "tagsToDelete"    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 315
    .local v11, "viewToManage":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v8

    check-cast v8, Lcom/facebook/react/uimanager/ViewGroupManager;

    .line 316
    .local v8, "viewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    if-nez v11, :cond_0

    .line 317
    new-instance v13, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Trying to manageChildren view with tag "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " which doesn\'t exist\n detail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 319
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v11, v8, v0, v1, v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .end local v8    # "viewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .end local v11    # "viewToManage":Landroid/view/ViewGroup;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 327
    .restart local v8    # "viewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .restart local v11    # "viewToManage":Landroid/view/ViewGroup;
    :cond_0
    :try_start_1
    invoke-virtual {v8, v11}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v5

    .line 328
    .local v5, "lastIndexToRemove":I
    if-eqz p2, :cond_5

    .line 329
    move-object/from16 v0, p2

    array-length v13, v0

    add-int/lit8 v3, v13, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 330
    aget v4, p2, v3

    .line 331
    .local v4, "indexToRemove":I
    if-gez v4, :cond_1

    .line 332
    new-instance v13, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Trying to remove a negative view index:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " view tag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n detail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 335
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v11, v8, v0, v1, v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 342
    :cond_1
    invoke-virtual {v8, v11}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v13

    if-lt v4, v13, :cond_2

    .line 343
    new-instance v13, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Trying to remove a view index above child count "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " view tag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n detail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 346
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v11, v8, v0, v1, v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 353
    :cond_2
    if-lt v4, v5, :cond_3

    .line 354
    new-instance v13, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Trying to remove an out of order view index:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " view tag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n detail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 357
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v11, v8, v0, v1, v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 365
    :cond_3
    invoke-virtual {v8, v11, v4}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v12

    .line 367
    .local v12, "viewToRemove":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 368
    invoke-virtual {v13, v12}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 369
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v13}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->arrayContains([II)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 376
    :goto_1
    move v5, v4

    .line 329
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 373
    :cond_4
    invoke-virtual {v8, v11, v4}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    goto :goto_1

    .line 380
    .end local v3    # "i":I
    .end local v4    # "indexToRemove":I
    .end local v12    # "viewToRemove":Landroid/view/View;
    :cond_5
    if-eqz p3, :cond_7

    .line 381
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    move-object/from16 v0, p3

    array-length v13, v0

    if-ge v3, v13, :cond_7

    .line 382
    aget-object v7, p3, v3

    .line 383
    .local v7, "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    iget v14, v7, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 384
    .local v9, "viewToAdd":Landroid/view/View;
    if-nez v9, :cond_6

    .line 385
    new-instance v13, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Trying to add unknown view tag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n detail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 388
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v11, v8, v0, v1, v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 395
    :cond_6
    iget v13, v7, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    invoke-virtual {v8, v11, v9, v13}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 381
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 399
    .end local v3    # "i":I
    .end local v7    # "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v9    # "viewToAdd":Landroid/view/View;
    :cond_7
    if-eqz p4, :cond_a

    .line 400
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    move-object/from16 v0, p4

    array-length v13, v0

    if-ge v3, v13, :cond_a

    .line 401
    aget v6, p4, v3

    .line 402
    .local v6, "tagToDelete":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 403
    .local v10, "viewToDestroy":Landroid/view/View;
    if-nez v10, :cond_8

    .line 404
    new-instance v13, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Trying to destroy unknown view tag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n detail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 407
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v11, v8, v0, v1, v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 415
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 416
    invoke-virtual {v13, v10}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 417
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    new-instance v14, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v11, v10}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;-><init>(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/uimanager/ViewGroupManager;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v13, v10, v14}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->deleteView(Landroid/view/View;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V

    .line 400
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 425
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 429
    .end local v3    # "i":I
    .end local v6    # "tagToDelete":I
    .end local v10    # "viewToDestroy":Landroid/view/View;
    :cond_a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized measure(I[I)V
    .locals 7
    .param p1, "tag"    # I
    .param p2, "outputBuffer"    # [I

    .prologue
    .line 557
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 558
    iget-object v4, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 559
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_0

    .line 560
    new-instance v4, Lcom/facebook/react/uimanager/NoSuchNativeViewException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No native view for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currently exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/uimanager/NoSuchNativeViewException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    .end local v3    # "v":Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 563
    .restart local v3    # "v":Landroid/view/View;
    :cond_0
    :try_start_1
    invoke-static {v3}, Lcom/facebook/react/uimanager/RootViewUtil;->getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 566
    .local v0, "rootView":Landroid/view/View;
    if-nez v0, :cond_1

    .line 567
    new-instance v4, Lcom/facebook/react/uimanager/NoSuchNativeViewException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Native view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is no longer on screen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/uimanager/NoSuchNativeViewException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 569
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 570
    const/4 v4, 0x0

    aget v1, p2, v4

    .line 571
    .local v1, "rootX":I
    const/4 v4, 0x1

    aget v2, p2, v4

    .line 573
    .local v2, "rootY":I
    invoke-virtual {v3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 575
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, p2, v5

    sub-int/2addr v5, v1

    aput v5, p2, v4

    .line 576
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, p2, v5

    sub-int/2addr v5, v2

    aput v5, p2, v4

    .line 577
    const/4 v4, 0x2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    aput v5, p2, v4

    .line 578
    const/4 v4, 0x3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    aput v5, p2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized measureInWindow(I[I)V
    .locals 7
    .param p1, "tag"    # I
    .param p2, "outputBuffer"    # [I

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 591
    iget-object v4, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 592
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_0

    .line 593
    new-instance v4, Lcom/facebook/react/uimanager/NoSuchNativeViewException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No native view for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currently exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/uimanager/NoSuchNativeViewException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    .end local v3    # "v":Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 596
    .restart local v3    # "v":Landroid/view/View;
    :cond_0
    :try_start_1
    invoke-virtual {v3, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 600
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 601
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 602
    .local v2, "statusBarId":I
    if-lez v2, :cond_1

    .line 603
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 604
    .local v0, "height":I
    const/4 v4, 0x1

    aget v5, p2, v4

    sub-int/2addr v5, v0

    aput v5, p2, v4

    .line 608
    .end local v0    # "height":I
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    aput v5, p2, v4

    .line 609
    const/4 v4, 0x3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    aput v5, p2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeRootView(I)V
    .locals 3
    .param p1, "rootViewTag"    # I

    .prologue
    .line 542
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 543
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not registered as a root view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 548
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V

    .line 549
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    monitor-exit p0

    return-void

    .line 542
    .end local v0    # "rootView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized resolveView(I)Landroid/view/View;
    .locals 4
    .param p1, "tag"    # I

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 96
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 97
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to resolve view with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v0    # "view":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 100
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;
    .locals 4
    .param p1, "tag"    # I

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;

    .line 105
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-nez v0, :cond_0

    .line 106
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewManager for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " could not be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v0    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 108
    .restart local v0    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public sendAccessibilityEvent(II)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 783
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 784
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 785
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find view with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 787
    :cond_0
    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/AccessibilityHelper;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 788
    return-void
.end method

.method public declared-synchronized setChildren(ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 7
    .param p1, "tag"    # I
    .param p2, "childrenTags"    # Lcom/facebook/react/bridge/ReadableArray;

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 471
    iget-object v4, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 472
    .local v3, "viewToManage":Landroid/view/ViewGroup;
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ViewGroupManager;

    .line 474
    .local v1, "viewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 475
    iget-object v4, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 476
    .local v2, "viewToAdd":Landroid/view/View;
    if-nez v2, :cond_0

    .line 477
    new-instance v4, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to add unknown view tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 479
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n detail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 480
    invoke-static {v3, v1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructSetChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    .end local v0    # "i":I
    .end local v1    # "viewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .end local v2    # "viewToAdd":Landroid/view/View;
    .end local v3    # "viewToManage":Landroid/view/ViewGroup;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 485
    .restart local v0    # "i":I
    .restart local v1    # "viewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .restart local v2    # "viewToAdd":Landroid/view/View;
    .restart local v3    # "viewToManage":Landroid/view/ViewGroup;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v3, v2, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    .end local v2    # "viewToAdd":Landroid/view/View;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setJSResponder(IIZ)V
    .locals 3
    .param p1, "reactTag"    # I
    .param p2, "initialReactTag"    # I
    .param p3, "blockNativeResponder"    # Z

    .prologue
    .line 625
    monitor-enter p0

    if-nez p3, :cond_0

    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :goto_0
    monitor-exit p0

    return-void

    .line 630
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 631
    .local v0, "view":Landroid/view/View;
    if-eq p2, p1, :cond_1

    instance-of v1, v0, Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    check-cast v0, Landroid/view/ViewParent;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v1, p2, v0}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 625
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 638
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot block native responder on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that is a root view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V

    .line 642
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 643
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setLayoutAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    .line 117
    return-void
.end method

.method public declared-synchronized showPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 8
    .param p1, "reactTag"    # I
    .param p2, "items"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "success"    # Lcom/facebook/react/bridge/Callback;

    .prologue
    .line 722
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 723
    iget-object v5, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 724
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_0

    .line 725
    new-instance v5, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find view with tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    .end local v0    # "anchor":Landroid/view/View;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 727
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_0
    :try_start_1
    new-instance v4, Landroid/widget/PopupMenu;

    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->getReactContextForView(I)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 729
    .local v4, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 730
    .local v3, "menu":Landroid/view/Menu;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 731
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v2, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 730
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 734
    :cond_1
    new-instance v1, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;

    const/4 v5, 0x0

    invoke-direct {v1, p3, v5}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;)V

    .line 735
    .local v1, "handler":Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;
    invoke-virtual {v4, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 736
    invoke-virtual {v4, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 738
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    monitor-exit p0

    return-void
.end method

.method declared-synchronized startAnimationForNativeView(ILcom/facebook/react/animation/Animation;Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .param p1, "reactTag"    # I
    .param p2, "animation"    # Lcom/facebook/react/animation/Animation;
    .param p3, "animationCallback"    # Lcom/facebook/react/bridge/Callback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 663
    iget-object v2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 664
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/facebook/react/animation/Animation;->getAnimationID()I

    move-result v0

    .line 665
    .local v0, "animationId":I
    if-eqz v1, :cond_0

    .line 666
    new-instance v2, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$2;

    invoke-direct {v2, p0, v0, p3}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$2;-><init>(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;ILcom/facebook/react/bridge/Callback;)V

    invoke-virtual {p2, v2}, Lcom/facebook/react/animation/Animation;->setAnimationListener(Lcom/facebook/react/animation/AnimationListener;)V

    .line 690
    invoke-virtual {p2, v1}, Lcom/facebook/react/animation/Animation;->start(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    monitor-exit p0

    return-void

    .line 693
    :cond_0
    :try_start_1
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    .end local v0    # "animationId":I
    .end local v1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized updateLayout(IIIIII)V
    .locals 10
    .param p1, "parentTag"    # I
    .param p2, "tag"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 147
    const-wide/16 v4, 0x0

    const-string v2, "NativeViewHierarchyManager_updateLayout"

    invoke-static {v4, v5, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    const-string v4, "parentTag"

    .line 150
    invoke-virtual {v2, v4, p1}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    const-string v4, "tag"

    .line 151
    invoke-virtual {v2, v4, p2}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v3

    .line 167
    .local v3, "viewToUpdate":Landroid/view/View;
    const/high16 v2, 0x40000000    # 2.0f

    .line 168
    invoke-static {p5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    .line 169
    move/from16 v0, p6

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 167
    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    .line 172
    iget-object v2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/uimanager/ViewManager;

    .line 175
    .local v9, "parentViewManager":Lcom/facebook/react/uimanager/ViewManager;
    instance-of v2, v9, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v2, :cond_1

    .line 176
    move-object v0, v9

    check-cast v0, Lcom/facebook/react/uimanager/ViewGroupManager;

    move-object v8, v0

    .line 182
    .local v8, "parentViewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    if-eqz v8, :cond_0

    .line 183
    invoke-virtual {v8}, Lcom/facebook/react/uimanager/ViewGroupManager;->needsCustomLayoutForChildren()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    .line 184
    invoke-direct/range {v2 .. v7}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateLayout(Landroid/view/View;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .end local v8    # "parentViewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .end local v9    # "parentViewManager":Lcom/facebook/react/uimanager/ViewManager;
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    :try_start_2
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    monitor-exit p0

    return-void

    .line 178
    .restart local v9    # "parentViewManager":Lcom/facebook/react/uimanager/ViewManager;
    :cond_1
    :try_start_3
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to use view with tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as a parent, but its Manager doesn\'t extends ViewGroupManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    .end local v3    # "viewToUpdate":Landroid/view/View;
    .end local v9    # "parentViewManager":Lcom/facebook/react/uimanager/ViewManager;
    :catchall_0
    move-exception v2

    const-wide/16 v4, 0x0

    :try_start_4
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v3    # "viewToUpdate":Landroid/view/View;
    :cond_2
    move-object v2, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    .line 187
    :try_start_5
    invoke-direct/range {v2 .. v7}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateLayout(Landroid/view/View;IIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized updateProperties(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 6
    .param p1, "tag"    # I
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    .line 124
    .local v1, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, "viewToUpdate":Landroid/view/View;
    invoke-virtual {v1, v2, p2}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    :try_end_1
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v1    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    .end local v2    # "viewToUpdate":Landroid/view/View;
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    :try_start_2
    sget-object v3, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to update properties for view tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 120
    .end local v0    # "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized updateViewExtraData(ILjava/lang/Object;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "extraData"    # Ljava/lang/Object;

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 134
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 135
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "viewToUpdate":Landroid/view/View;
    invoke-virtual {v0, v1, p2}, Lcom/facebook/react/uimanager/ViewManager;->updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 132
    .end local v0    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    .end local v1    # "viewToUpdate":Landroid/view/View;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
