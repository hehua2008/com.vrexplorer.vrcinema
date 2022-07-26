.class public final Lcom/google/common/logging/nano/Vr$VREvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field private audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

.field private cohort:Ljava/lang/String;

.field private cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

.field private durationMs:Ljava/lang/Long;

.field private earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

.field private embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

.field private gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

.field private headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

.field private installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field private jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

.field private keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

.field private launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

.field private lifetimeCountBucket:Ljava/lang/Integer;

.field private lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

.field private performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

.field private photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

.field private qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

.field private renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

.field private sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

.field private sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

.field private streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

.field private vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

.field private vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12173
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 13178
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    .line 13179
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 13180
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    .line 13181
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 13182
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 13183
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 13184
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    .line 13185
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 13186
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 13187
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 13188
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 13189
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 13190
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 13191
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 13192
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 13193
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 13194
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 13195
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 13196
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 13197
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 13198
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 13199
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 13200
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 13201
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 13202
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cachedSize:I

    .line 12175
    return-void
.end method

.method private clone()Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 4

    .prologue
    .line 12209
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12213
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    if-eqz v1, :cond_0

    .line 12214
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    .line 12216
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_1

    .line 12217
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 12219
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 12220
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$Application;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 12221
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 12222
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 12223
    iget-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v3

    aput-object v3, v2, v1

    .line 12221
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12210
    :catch_0
    move-exception v0

    .line 12211
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 12227
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-eqz v1, :cond_4

    .line 12228
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 12230
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-eqz v1, :cond_5

    .line 12231
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->clone()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 12233
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-eqz v1, :cond_6

    .line 12234
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 12236
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-eqz v1, :cond_7

    .line 12237
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 12239
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-eqz v1, :cond_8

    .line 12240
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 12242
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-eqz v1, :cond_9

    .line 12243
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 12245
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-eqz v1, :cond_a

    .line 12246
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 12248
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-eqz v1, :cond_b

    .line 12249
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 12251
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-eqz v1, :cond_c

    .line 12252
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Launcher;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 12254
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-eqz v1, :cond_d

    .line 12255
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 12257
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-eqz v1, :cond_e

    .line 12258
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 12260
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-eqz v1, :cond_f

    .line 12261
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 12263
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-eqz v1, :cond_10

    .line 12264
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 12266
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-eqz v1, :cond_11

    .line 12267
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 12269
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-eqz v1, :cond_12

    .line 12270
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 12272
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v1, :cond_13

    .line 12273
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 12275
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v1, :cond_14

    .line 12276
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 12278
    :cond_14
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-eqz v1, :cond_15

    .line 12279
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 12281
    :cond_15
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    .line 12370
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 12371
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    if-eqz v1, :cond_0

    .line 12372
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    .line 12373
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12375
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_1

    .line 12376
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 12377
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12379
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 12380
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    .line 12381
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12383
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 12384
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 12385
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    aget-object v2, v2, v0

    .line 12386
    if-eqz v2, :cond_3

    .line 12387
    const/4 v3, 0x4

    .line 12388
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 12384
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 12392
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-eqz v1, :cond_6

    .line 12393
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 12394
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12396
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-eqz v1, :cond_7

    .line 12397
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 12398
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12400
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 12401
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    .line 12402
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12404
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 12405
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    .line 12406
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12408
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-eqz v1, :cond_a

    .line 12409
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 12410
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12412
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-eqz v1, :cond_b

    .line 12413
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 12414
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12416
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-eqz v1, :cond_c

    .line 12417
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 12418
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12420
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-eqz v1, :cond_d

    .line 12421
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 12422
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12424
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-eqz v1, :cond_e

    .line 12425
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 12426
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12428
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-eqz v1, :cond_f

    .line 12429
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 12430
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12432
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-eqz v1, :cond_10

    .line 12433
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 12434
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12436
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-eqz v1, :cond_11

    .line 12437
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 12438
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12440
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-eqz v1, :cond_12

    .line 12441
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 12442
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12444
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-eqz v1, :cond_13

    .line 12445
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 12446
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12448
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-eqz v1, :cond_14

    .line 12449
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 12450
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12452
    :cond_14
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-eqz v1, :cond_15

    .line 12453
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 12454
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12456
    :cond_15
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-eqz v1, :cond_16

    .line 12457
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 12458
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12460
    :cond_16
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v1, :cond_17

    .line 12461
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 12462
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12464
    :cond_17
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v1, :cond_18

    .line 12465
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 12466
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12468
    :cond_18
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-eqz v1, :cond_19

    .line 12469
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 12470
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12472
    :cond_19
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 10
    .line 13480
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 13481
    sparse-switch v0, :sswitch_data_0

    .line 13485
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13486
    :sswitch_0
    return-object p0

    .line 13491
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    if-nez v0, :cond_1

    .line 13492
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    .line 13494
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 13498
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v0, :cond_2

    .line 13499
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 13501
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 13505
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    goto :goto_0

    .line 13509
    :sswitch_4
    const/16 v0, 0x22

    .line 13510
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 13511
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v0, :cond_4

    move v0, v1

    .line 13512
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 13514
    if-eqz v0, :cond_3

    .line 13515
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13517
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 13518
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    aput-object v3, v2, v0

    .line 13519
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 13520
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 13517
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13511
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v0, v0

    goto :goto_1

    .line 13523
    :cond_5
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    aput-object v3, v2, v0

    .line 13524
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 13525
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    goto :goto_0

    .line 13529
    :sswitch_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-nez v0, :cond_6

    .line 13530
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 13532
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13536
    :sswitch_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-nez v0, :cond_7

    .line 13537
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 13539
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13543
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    goto/16 :goto_0

    .line 13547
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 13548
    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    .line 13558
    :sswitch_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 13564
    :sswitch_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-nez v0, :cond_8

    .line 13565
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 13567
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13571
    :sswitch_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-nez v0, :cond_9

    .line 13572
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 13574
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13578
    :sswitch_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-nez v0, :cond_a

    .line 13579
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 13581
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13585
    :sswitch_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-nez v0, :cond_b

    .line 13586
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 13588
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13592
    :sswitch_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-nez v0, :cond_c

    .line 13593
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 13595
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13599
    :sswitch_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-nez v0, :cond_d

    .line 13600
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 13602
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13606
    :sswitch_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-nez v0, :cond_e

    .line 13607
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Launcher;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 13609
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13613
    :sswitch_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-nez v0, :cond_f

    .line 13614
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 13616
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13620
    :sswitch_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-nez v0, :cond_10

    .line 13621
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 13623
    :cond_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13627
    :sswitch_13
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-nez v0, :cond_11

    .line 13628
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 13630
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13634
    :sswitch_14
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-nez v0, :cond_12

    .line 13635
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 13637
    :cond_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13641
    :sswitch_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-nez v0, :cond_13

    .line 13642
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 13644
    :cond_13
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13648
    :sswitch_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-nez v0, :cond_14

    .line 13649
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 13651
    :cond_14
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13655
    :sswitch_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-nez v0, :cond_15

    .line 13656
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 13658
    :cond_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13662
    :sswitch_18
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-nez v0, :cond_16

    .line 13663
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 13665
    :cond_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13669
    :sswitch_19
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-nez v0, :cond_17

    .line 13670
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 13672
    :cond_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 13481
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_a
        0x52 -> :sswitch_b
        0x5a -> :sswitch_c
        0x62 -> :sswitch_d
        0x6a -> :sswitch_e
        0x72 -> :sswitch_f
        0x7a -> :sswitch_10
        0x82 -> :sswitch_11
        0x8a -> :sswitch_12
        0x92 -> :sswitch_13
        0x9a -> :sswitch_14
        0xa2 -> :sswitch_15
        0xaa -> :sswitch_16
        0xb2 -> :sswitch_17
        0xba -> :sswitch_18
        0xc2 -> :sswitch_19
    .end sparse-switch

    .line 13548
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_9
        0x2 -> :sswitch_9
        0x3 -> :sswitch_9
        0x4 -> :sswitch_9
        0x5 -> :sswitch_9
        0x6 -> :sswitch_9
        0xb -> :sswitch_9
        0x15 -> :sswitch_9
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12288
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    if-eqz v0, :cond_0

    .line 12289
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12291
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_1

    .line 12292
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12294
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 12295
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 12297
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 12298
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 12299
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    aget-object v1, v1, v0

    .line 12300
    if-eqz v1, :cond_3

    .line 12301
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12298
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12305
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-eqz v0, :cond_5

    .line 12306
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12308
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-eqz v0, :cond_6

    .line 12309
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12311
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 12312
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12314
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 12315
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12317
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-eqz v0, :cond_9

    .line 12318
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12320
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-eqz v0, :cond_a

    .line 12321
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12323
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-eqz v0, :cond_b

    .line 12324
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12326
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-eqz v0, :cond_c

    .line 12327
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12329
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-eqz v0, :cond_d

    .line 12330
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12332
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-eqz v0, :cond_e

    .line 12333
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12335
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-eqz v0, :cond_f

    .line 12336
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12338
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-eqz v0, :cond_10

    .line 12339
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12341
    :cond_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-eqz v0, :cond_11

    .line 12342
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12344
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-eqz v0, :cond_12

    .line 12345
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12347
    :cond_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-eqz v0, :cond_13

    .line 12348
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12350
    :cond_13
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-eqz v0, :cond_14

    .line 12351
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12353
    :cond_14
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-eqz v0, :cond_15

    .line 12354
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12356
    :cond_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v0, :cond_16

    .line 12357
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12359
    :cond_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v0, :cond_17

    .line 12360
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12362
    :cond_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-eqz v0, :cond_18

    .line 12363
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12365
    :cond_18
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 12366
    return-void
.end method
