.class public Lcom/asha/vrlib/strategy/projection/MultiFishEyeProjection;
.super Lcom/asha/vrlib/strategy/projection/SphereProjection;
.source "MultiFishEyeProjection.java"


# instance fields
.field private direction:Lcom/asha/vrlib/common/MDDirection;

.field private radius:F


# direct methods
.method public constructor <init>(FLcom/asha/vrlib/common/MDDirection;)V
    .locals 0
    .param p1, "radius"    # F
    .param p2, "direction"    # Lcom/asha/vrlib/common/MDDirection;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/asha/vrlib/strategy/projection/SphereProjection;-><init>()V

    .line 18
    iput p1, p0, Lcom/asha/vrlib/strategy/projection/MultiFishEyeProjection;->radius:F

    .line 19
    iput-object p2, p0, Lcom/asha/vrlib/strategy/projection/MultiFishEyeProjection;->direction:Lcom/asha/vrlib/common/MDDirection;

    .line 20
    return-void
.end method


# virtual methods
.method public buildMainPlugin(Lcom/asha/vrlib/model/MDMainPluginBuilder;)Lcom/asha/vrlib/plugins/MDAbsPlugin;
    .locals 3
    .param p1, "builder"    # Lcom/asha/vrlib/model/MDMainPluginBuilder;

    .prologue
    .line 24
    new-instance v0, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;

    iget v1, p0, Lcom/asha/vrlib/strategy/projection/MultiFishEyeProjection;->radius:F

    iget-object v2, p0, Lcom/asha/vrlib/strategy/projection/MultiFishEyeProjection;->direction:Lcom/asha/vrlib/common/MDDirection;

    invoke-direct {v0, p1, v1, v2}, Lcom/asha/vrlib/plugins/MDMultiFishEyePlugin;-><init>(Lcom/asha/vrlib/model/MDMainPluginBuilder;FLcom/asha/vrlib/common/MDDirection;)V

    return-object v0
.end method
