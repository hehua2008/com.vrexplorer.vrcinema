.class public Lcom/facebook/react/uimanager/ReactShadowNode;
.super Ljava/lang/Object;
.source "ReactShadowNode.java"


# annotations
.annotation build Lcom/facebook/react/uimanager/annotations/ReactPropertyHolder;
.end annotation


# static fields
.field private static sYogaConfig:Lcom/facebook/yoga/YogaConfig;


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/react/uimanager/ReactShadowNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDefaultPadding:Lcom/facebook/react/uimanager/Spacing;

.field private mIsLayoutOnly:Z

.field private mNativeChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/react/uimanager/ReactShadowNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNativeParent:Lcom/facebook/react/uimanager/ReactShadowNode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNodeUpdated:Z

.field private final mPadding:[F

.field private final mPaddingIsPercent:[Z

.field private mParent:Lcom/facebook/react/uimanager/ReactShadowNode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mReactTag:I

.field private mRootNode:Lcom/facebook/react/uimanager/ReactShadowNode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScreenX:I

.field private mScreenY:I

.field private mShouldNotifyOnLayout:Z

.field private mThemedContext:Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTotalNativeChildren:I

.field private mViewClassName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mYogaNode:Lcom/facebook/yoga/YogaNode;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v3, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNodeUpdated:Z

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    .line 78
    new-instance v1, Lcom/facebook/react/uimanager/Spacing;

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    iput-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mDefaultPadding:Lcom/facebook/react/uimanager/Spacing;

    .line 79
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    .line 80
    new-array v1, v4, [Z

    iput-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPaddingIsPercent:[Z

    .line 85
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    invoke-static {}, Lcom/facebook/react/uimanager/YogaNodePool;->get()Lcom/facebook/react/common/ClearableSynchronizedPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/common/ClearableSynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaNode;

    .line 87
    .local v0, "node":Lcom/facebook/yoga/YogaNode;
    sget-object v1, Lcom/facebook/react/uimanager/ReactShadowNode;->sYogaConfig:Lcom/facebook/yoga/YogaConfig;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/facebook/yoga/YogaConfig;

    invoke-direct {v1}, Lcom/facebook/yoga/YogaConfig;-><init>()V

    sput-object v1, Lcom/facebook/react/uimanager/ReactShadowNode;->sYogaConfig:Lcom/facebook/yoga/YogaConfig;

    .line 89
    sget-object v1, Lcom/facebook/react/uimanager/ReactShadowNode;->sYogaConfig:Lcom/facebook/yoga/YogaConfig;

    invoke-virtual {v1, v2}, Lcom/facebook/yoga/YogaConfig;->setPointScaleFactor(F)V

    .line 90
    sget-object v1, Lcom/facebook/react/uimanager/ReactShadowNode;->sYogaConfig:Lcom/facebook/yoga/YogaConfig;

    invoke-virtual {v1, v3}, Lcom/facebook/yoga/YogaConfig;->setUseLegacyStretchBehaviour(Z)V

    .line 92
    :cond_0
    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/facebook/yoga/YogaNode;

    .end local v0    # "node":Lcom/facebook/yoga/YogaNode;
    sget-object v1, Lcom/facebook/react/uimanager/ReactShadowNode;->sYogaConfig:Lcom/facebook/yoga/YogaConfig;

    invoke-direct {v0, v1}, Lcom/facebook/yoga/YogaNode;-><init>(Lcom/facebook/yoga/YogaConfig;)V

    .line 95
    .restart local v0    # "node":Lcom/facebook/yoga/YogaNode;
    :cond_1
    iput-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    .line 96
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 100
    .end local v0    # "node":Lcom/facebook/yoga/YogaNode;
    :goto_0
    return-void

    .line 98
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    goto :goto_0
.end method

.method private toStringWithIndentation(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 804
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 805
    const-string v1, "__"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 809
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    .line 810
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v1, :cond_2

    .line 813
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    .line 814
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 815
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 819
    :goto_1
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 828
    :cond_1
    return-void

    .line 817
    :cond_2
    const-string v1, "(virtual node)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 825
    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 826
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->toStringWithIndentation(Ljava/lang/StringBuilder;I)V

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private updateNativeChildrenCountInParent(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    .line 251
    iget-boolean v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mIsLayoutOnly:Z

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 253
    .local v0, "parent":Lcom/facebook/react/uimanager/ReactShadowNode;
    :goto_0
    if-eqz v0, :cond_0

    .line 254
    iget v1, v0, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    .line 255
    iget-boolean v1, v0, Lcom/facebook/react/uimanager/ReactShadowNode;->mIsLayoutOnly:Z

    if-nez v1, :cond_1

    .line 261
    .end local v0    # "parent":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_0
    return-void

    .line 258
    .restart local v0    # "parent":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePadding()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 732
    const/4 v0, 0x0

    .local v0, "spacingType":I
    :goto_0
    if-gt v0, v4, :cond_6

    .line 733
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    aget v1, v1, v0

    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    .line 738
    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    aget v1, v1, v4

    .line 739
    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 740
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {v0}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mDefaultPadding:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v3, v0}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/yoga/YogaNode;->setPadding(Lcom/facebook/yoga/YogaEdge;F)V

    .line 732
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 744
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    aget v1, v1, v0

    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    .line 745
    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    aget v1, v1, v4

    .line 746
    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 747
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {v0}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mDefaultPadding:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v3, v0}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/yoga/YogaNode;->setPadding(Lcom/facebook/yoga/YogaEdge;F)V

    goto :goto_1

    .line 751
    :cond_3
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    aget v1, v1, v0

    invoke-static {v1}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 752
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {v0}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mDefaultPadding:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v3, v0}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/yoga/YogaNode;->setPadding(Lcom/facebook/yoga/YogaEdge;F)V

    goto :goto_1

    .line 757
    :cond_4
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPaddingIsPercent:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_5

    .line 758
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {v0}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/yoga/YogaNode;->setPaddingPercent(Lcom/facebook/yoga/YogaEdge;F)V

    goto :goto_1

    .line 760
    :cond_5
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {v0}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/yoga/YogaNode;->setPadding(Lcom/facebook/yoga/YogaEdge;F)V

    goto :goto_1

    .line 763
    :cond_6
    return-void
.end method


# virtual methods
.method public addChildAt(Lcom/facebook/react/uimanager/ReactShadowNode;I)V
    .locals 5
    .param p1, "child"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "i"    # I

    .prologue
    .line 162
    iget-object v2, p1, Lcom/facebook/react/uimanager/ReactShadowNode;->mParent:Lcom/facebook/react/uimanager/ReactShadowNode;

    if-eqz v2, :cond_0

    .line 163
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v3, "Tried to add child that already has a parent! Remove it from its parent first."

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mChildren:Ljava/util/ArrayList;

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 170
    iput-object p0, p1, Lcom/facebook/react/uimanager/ReactShadowNode;->mParent:Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 174
    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v2}, Lcom/facebook/yoga/YogaNode;->isMeasureDefined()Z

    move-result v2

    if-nez v2, :cond_3

    .line 175
    iget-object v0, p1, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    .line 176
    .local v0, "childYogaNode":Lcom/facebook/yoga/YogaNode;
    if-nez v0, :cond_2

    .line 177
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add a child that doesn\'t have a YogaNode to a parent without a measure function! (Trying to add a \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to a \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v2, v0, p2}, Lcom/facebook/yoga/YogaNode;->addChildAt(Lcom/facebook/yoga/YogaNode;I)V

    .line 184
    .end local v0    # "childYogaNode":Lcom/facebook/yoga/YogaNode;
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->markUpdated()V

    .line 186
    iget-boolean v2, p1, Lcom/facebook/react/uimanager/ReactShadowNode;->mIsLayoutOnly:Z

    if-eqz v2, :cond_4

    iget v1, p1, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    .line 187
    .local v1, "increase":I
    :goto_0
    iget v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    .line 189
    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->updateNativeChildrenCountInParent(I)V

    .line 190
    return-void

    .line 186
    .end local v1    # "increase":I
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final addNativeChildAt(Lcom/facebook/react/uimanager/ReactShadowNode;I)V
    .locals 3
    .param p1, "child"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "nativeIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mIsLayoutOnly:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 397
    iget-boolean v0, p1, Lcom/facebook/react/uimanager/ReactShadowNode;->mIsLayoutOnly:Z

    if-nez v0, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 399
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 404
    iput-object p0, p1, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeParent:Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 405
    return-void

    :cond_1
    move v0, v2

    .line 396
    goto :goto_0

    :cond_2
    move v1, v2

    .line 397
    goto :goto_1
.end method

.method public calculateLayout()V
    .locals 2

    .prologue
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 378
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, v1, v1}, Lcom/facebook/yoga/YogaNode;->calculateLayout(FF)V

    .line 379
    return-void
.end method

.method public dirty()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->dirty()V

    .line 155
    :cond_0
    return-void
.end method

.method dispatchUpdates(FFLcom/facebook/react/uimanager/UIViewOperationQueue;Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)Z
    .locals 14
    .param p1, "absoluteX"    # F
    .param p2, "absoluteY"    # F
    .param p3, "uiViewOperationQueue"    # Lcom/facebook/react/uimanager/UIViewOperationQueue;
    .param p4, "nativeViewHierarchyOptimizer"    # Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;

    .prologue
    .line 298
    iget-boolean v12, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNodeUpdated:Z

    if-eqz v12, :cond_0

    .line 299
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->onCollectExtraUpdates(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->hasNewLayout()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutX()F

    move-result v2

    .line 304
    .local v2, "layoutX":F
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutY()F

    move-result v3

    .line 305
    .local v3, "layoutY":F
    add-float v12, p1, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 306
    .local v5, "newAbsoluteLeft":I
    add-float v12, p2, v3

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 307
    .local v7, "newAbsoluteTop":I
    add-float v12, p1, v2

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutWidth()F

    move-result v13

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 308
    .local v6, "newAbsoluteRight":I
    add-float v12, p2, v3

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutHeight()F

    move-result v13

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 310
    .local v4, "newAbsoluteBottom":I
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 311
    .local v10, "newScreenX":I
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 312
    .local v11, "newScreenY":I
    sub-int v9, v6, v5

    .line 313
    .local v9, "newScreenWidth":I
    sub-int v8, v4, v7

    .line 315
    .local v8, "newScreenHeight":I
    iget v12, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mScreenX:I

    if-ne v10, v12, :cond_1

    iget v12, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mScreenY:I

    if-ne v11, v12, :cond_1

    iget v12, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mScreenWidth:I

    if-ne v9, v12, :cond_1

    iget v12, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mScreenHeight:I

    if-eq v8, v12, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 321
    .local v1, "layoutHasChanged":Z
    :goto_0
    iput v10, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mScreenX:I

    .line 322
    iput v11, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mScreenY:I

    .line 323
    iput v9, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mScreenWidth:I

    .line 324
    iput v8, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mScreenHeight:I

    .line 326
    if-eqz v1, :cond_2

    .line 327
    move-object/from16 v0, p4

    invoke-virtual {v0, p0}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleUpdateLayout(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 332
    .end local v1    # "layoutHasChanged":Z
    .end local v2    # "layoutX":F
    .end local v3    # "layoutY":F
    .end local v4    # "newAbsoluteBottom":I
    .end local v5    # "newAbsoluteLeft":I
    .end local v6    # "newAbsoluteRight":I
    .end local v7    # "newAbsoluteTop":I
    .end local v8    # "newScreenHeight":I
    .end local v9    # "newScreenWidth":I
    .end local v10    # "newScreenX":I
    .end local v11    # "newScreenY":I
    :cond_2
    :goto_1
    return v1

    .line 315
    .restart local v2    # "layoutX":F
    .restart local v3    # "layoutY":F
    .restart local v4    # "newAbsoluteBottom":I
    .restart local v5    # "newAbsoluteLeft":I
    .restart local v6    # "newAbsoluteRight":I
    .restart local v7    # "newAbsoluteTop":I
    .restart local v8    # "newScreenHeight":I
    .restart local v9    # "newScreenWidth":I
    .restart local v10    # "newScreenX":I
    .restart local v11    # "newScreenY":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 332
    .end local v2    # "layoutX":F
    .end local v3    # "layoutY":F
    .end local v4    # "newAbsoluteBottom":I
    .end local v5    # "newAbsoluteLeft":I
    .end local v6    # "newAbsoluteRight":I
    .end local v7    # "newAbsoluteTop":I
    .end local v8    # "newScreenHeight":I
    .end local v9    # "newScreenWidth":I
    .end local v10    # "newScreenX":I
    .end local v11    # "newScreenY":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->reset()V

    .line 833
    invoke-static {}, Lcom/facebook/react/uimanager/YogaNodePool;->get()Lcom/facebook/react/common/ClearableSynchronizedPool;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, v1}, Lcom/facebook/react/common/ClearableSynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 835
    :cond_0
    return-void
.end method

.method public final getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of bounds: node has no children"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ReactShadowNode;

    return-object v0
.end method

.method public final getChildCount()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getLayoutDirection()Lcom/facebook/yoga/YogaDirection;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object v0

    return-object v0
.end method

.method public final getLayoutHeight()F
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getLayoutHeight()F

    move-result v0

    return v0
.end method

.method public final getLayoutWidth()F
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getLayoutWidth()F

    move-result v0

    return v0
.end method

.method public final getLayoutX()F
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getLayoutX()F

    move-result v0

    return v0
.end method

.method public final getLayoutY()F
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getLayoutY()F

    move-result v0

    return v0
.end method

.method public final getNativeChildCount()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getNativeOffsetForChild(Lcom/facebook/react/uimanager/ReactShadowNode;)I
    .locals 7
    .param p1, "child"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .prologue
    .line 502
    const/4 v3, 0x0

    .line 503
    .local v3, "index":I
    const/4 v1, 0x0

    .line 504
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 505
    invoke-virtual {p0, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 506
    .local v0, "current":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-ne p1, v0, :cond_1

    .line 507
    const/4 v1, 0x1

    .line 512
    .end local v0    # "current":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_0
    if-nez v1, :cond_3

    .line 513
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Child "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/facebook/react/uimanager/ReactShadowNode;->mReactTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was not a child of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mReactTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 510
    .restart local v0    # "current":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_1
    iget-boolean v4, v0, Lcom/facebook/react/uimanager/ReactShadowNode;->mIsLayoutOnly:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getTotalNativeChildren()I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 510
    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 515
    .end local v0    # "current":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_3
    return v3
.end method

.method public final getNativeParent()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeParent:Lcom/facebook/react/uimanager/ReactShadowNode;

    return-object v0
.end method

.method public final getPadding(I)F
    .locals 2
    .param p1, "spacingType"    # I

    .prologue
    .line 707
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/yoga/YogaNode;->getLayoutPadding(Lcom/facebook/yoga/YogaEdge;)F

    move-result v0

    return v0
.end method

.method public final getParent()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mParent:Lcom/facebook/react/uimanager/ReactShadowNode;

    return-object v0
.end method

.method public final getReactTag()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mReactTag:I

    return v0
.end method

.method public final getRootNode()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mRootNode:Lcom/facebook/react/uimanager/ReactShadowNode;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ReactShadowNode;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mScreenWidth:I

    return v0
.end method

.method public getScreenX()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mScreenX:I

    return v0
.end method

.method public getScreenY()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mScreenY:I

    return v0
.end method

.method public final getStyleHeight()Lcom/facebook/yoga/YogaValue;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getHeight()Lcom/facebook/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public final getStylePadding(I)Lcom/facebook/yoga/YogaValue;
    .locals 2
    .param p1, "spacingType"    # I

    .prologue
    .line 711
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/yoga/YogaNode;->getPadding(Lcom/facebook/yoga/YogaEdge;)Lcom/facebook/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public final getStyleWidth()Lcom/facebook/yoga/YogaValue;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->getWidth()Lcom/facebook/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public final getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mThemedContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object v0
.end method

.method public final getTotalNativeChildren()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    return v0
.end method

.method public final getViewClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mViewClassName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final hasNewLayout()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->hasNewLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasUnseenUpdates()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNodeUpdated:Z

    return v0
.end method

.method public final hasUpdates()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNodeUpdated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->hasNewLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final indexOf(Lcom/facebook/react/uimanager/ReactShadowNode;)I
    .locals 1
    .param p1, "child"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public final indexOfNativeChild(Lcom/facebook/react/uimanager/ReactShadowNode;)I
    .locals 1
    .param p1, "nativeChild"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDescendantOf(Lcom/facebook/react/uimanager/ReactShadowNode;)Z
    .locals 2
    .param p1, "ancestorNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    .line 458
    .local v1, "parentNode":Lcom/facebook/react/uimanager/ReactShadowNode;
    const/4 v0, 0x0

    .line 460
    .local v0, "isDescendant":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 461
    if-ne v1, p1, :cond_1

    .line 462
    const/4 v0, 0x1

    .line 469
    :cond_0
    return v0

    .line 465
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v1

    goto :goto_0
.end method

.method public final isDirty()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLayoutOnly()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mIsLayoutOnly:Z

    return v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isVirtualAnchor()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public final markLayoutSeen()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->markLayoutSeen()V

    .line 389
    :cond_0
    return-void
.end method

.method public final markUpdateSeen()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNodeUpdated:Z

    .line 131
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->hasNewLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->markLayoutSeen()V

    .line 134
    :cond_0
    return-void
.end method

.method public markUpdated()V
    .locals 2

    .prologue
    .line 137
    iget-boolean v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNodeUpdated:Z

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNodeUpdated:Z

    .line 141
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    .line 142
    .local v0, "parent":Lcom/facebook/react/uimanager/ReactShadowNode;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ReactShadowNode;->markUpdated()V

    goto :goto_0
.end method

.method public onAfterUpdateTransaction()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public onBeforeLayout()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public onCollectExtraUpdates(Lcom/facebook/react/uimanager/UIViewOperationQueue;)V
    .locals 0
    .param p1, "uiViewOperationQueue"    # Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .prologue
    .line 288
    return-void
.end method

.method public final removeAllNativeChildren()V
    .locals 3

    .prologue
    .line 415
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 417
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ReactShadowNode;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeParent:Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 416
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 421
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public removeAndDisposeAllChildren()V
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 248
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 233
    .local v0, "decrease":I
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 234
    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v3}, Lcom/facebook/yoga/YogaNode;->isMeasureDefined()Z

    move-result v3

    if-nez v3, :cond_1

    .line 235
    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v3, v1}, Lcom/facebook/yoga/YogaNode;->removeChildAt(I)Lcom/facebook/yoga/YogaNode;

    .line 237
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v2

    .line 238
    .local v2, "toRemove":Lcom/facebook/react/uimanager/ReactShadowNode;
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/facebook/react/uimanager/ReactShadowNode;->mParent:Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 239
    invoke-virtual {v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->dispose()V

    .line 241
    iget-boolean v3, v2, Lcom/facebook/react/uimanager/ReactShadowNode;->mIsLayoutOnly:Z

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    :goto_2
    add-int/2addr v0, v3

    .line 233
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 241
    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    .line 243
    .end local v2    # "toRemove":Lcom/facebook/react/uimanager/ReactShadowNode;
    :cond_3
    iget-object v3, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mChildren:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 244
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->markUpdated()V

    .line 246
    iget v3, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    .line 247
    neg-int v3, v0

    invoke-direct {p0, v3}, Lcom/facebook/react/uimanager/ReactShadowNode;->updateNativeChildrenCountInParent(I)V

    goto :goto_0
.end method

.method public removeChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 193
    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 194
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of bounds: node has no children"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 198
    .local v1, "removed":Lcom/facebook/react/uimanager/ReactShadowNode;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/facebook/react/uimanager/ReactShadowNode;->mParent:Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 200
    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v2}, Lcom/facebook/yoga/YogaNode;->isMeasureDefined()Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v2, p1}, Lcom/facebook/yoga/YogaNode;->removeChildAt(I)Lcom/facebook/yoga/YogaNode;

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->markUpdated()V

    .line 205
    iget-boolean v2, v1, Lcom/facebook/react/uimanager/ReactShadowNode;->mIsLayoutOnly:Z

    if-eqz v2, :cond_2

    iget v0, v1, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    .line 206
    .local v0, "decrease":I
    :goto_0
    iget v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mTotalNativeChildren:I

    .line 207
    neg-int v2, v0

    invoke-direct {p0, v2}, Lcom/facebook/react/uimanager/ReactShadowNode;->updateNativeChildrenCountInParent(I)V

    .line 208
    return-object v1

    .line 205
    .end local v0    # "decrease":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final removeNativeChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 408
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 410
    .local v0, "removed":Lcom/facebook/react/uimanager/ReactShadowNode;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeParent:Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 411
    return-object v0
