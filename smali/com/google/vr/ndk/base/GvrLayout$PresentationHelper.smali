.class Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;
.super Ljava/lang/Object;
.source "GvrLayout.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresentationHelper"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final displayManager:Landroid/hardware/display/DisplayManager;

.field private final displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

.field private externalDisplayName:Ljava/lang/String;

.field private final layout:Landroid/widget/RelativeLayout$LayoutParams;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final originalParent:Landroid/widget/FrameLayout;

.field private presentation:Landroid/app/Presentation;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/google/vr/cardboard/DisplaySynchronizer;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->layout:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1147
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->context:Landroid/content/Context;

    .line 1148
    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->originalParent:Landroid/widget/FrameLayout;

    .line 1149
    iput-object p3, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->view:Landroid/view/View;

    .line 1150
    iput-object p4, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    .line 1151
    iput-object p5, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->externalDisplayName:Ljava/lang/String;

    .line 1152
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 1153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->listeners:Ljava/util/List;

    .line 1154
    return-void
.end method

.method private static detachViewFromParent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1317
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1318
    if-eqz v0, :cond_0

    .line 1319
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1321
    :cond_0
    return-void
.end method

.method private hasCurrentPresentationExpired()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1336
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-nez v1, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidExternalDisplay(Landroid/view/Display;)Z
    .locals 2

    .prologue
    .line 1324
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->externalDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDisplay(Landroid/view/Display;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1261
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1262
    :goto_0
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->hasCurrentPresentationExpired()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1263
    invoke-static {p1, v0}, Lcom/google/vr/cardboard/DisplayUtils;->isSameDisplay(Landroid/view/Display;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1314
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 1261
    goto :goto_0

    .line 1270
    :cond_2
    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    .line 1271
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_3

    .line 1272
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    .line 1273
    iput-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    .line 1276
    :cond_3
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->view:Landroid/view/View;

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->detachViewFromParent(Landroid/view/View;)V

    .line 1278
    if-eqz p1, :cond_5

    .line 1280
    invoke-static {}, Lcom/google/vr/ndk/base/GvrLayout;->access$400()Lcom/google/vr/ndk/base/GvrLayout$PresentationFactory;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1281
    invoke-static {}, Lcom/google/vr/ndk/base/GvrLayout;->access$400()Lcom/google/vr/ndk/base/GvrLayout$PresentationFactory;

    move-result-object v0

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->context:Landroid/content/Context;

    invoke-interface {v0, v3, p1}, Lcom/google/vr/ndk/base/GvrLayout$PresentationFactory;->create(Landroid/content/Context;Landroid/view/Display;)Landroid/app/Presentation;

    move-result-object v0

    .line 1282
    :goto_1
    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    .line 1283
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->view:Landroid/view/View;

    iget-object v4, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->layout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3, v4}, Landroid/app/Presentation;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1285
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    :goto_2
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_6

    .line 1300
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1298
    :goto_3
    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->setDisplay(Landroid/view/Display;)V

    .line 1304
    if-eqz v2, :cond_7

    .line 1305
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;

    .line 1306
    invoke-interface {v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;->onPresentationStopped()V

    goto :goto_4

    .line 1282
    :cond_4
    new-instance v0, Landroid/app/Presentation;

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    goto :goto_1

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    const-string v3, "GvrLayout"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x39

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Attaching Cardboard View to the external display failed: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->cancel()V

    .line 1289
    iput-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    .line 1290
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->view:Landroid/view/View;

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->detachViewFromParent(Landroid/view/View;)V

    .line 1295
    :cond_5
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->originalParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1301
    :cond_6
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    goto :goto_3

    .line 1309
    :cond_7
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;

    .line 1311
    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v2}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;->onPresentationStarted(Landroid/view/Display;)V

    goto :goto_5
.end method


# virtual methods
.method public addListener(Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;)V
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;->onPresentationStarted(Landroid/view/Display;)V

    goto :goto_0
.end method

.method public isPresenting()Z
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->setDisplay(Landroid/view/Display;)V

    .line 1208
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 2

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1226
    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->isValidExternalDisplay(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1227
    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->setDisplay(Landroid/view/Display;)V

    .line 1229
    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    .prologue
    .line 1242
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->setDisplay(Landroid/view/Display;)V

    .line 1239
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1164
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1169
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getExternalDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->externalDisplayName:Ljava/lang/String;

    .line 1170
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->externalDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1171
    invoke-direct {p0, v1}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->setDisplay(Landroid/view/Display;)V

    .line 1187
    :goto_0
    return-void

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1180
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 1181
    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->isValidExternalDisplay(Landroid/view/Display;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1186
    :goto_2
    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->setDisplay(Landroid/view/Display;)V

    goto :goto_0

    .line 1180
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1194
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->cancel()V

    .line 1196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->presentation:Landroid/app/Presentation;

    .line 1198
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayout$PresentationHelper;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;

    .line 1199
    invoke-interface {v0}, Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;->onPresentationStopped()V

    goto :goto_0

    .line 1202
    :cond_0
    return-void
.end method
