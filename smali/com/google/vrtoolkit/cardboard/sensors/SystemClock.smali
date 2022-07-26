.class public Lcom/google/vrtoolkit/cardboard/sensors/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/google/vrtoolkit/cardboard/sensors/Clock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public nanoTime()J
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
