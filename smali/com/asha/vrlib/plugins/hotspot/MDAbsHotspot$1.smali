.class Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot$1;
.super Lcom/asha/vrlib/model/MDHitPoint;
.source "MDAbsHotspot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot$1;->this$0:Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;

    invoke-direct {p0}, Lcom/asha/vrlib/model/MDHitPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public getV()F
    .locals 2

    .prologue
    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-super {p0}, Lcom/asha/vrlib/model/MDHitPoint;->getV()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method
