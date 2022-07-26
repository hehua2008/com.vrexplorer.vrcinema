.class public Lcom/asha/vrlib/plugins/MDWidgetPlugin;
.super Lcom/asha/vrlib/plugins/MDHotspotPlugin;
.source "MDWidgetPlugin.java"


# static fields
.field private static final STATUS_FOCUSED:I = 0x1

.field private static final STATUS_NORMAL:I


# instance fields
.field private mChecked:Z

.field private mCheckedStatusList:[I

.field private mCurrentStatus:I

.field private mStatusList:[I


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/model/MDHotspotBuilder;)V
    .locals 1
    .param p1, "builder"    # Lcom/asha/vrlib/model/MDHotspotBuilder;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/asha/vrlib/plugins/MDHotspotPlugin;-><init>(Lcom/asha/vrlib/model/MDHotspotBuilder;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mCurrentStatus:I

    .line 28
    iget-object v0, p1, Lcom/asha/vrlib/model/MDHotspotBuilder;->statusList:[I

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mStatusList:[I

    .line 29
    iget-object v0, p1, Lcom/asha/vrlib/model/MDHotspotBuilder;->checkedStatusList:[I

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mCheckedStatusList:[I

    .line 30
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mStatusList:[I

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mStatusList:[I

    .line 33
    :cond_0
    return-void

    .line 31
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private updateStatus()V
    .locals 3

    .prologue
    .line 60
    iget-boolean v1, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mChecked:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mCheckedStatusList:[I

    .line 61
    .local v0, "statusList":[I
    :goto_0
    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mStatusList:[I

    .line 65
    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mCurrentStatus:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 66
    iget v1, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mCurrentStatus:I

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->useTexture(I)V

    .line 69
    :cond_1
    return-void

    .line 60
    .end local v0    # "statusList":[I
    :cond_2
    iget-object v0, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mStatusList:[I

    goto :goto_0
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mChecked:Z

    return v0
.end method

.method public onEyeHitIn(Lcom/asha/vrlib/model/MDHitEvent;)V
    .locals 1
    .param p1, "hitEvent"    # Lcom/asha/vrlib/model/MDHitEvent;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/asha/vrlib/plugins/MDHotspotPlugin;->onEyeHitIn(Lcom/asha/vrlib/model/MDHitEvent;)V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mCurrentStatus:I

    .line 49
    invoke-direct {p0}, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->updateStatus()V

    .line 50
    return-void
.end method

.method public onEyeHitOut(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/asha/vrlib/plugins/MDHotspotPlugin;->onEyeHitOut(J)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mCurrentStatus:I

    .line 56
    invoke-direct {p0}, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->updateStatus()V

    .line 57
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->mChecked:Z

    .line 37
    invoke-direct {p0}, Lcom/asha/vrlib/plugins/MDWidgetPlugin;->updateStatus()V

    .line 38
    return-void
.end method
