.class public Lcom/asha/vrlib/model/MDHitEvent;
.super Ljava/lang/Object;
.source "MDHitEvent.java"


# static fields
.field private static final sPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/asha/vrlib/model/MDHitEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hitPoint:Lcom/asha/vrlib/model/MDHitPoint;

.field private hotspot:Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

.field private ray:Lcom/asha/vrlib/model/MDRay;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/asha/vrlib/model/MDHitEvent;->sPool:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/asha/vrlib/model/MDHitEvent;
    .locals 2

    .prologue
    .line 58
    sget-object v1, Lcom/asha/vrlib/model/MDHitEvent;->sPool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/model/MDHitEvent;

    .line 59
    .local v0, "event":Lcom/asha/vrlib/model/MDHitEvent;
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/asha/vrlib/model/MDHitEvent;

    .end local v0    # "event":Lcom/asha/vrlib/model/MDHitEvent;
    invoke-direct {v0}, Lcom/asha/vrlib/model/MDHitEvent;-><init>()V

    .line 62
    .restart local v0    # "event":Lcom/asha/vrlib/model/MDHitEvent;
    :cond_0
    return-object v0
.end method

.method public static recycle(Lcom/asha/vrlib/model/MDHitEvent;)V
    .locals 3
    .param p0, "event"    # Lcom/asha/vrlib/model/MDHitEvent;

    .prologue
    const/4 v2, 0x0

    .line 66
    iput-object v2, p0, Lcom/asha/vrlib/model/MDHitEvent;->hotspot:Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/asha/vrlib/model/MDHitEvent;->timestamp:J

    .line 68
    iput-object v2, p0, Lcom/asha/vrlib/model/MDHitEvent;->ray:Lcom/asha/vrlib/model/MDRay;

    .line 69
    iput-object v2, p0, Lcom/asha/vrlib/model/MDHitEvent;->hitPoint:Lcom/asha/vrlib/model/MDHitPoint;

    .line 70
    sget-object v0, Lcom/asha/vrlib/model/MDHitEvent;->sPool:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method


# virtual methods
.method public getHitPoint()Lcom/asha/vrlib/model/MDHitPoint;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/asha/vrlib/model/MDHitEvent;->hitPoint:Lcom/asha/vrlib/model/MDHitPoint;

    return-object v0
.end method

.method public getHotspot()Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asha/vrlib/model/MDHitEvent;->hotspot:Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    return-object v0
.end method

.method public getRay()Lcom/asha/vrlib/model/MDRay;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/asha/vrlib/model/MDHitEvent;->ray:Lcom/asha/vrlib/model/MDRay;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/asha/vrlib/model/MDHitEvent;->timestamp:J

    return-wide v0
.end method

.method public setHitPoint(Lcom/asha/vrlib/model/MDHitPoint;)V
    .locals 0
    .param p1, "hitPoint"    # Lcom/asha/vrlib/model/MDHitPoint;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/asha/vrlib/model/MDHitEvent;->hitPoint:Lcom/asha/vrlib/model/MDHitPoint;

    .line 53
    return-void
.end method

.method public setHotspot(Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;)V
    .locals 0
    .param p1, "hotspot"    # Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/asha/vrlib/model/MDHitEvent;->hotspot:Lcom/asha/vrlib/plugins/hotspot/IMDHotspot;

    .line 29
    return-void
.end method

.method public setRay(Lcom/asha/vrlib/model/MDRay;)V
    .locals 0
    .param p1, "ray"    # Lcom/asha/vrlib/model/MDRay;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/asha/vrlib/model/MDHitEvent;->ray:Lcom/asha/vrlib/model/MDRay;

    .line 45
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/asha/vrlib/model/MDHitEvent;->timestamp:J

    .line 37
    return-void
.end method
