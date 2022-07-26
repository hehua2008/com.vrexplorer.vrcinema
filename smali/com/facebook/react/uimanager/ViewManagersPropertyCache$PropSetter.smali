.class abstract Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;
.super Ljava/lang/Object;
.source "ViewManagersPropertyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/ViewManagersPropertyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PropSetter"
.end annotation


# static fields
.field private static final SHADOW_ARGS:[Ljava/lang/Object;

.field private static final SHADOW_GROUP_ARGS:[Ljava/lang/Object;

.field private static final VIEW_MGR_ARGS:[Ljava/lang/Object;

.field private static final VIEW_MGR_GROUP_ARGS:[Ljava/lang/Object;


# instance fields
.field protected final mIndex:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mPropName:Ljava/lang/String;

.field protected final mPropType:Ljava/lang/String;

.field protected final mSetter:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 46
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_ARGS:[Ljava/lang/Object;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_GROUP_ARGS:[Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_ARGS:[Ljava/lang/Object;

    .line 49
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_GROUP_ARGS:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "prop"    # Lcom/facebook/react/uimanager/annotations/ReactProp;
    .param p2, "defaultType"    # Ljava/lang/String;
    .param p3, "setter"    # Ljava/lang/reflect/Method;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-interface {p1}, Lcom/facebook/react/uimanager/annotations/ReactProp;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    .line 53
    const-string v0, "__default_type__"

    invoke-interface {p1}, Lcom/facebook/react/uimanager/annotations/ReactProp;->customType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    .end local p2    # "defaultType":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropType:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mSetter:Ljava/lang/reflect/Method;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mIndex:Ljava/lang/Integer;

    .line 57
    return-void

    .line 54
    .restart local p2    # "defaultType":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/annotations/ReactProp;->customType()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/facebook/react/uimanager/ViewManagersPropertyCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/uimanager/annotations/ReactProp;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/reflect/Method;
    .param p4, "x3"    # Lcom/facebook/react/uimanager/ViewManagersPropertyCache$1;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/String;Ljava/lang/reflect/Method;I)V
    .locals 2
    .param p1, "prop"    # Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
    .param p2, "defaultType"    # Ljava/lang/String;
    .param p3, "setter"    # Ljava/lang/reflect/Method;
    .param p4, "index"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-interface {p1}, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;->names()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p4

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    .line 61
    const-string v0, "__default_type__"

    invoke-interface {p1}, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;->customType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    .end local p2    # "defaultType":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropType:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mSetter:Ljava/lang/reflect/Method;

    .line 64
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mIndex:Ljava/lang/Integer;

    .line 65
    return-void

    .line 62
    .restart local p2    # "defaultType":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;->customType()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/String;Ljava/lang/reflect/Method;ILcom/facebook/react/uimanager/ViewManagersPropertyCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/reflect/Method;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/facebook/react/uimanager/ViewManagersPropertyCache$1;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/String;Ljava/lang/reflect/Method;I)V

    return-void
.end method


# virtual methods
.method protected abstract extractProperty(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public getPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropType:Ljava/lang/String;

    return-object v0
.end method

.method public updateShadowNodeProp(Lcom/facebook/react/uimanager/ReactShadowNode;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 4
    .param p1, "nodeToUpdate"    # Lcom/facebook/react/uimanager/ReactShadowNode;
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mIndex:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 104
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->extractProperty(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 105
    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mSetter:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_ARGS:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_GROUP_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mIndex:Ljava/lang/Integer;

    aput-object v3, v1, v2

    .line 109
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_GROUP_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->extractProperty(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 110
    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mSetter:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_GROUP_ARGS:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->SHADOW_GROUP_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "t":Ljava/lang/Throwable;
    const-class v1, Lcom/facebook/react/uimanager/ViewManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while updating prop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while updating property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in shadow node of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getViewClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateViewProp(Lcom/facebook/react/uimanager/ViewManager;Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 4
    .param p1, "viewManager"    # Lcom/facebook/react/uimanager/ViewManager;
    .param p2, "viewToUpdate"    # Landroid/view/View;
    .param p3, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mIndex:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 81
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 82
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {p0, p3}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->extractProperty(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 83
    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mSetter:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_ARGS:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_GROUP_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 87
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_GROUP_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mIndex:Ljava/lang/Integer;

    aput-object v3, v1, v2

    .line 88
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_GROUP_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-virtual {p0, p3}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->extractProperty(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 89
    iget-object v1, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mSetter:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_GROUP_ARGS:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->VIEW_MGR_GROUP_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "t":Ljava/lang/Throwable;
    const-class v1, Lcom/facebook/react/uimanager/ViewManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while updating prop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while updating property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->mPropName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of a view managed by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 95
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
