.class public Lcom/google/vr/vrcore/controller/api/ControllerStates;
.super Ljava/lang/Object;
.source "ControllerStates.java"


# static fields
.field public static final CONNECTED:I = 0x3

.field public static final CONNECTING:I = 0x2

.field public static final DISCONNECTED:I = 0x0

.field public static final SCANNING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 28
    const/16 v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "[UNKNOWN CONTROLLER STATE: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    const-string v0, "DISCONNECTED"

    goto :goto_0

    .line 22
    :pswitch_1
    const-string v0, "SCANNING"

    goto :goto_0

    .line 24
    :pswitch_2
    const-string v0, "CONNECTING"

    goto :goto_0

    .line 26
    :pswitch_3
    const-string v0, "CONNECTED"

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
