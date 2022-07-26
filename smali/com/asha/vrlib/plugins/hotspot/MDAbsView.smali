.class public abstract Lcom/asha/vrlib/plugins/hotspot/MDAbsView;
.super Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;
.source "MDAbsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;
    }
.end annotation


# instance fields
.field private mAttachedView:Landroid/view/View;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mInvalidate:Z

.field private mLayoutParams:Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

.field private mTexture:Lcom/asha/vrlib/texture/MD360Texture;

.field private mTouchStatus:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;


# direct methods
.method public constructor <init>(Lcom/asha/vrlib/model/MDViewBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/asha/vrlib/model/MDViewBuilder;

    .prologue
    .line 49
    iget-object v1, p1, Lcom/asha/vrlib/model/MDViewBuilder;->builderDelegate:Lcom/asha/vrlib/model/MDPluginBuilder;

    invoke-direct {p0, v1}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;-><init>(Lcom/asha/vrlib/model/MDPluginBuilder;)V

    .line 50
    iget-object v1, p1, Lcom/asha/vrlib/model/MDViewBuilder;->attachedView:Landroid/view/View;

    iput-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    .line 51
    iget-object v1, p1, Lcom/asha/vrlib/model/MDViewBuilder;->layoutParams:Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

    iput-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mLayoutParams:Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

    .line 52
    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    iget-object v2, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mLayoutParams:Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mLayoutParams:Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

    iget v1, v1, Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;->width:I

    iget-object v2, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mLayoutParams:Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

    iget v2, v2, Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->requestLayout()V

    .line 62
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/asha/vrlib/plugins/hotspot/MDAbsView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/asha/vrlib/plugins/hotspot/MDAbsView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public castAttachedView(Ljava/lang/Class;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "param clz can\'t be null."

    invoke-static {p1, v0}, Lcom/asha/vrlib/common/VRUtil;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getAttachedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    return-object v0
.end method

.method protected initInGL(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->initInGL(Landroid/content/Context;)V

    .line 100
    new-instance v0, Lcom/asha/vrlib/texture/MD360BitmapTexture;

    new-instance v1, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$1;

    invoke-direct {v1, p0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$1;-><init>(Lcom/asha/vrlib/plugins/hotspot/MDAbsView;)V

    invoke-direct {v0, v1}, Lcom/asha/vrlib/texture/MD360BitmapTexture;-><init>(Lcom/asha/vrlib/MDVRLibrary$IBitmapProvider;)V

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    .line 108
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360Texture;->create()V

    .line 109
    return-void
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v0, "invalidate must called in main thread."

    invoke-static {v0}, Lcom/asha/vrlib/common/VRUtil;->checkMainThread(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mLayoutParams:Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

    const-string v1, "layout params can\'t be null"

    invoke-static {v0, v1}, Lcom/asha/vrlib/common/VRUtil;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    const-string v1, "attached view can\'t be null"

    invoke-static {v0, v1}, Lcom/asha/vrlib/common/VRUtil;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 74
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mInvalidate:Z

    goto :goto_0
.end method

.method public onEyeHitIn(Lcom/asha/vrlib/model/MDHitEvent;)V
    .locals 10
    .param p1, "hitEvent"    # Lcom/asha/vrlib/model/MDHitEvent;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->onEyeHitIn(Lcom/asha/vrlib/model/MDHitEvent;)V

    .line 133
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDHitEvent;->getHitPoint()Lcom/asha/vrlib/model/MDHitPoint;

    move-result-object v9

    .line 134
    .local v9, "point":Lcom/asha/vrlib/model/MDHitPoint;
    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mTouchStatus:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    sget-object v1, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;->NOP:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    if-ne v0, v1, :cond_2

    const/16 v4, 0x9

    .line 138
    .local v4, "action":I
    :goto_1
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9}, Lcom/asha/vrlib/model/MDHitPoint;->getU()F

    move-result v2

    mul-float/2addr v1, v2

    add-float v5, v0, v1

    .line 139
    .local v5, "x":F
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9}, Lcom/asha/vrlib/model/MDHitPoint;->getV()F

    move-result v2

    mul-float/2addr v1, v2

    add-float v6, v0, v1

    .line 141
    .local v6, "y":F
    invoke-virtual {p1}, Lcom/asha/vrlib/model/MDHitEvent;->getTimestamp()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 142
    .local v8, "motionEvent":Landroid/view/MotionEvent;
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 143
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 144
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 145
    sget-object v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;->DOWN:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mTouchStatus:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    .line 147
    invoke-virtual {p0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->invalidate()V

    goto :goto_0

    .line 137
    .end local v4    # "action":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v8    # "motionEvent":Landroid/view/MotionEvent;
    :cond_2
    const/4 v4, 0x7

    goto :goto_1
.end method

.method public onEyeHitOut(J)V
    .locals 9
    .param p1, "timestamp"    # J

    .prologue
    const/4 v5, 0x0

    .line 152
    invoke-super {p0, p1, p2}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->onEyeHitOut(J)V

    .line 153
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mTouchStatus:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    sget-object v1, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;->DOWN:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    if-ne v0, v1, :cond_0

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v0, p1

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 155
    .local v8, "motionEvent":Landroid/view/MotionEvent;
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 156
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 157
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 159
    .end local v8    # "motionEvent":Landroid/view/MotionEvent;
    :cond_0
    sget-object v0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;->NOP:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    iput-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mTouchStatus:Lcom/asha/vrlib/plugins/hotspot/MDAbsView$TouchStatus;

    .line 161
    invoke-virtual {p0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->invalidate()V

    .line 162
    return-void
.end method

.method public renderer(IIILcom/asha/vrlib/MD360Director;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "director"    # Lcom/asha/vrlib/MD360Director;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-boolean v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mInvalidate:Z

    if-eqz v0, :cond_2

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mInvalidate:Z

    .line 119
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360Texture;->notifyChanged()V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->program:Lcom/asha/vrlib/MD360Program;

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/texture/MD360Texture;->texture(Lcom/asha/vrlib/MD360Program;)Z

    .line 124
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mTexture:Lcom/asha/vrlib/texture/MD360Texture;

    invoke-virtual {v0}, Lcom/asha/vrlib/texture/MD360Texture;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Lcom/asha/vrlib/plugins/hotspot/MDAbsHotspot;->renderer(IIILcom/asha/vrlib/MD360Director;)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "requestLayout must called in main thread."

    invoke-static {v0}, Lcom/asha/vrlib/common/VRUtil;->checkMainThread(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mLayoutParams:Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

    const-string v1, "layout params can\'t be null"

    invoke-static {v0, v1}, Lcom/asha/vrlib/common/VRUtil;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    const-string v1, "attached view can\'t be null"

    invoke-static {v0, v1}, Lcom/asha/vrlib/common/VRUtil;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mLayoutParams:Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

    iget v1, v1, Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;->width:I

    .line 88
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mLayoutParams:Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;

    iget v2, v2, Lcom/asha/vrlib/plugins/hotspot/MDLayoutParams;->height:I

    .line 89
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 91
    iget-object v0, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    iget-object v1, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->mAttachedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 93
    invoke-virtual {p0}, Lcom/asha/vrlib/plugins/hotspot/MDAbsView;->invalidate()V

    goto :goto_0
.end method
