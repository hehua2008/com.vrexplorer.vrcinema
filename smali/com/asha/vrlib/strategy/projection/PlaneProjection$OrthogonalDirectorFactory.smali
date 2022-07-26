.class Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirectorFactory;
.super Lcom/asha/vrlib/MD360DirectorFactory;
.source "PlaneProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/strategy/projection/PlaneProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrthogonalDirectorFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/strategy/projection/PlaneProjection;


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirectorFactory;->this$0:Lcom/asha/vrlib/strategy/projection/PlaneProjection;

    invoke-direct {p0}, Lcom/asha/vrlib/MD360DirectorFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection;Lcom/asha/vrlib/strategy/projection/PlaneProjection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/strategy/projection/PlaneProjection;
    .param p2, "x1"    # Lcom/asha/vrlib/strategy/projection/PlaneProjection$1;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirectorFactory;-><init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection;)V

    return-void
.end method


# virtual methods
.method public createDirector(I)Lcom/asha/vrlib/MD360Director;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 212
    new-instance v0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirectorFactory;->this$0:Lcom/asha/vrlib/strategy/projection/PlaneProjection;

    new-instance v2, Lcom/asha/vrlib/MD360Director$Builder;

    invoke-direct {v2}, Lcom/asha/vrlib/MD360Director$Builder;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/asha/vrlib/strategy/projection/PlaneProjection$OrthogonalDirector;-><init>(Lcom/asha/vrlib/strategy/projection/PlaneProjection;Lcom/asha/vrlib/MD360Director$Builder;Lcom/asha/vrlib/strategy/projection/PlaneProjection$1;)V

    return-object v0
.end method
