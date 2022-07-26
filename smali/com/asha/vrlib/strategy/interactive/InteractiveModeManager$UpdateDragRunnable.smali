.class Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;
.super Ljava/lang/Object;
.source "InteractiveModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateDragRunnable"
.end annotation


# instance fields
.field private distanceX:I

.field private distanceY:I

.field final synthetic this$0:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;->this$0:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;
    .param p2, "x1"    # Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$1;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;-><init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;II)V
    .locals 0
    .param p0, "x0"    # Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;->handleDrag(II)V

    return-void
.end method

.method private handleDrag(II)V
    .locals 0
    .param p1, "distanceX"    # I
    .param p2, "distanceY"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;->distanceX:I

    .line 94
    iput p2, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;->distanceY:I

    .line 95
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;->this$0:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->access$300(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;)Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;

    iget v1, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;->distanceX:I

    iget v2, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$UpdateDragRunnable;->distanceY:I

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->handleDrag(II)Z

    .line 100
    return-void
.end method