.end method

.method public setAlignContent(Lcom/facebook/yoga/YogaAlign;)V
    .locals 1
    .param p1, "alignContent"    # Lcom/facebook/yoga/YogaAlign;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setAlignContent(Lcom/facebook/yoga/YogaAlign;)V

    .line 680
    return-void
.end method

.method public setAlignItems(Lcom/facebook/yoga/YogaAlign;)V
    .locals 1
    .param p1, "alignItems"    # Lcom/facebook/yoga/YogaAlign;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setAlignItems(Lcom/facebook/yoga/YogaAlign;)V

    .line 676
    return-void
.end method

.method public setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V
    .locals 1
    .param p1, "alignSelf"    # Lcom/facebook/yoga/YogaAlign;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setAlignSelf(Lcom/facebook/yoga/YogaAlign;)V

    .line 672
    return-void
.end method

.method public setBorder(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "borderWidth"    # F

    .prologue
    .line 766
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/yoga/YogaNode;->setBorder(Lcom/facebook/yoga/YogaEdge;F)V

    .line 767
    return-void
.end method

.method public setDefaultPadding(IF)V
    .locals 1
    .param p1, "spacingType"    # I
    .param p2, "padding"    # F

    .prologue
    .line 715
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mDefaultPadding:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 716
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->updatePadding()V

    .line 717
    return-void
.end method

.method public setDisplay(Lcom/facebook/yoga/YogaDisplay;)V
    .locals 1
    .param p1, "display"    # Lcom/facebook/yoga/YogaDisplay;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setDisplay(Lcom/facebook/yoga/YogaDisplay;)V

    .line 692
    return-void
.end method

.method public setFlex(F)V
    .locals 1
    .param p1, "flex"    # F

    .prologue
    .line 635
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setFlex(F)V

    .line 636
    return-void
.end method

.method public setFlexBasis(F)V
    .locals 1
    .param p1, "flexBasis"    # F

    .prologue
    .line 647
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setFlexBasis(F)V

    .line 648
    return-void
.end method

.method public setFlexBasisAuto()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->setFlexBasisAuto()V

    .line 652
    return-void
.end method

.method public setFlexBasisPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 655
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setFlexBasisPercent(F)V

    .line 656
    return-void
.end method

.method public setFlexDirection(Lcom/facebook/yoga/YogaFlexDirection;)V
    .locals 1
    .param p1, "flexDirection"    # Lcom/facebook/yoga/YogaFlexDirection;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setFlexDirection(Lcom/facebook/yoga/YogaFlexDirection;)V

    .line 664
    return-void
.end method

.method public setFlexGrow(F)V
    .locals 1
    .param p1, "flexGrow"    # F

    .prologue
    .line 639
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setFlexGrow(F)V

    .line 640
    return-void
.end method

.method public setFlexShrink(F)V
    .locals 1
    .param p1, "flexShrink"    # F

    .prologue
    .line 643
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setFlexShrink(F)V

    .line 644
    return-void
.end method

.method public setFlexWrap(Lcom/facebook/yoga/YogaWrap;)V
    .locals 1
    .param p1, "wrap"    # Lcom/facebook/yoga/YogaWrap;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setWrap(Lcom/facebook/yoga/YogaWrap;)V

    .line 668
    return-void
.end method

.method public final setIsLayoutOnly(Z)V
    .locals 4
    .param p1, "isLayoutOnly"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getParent()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must remove from no opt parent first"

    invoke-static {v0, v3}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mNativeParent:Lcom/facebook/react/uimanager/ReactShadowNode;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Must remove from native parent first"

    invoke-static {v0, v3}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getNativeChildCount()I

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    const-string v0, "Must remove all native children first"

    invoke-static {v1, v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 444
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mIsLayoutOnly:Z

    .line 445
    return-void

    :cond_0
    move v0, v2

    .line 441
    goto :goto_0

    :cond_1
    move v0, v2

    .line 442
    goto :goto_1

    :cond_2
    move v1, v2

    .line 443
    goto :goto_2
.end method

.method public setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V
    .locals 1
    .param p1, "justifyContent"    # Lcom/facebook/yoga/YogaJustify;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setJustifyContent(Lcom/facebook/yoga/YogaJustify;)V

    .line 684
    return-void
.end method

.method public setLayoutDirection(Lcom/facebook/yoga/YogaDirection;)V
    .locals 1
    .param p1, "direction"    # Lcom/facebook/yoga/YogaDirection;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setDirection(Lcom/facebook/yoga/YogaDirection;)V

    .line 568
    return-void
.end method

.method public setMargin(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "margin"    # F

    .prologue
    .line 695
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/yoga/YogaNode;->setMargin(Lcom/facebook/yoga/YogaEdge;F)V

    .line 696
    return-void
.end method

.method public setMarginAuto(I)V
    .locals 2
    .param p1, "spacingType"    # I

    .prologue
    .line 703
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/yoga/YogaNode;->setMarginAuto(Lcom/facebook/yoga/YogaEdge;)V

    .line 704
    return-void
.end method

.method public setMarginPercent(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "percent"    # F

    .prologue
    .line 699
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/yoga/YogaNode;->setMarginPercent(Lcom/facebook/yoga/YogaEdge;F)V

    .line 700
    return-void
.end method

.method public setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V
    .locals 2
    .param p1, "measureFunction"    # Lcom/facebook/yoga/YogaMeasureFunction;

    .prologue
    .line 786
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v1}, Lcom/facebook/yoga/YogaNode;->isMeasureDefined()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Since a node with a measure function does not add any native yoga children, it\'s not safe to transition to/from having a measure function unless a node has no children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V

    .line 793
    return-void
.end method

.method public setOverflow(Lcom/facebook/yoga/YogaOverflow;)V
    .locals 1
    .param p1, "overflow"    # Lcom/facebook/yoga/YogaOverflow;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setOverflow(Lcom/facebook/yoga/YogaOverflow;)V

    .line 688
    return-void
.end method

.method public setPadding(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "padding"    # F

    .prologue
    .line 720
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    aput p2, v0, p1

    .line 721
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPaddingIsPercent:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 722
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->updatePadding()V

    .line 723
    return-void
.end method

.method public setPaddingPercent(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "percent"    # F

    .prologue
    .line 726
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPadding:[F

    aput p2, v0, p1

    .line 727
    iget-object v1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mPaddingIsPercent:[Z

    invoke-static {p2}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    .line 728
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->updatePadding()V

    .line 729
    return-void

    .line 727
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "position"    # F

    .prologue
    .line 770
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/yoga/YogaNode;->setPosition(Lcom/facebook/yoga/YogaEdge;F)V

    .line 771
    return-void
.end method

.method public setPositionPercent(IF)V
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "percent"    # F

    .prologue
    .line 774
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-static {p1}, Lcom/facebook/yoga/YogaEdge;->fromInt(I)Lcom/facebook/yoga/YogaEdge;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/yoga/YogaNode;->setPositionPercent(Lcom/facebook/yoga/YogaEdge;F)V

    .line 775
    return-void
.end method

.method public setPositionType(Lcom/facebook/yoga/YogaPositionType;)V
    .locals 1
    .param p1, "positionType"    # Lcom/facebook/yoga/YogaPositionType;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setPositionType(Lcom/facebook/yoga/YogaPositionType;)V

    .line 779
    return-void
.end method

.method public setReactTag(I)V
    .locals 0
    .param p1, "reactTag"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mReactTag:I

    .line 342
    return-void
.end method

.method final setRootNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 0
    .param p1, "rootNode"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mRootNode:Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 350
    return-void
.end method

.method public setShouldNotifyOnLayout(Z)V
    .locals 0
    .param p1, "shouldNotifyOnLayout"    # Z

    .prologue
    .line 782
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mShouldNotifyOnLayout:Z

    .line 783
    return-void
.end method

.method public setStyleAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 659
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setAspectRatio(F)V

    .line 660
    return-void
.end method

.method public setStyleHeight(F)V
    .locals 1
    .param p1, "heightPx"    # F

    .prologue
    .line 607
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setHeight(F)V

    .line 608
    return-void
.end method

.method public setStyleHeightAuto()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->setHeightAuto()V

    .line 616
    return-void
.end method

.method public setStyleHeightPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 611
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setHeightPercent(F)V

    .line 612
    return-void
.end method

.method public setStyleMaxHeight(F)V
    .locals 1
    .param p1, "widthPx"    # F

    .prologue
    .line 627
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMaxHeight(F)V

    .line 628
    return-void
.end method

.method public setStyleMaxHeightPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 631
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMaxHeightPercent(F)V

    .line 632
    return-void
.end method

.method public setStyleMaxWidth(F)V
    .locals 1
    .param p1, "widthPx"    # F

    .prologue
    .line 595
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMaxWidth(F)V

    .line 596
    return-void
.end method

.method public setStyleMaxWidthPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 599
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMaxWidthPercent(F)V

    .line 600
    return-void
.end method

.method public setStyleMinHeight(F)V
    .locals 1
    .param p1, "widthPx"    # F

    .prologue
    .line 619
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMinHeight(F)V

    .line 620
    return-void
.end method

.method public setStyleMinHeightPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 623
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMinHeightPercent(F)V

    .line 624
    return-void
.end method

.method public setStyleMinWidth(F)V
    .locals 1
    .param p1, "widthPx"    # F

    .prologue
    .line 587
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMinWidth(F)V

    .line 588
    return-void
.end method

.method public setStyleMinWidthPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 591
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setMinWidthPercent(F)V

    .line 592
    return-void
.end method

.method public setStyleWidth(F)V
    .locals 1
    .param p1, "widthPx"    # F

    .prologue
    .line 575
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setWidth(F)V

    .line 576
    return-void
.end method

.method public setStyleWidthAuto()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/facebook/yoga/YogaNode;->setWidthAuto()V

    .line 584
    return-void
.end method

.method public setStyleWidthPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 579
    iget-object v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mYogaNode:Lcom/facebook/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/facebook/yoga/YogaNode;->setWidthPercent(F)V

    .line 580
    return-void
.end method

.method public setThemedContext(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 0
    .param p1, "themedContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mThemedContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 371
    return-void
.end method

.method final setViewClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewClassName"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mViewClassName:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public final shouldNotifyOnLayout()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ReactShadowNode;->mShouldNotifyOnLayout:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/react/uimanager/ReactShadowNode;->toStringWithIndentation(Ljava/lang/StringBuilder;I)V

    .line 799
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final updateProperties(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 0
    .param p1, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .prologue
    .line 272
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->updateProps(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 273
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactShadowNode;->onAfterUpdateTransaction()V

    .line 274
    return-void
.end method
