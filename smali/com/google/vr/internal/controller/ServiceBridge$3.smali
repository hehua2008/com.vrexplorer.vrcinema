.class Lcom/google/vr/internal/controller/ServiceBridge$3;
.super Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;
.source "ServiceBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/internal/controller/ServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/internal/controller/ServiceBridge;


# direct methods
.method constructor <init>(Lcom/google/vr/internal/controller/ServiceBridge;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/vr/internal/controller/ServiceBridge$3;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public deprecatedOnControllerAccelEvent(Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->obtain()Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    move-result-object v0

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 219
    invoke-virtual {p1, v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 220
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 221
    invoke-virtual {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->addAccelEvent()Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 222
    iget-object v2, p0, Lcom/google/vr/internal/controller/ServiceBridge$3;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-static {v2}, Lcom/google/vr/internal/controller/ServiceBridge;->access$300(Lcom/google/vr/internal/controller/ServiceBridge;)Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 223
    invoke-virtual {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->recycle()V

    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 225
    return-void
.end method

.method public deprecatedOnControllerButtonEvent(Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->obtain()Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    move-result-object v0

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 233
    invoke-virtual {p1, v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 234
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 235
    invoke-virtual {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->addButtonEvent()Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 236
    iget-object v2, p0, Lcom/google/vr/internal/controller/ServiceBridge$3;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-static {v2}, Lcom/google/vr/internal/controller/ServiceBridge;->access$300(Lcom/google/vr/internal/controller/ServiceBridge;)Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 237
    invoke-virtual {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->recycle()V

    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 239
    return-void
.end method

.method public deprecatedOnControllerButtonEventV1(Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;)Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public deprecatedOnControllerGyroEvent(Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->obtain()Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    move-result-object v0

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 247
    invoke-virtual {p1, v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 248
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 249
    invoke-virtual {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->addGyroEvent()Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 250
    iget-object v2, p0, Lcom/google/vr/internal/controller/ServiceBridge$3;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-static {v2}, Lcom/google/vr/internal/controller/ServiceBridge;->access$300(Lcom/google/vr/internal/controller/ServiceBridge;)Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 251
    invoke-virtual {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->recycle()V

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    return-void
.end method

.method public deprecatedOnControllerOrientationEvent(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->obtain()Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    move-result-object v0

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 262
    invoke-virtual {p1, v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 263
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 264
    invoke-virtual {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->addOrientationEvent()Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 265
    iget-object v2, p0, Lcom/google/vr/internal/controller/ServiceBridge$3;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-static {v2}, Lcom/google/vr/internal/controller/ServiceBridge;->access$300(Lcom/google/vr/internal/controller/ServiceBridge;)Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 266
    invoke-virtual {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->recycle()V

    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 268
    return-void
.end method

.method public deprecatedOnControllerTouchEvent(Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->obtain()Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    move-result-object v0

    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 276
    invoke-virtual {p1, v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 277
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 278
    invoke-virtual {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->addTouchEvent()Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 279
    iget-object v2, p0, Lcom/google/vr/internal/controller/ServiceBridge$3;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-static {v2}, Lcom/google/vr/internal/controller/ServiceBridge;->access$300(Lcom/google/vr/internal/controller/ServiceBridge;)Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 280
    invoke-virtual {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->recycle()V

    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 282
    return-void
.end method

.method public getApiVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    const/16 v0, 0xb

    return v0
.end method

.method public getOptions()Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge$3;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-static {v0}, Lcom/google/vr/internal/controller/ServiceBridge;->access$200(Lcom/google/vr/internal/controller/ServiceBridge;)Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    move-result-object v0

    return-object v0
.end method

.method public onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge$3;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-static {v0}, Lcom/google/vr/internal/controller/ServiceBridge;->access$300(Lcom/google/vr/internal/controller/ServiceBridge;)Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 193
    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->recycle()V

    .line 194
    return-void
.end method

.method public onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge$3;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-static {v0}, Lcom/google/vr/internal/controller/ServiceBridge;->access$300(Lcom/google/vr/internal/controller/ServiceBridge;)Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V

    .line 200
    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->recycle()V

    .line 201
    return-void
.end method

.method public onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge$3;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-static {v0}, Lcom/google/vr/internal/controller/ServiceBridge;->access$300(Lcom/google/vr/internal/controller/ServiceBridge;)Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V

    .line 206
    return-void
.end method

.method public onControllerStateChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/vr/internal/controller/ServiceBridge$3;->this$0:Lcom/google/vr/internal/controller/ServiceBridge;

    invoke-static {v0}, Lcom/google/vr/internal/controller/ServiceBridge;->access$300(Lcom/google/vr/internal/controller/ServiceBridge;)Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;->onControllerStateChanged(II)V

    .line 187
    return-void
.end method
