.class public final Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCurrentAspectRatio:I

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "MeasureHelper"

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mCurrentAspectRatio:I

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 44
    return-void
.end method

.method public static getAspectRatioText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aspectRatio"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 228
    const-string v0, ""

    .line 229
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public doMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onMeasure("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 74
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 73
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v12, 0x5a

    if-eq v11, v12, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v12, 0x10e

    if-ne v11, v12, :cond_1

    .line 76
    :cond_0
    move/from16 v7, p1

    .line 77
    .local v7, "tempSpec":I
    move/from16 p1, p2

    .line 78
    move/from16 p2, v7

    .line 81
    .end local v7    # "tempSpec":I
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    move/from16 v0, p1

    invoke-static {v11, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v8

    .line 82
    .local v8, "width":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    move/from16 v0, p2

    invoke-static {v11, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v2

    .line 83
    .local v2, "height":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mCurrentAspectRatio "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mCurrentAspectRatio:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mCurrentAspectRatio:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 85
    move/from16 v8, p1

    .line 86
    move/from16 v2, p2

    .line 210
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iput v8, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mMeasuredWidth:I

    .line 211
    move-object/from16 v0, p0

    iput v2, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mMeasuredHeight:I

    .line 212
    return-void

    .line 87
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    if-lez v11, :cond_11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    if-lez v11, :cond_11

    .line 88
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 89
    .local v9, "widthSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 90
    .local v10, "widthSpecSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 91
    .local v3, "heightSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 92
    .local v4, "heightSpecSize":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->TAG:Ljava/lang/String;

    const-string v12, "measure size: %d %d %d %d"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/high16 v11, -0x80000000

    if-ne v9, v11, :cond_b

    const/high16 v11, -0x80000000

    if-ne v3, v11, :cond_b

    .line 94
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->TAG:Ljava/lang/String;

    const-string v12, "AT_MOST"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    int-to-float v11, v10

    int-to-float v12, v4

    div-float v6, v11, v12

    .line 97
    .local v6, "specAspectRatio":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mCurrentAspectRatio:I

    packed-switch v11, :pswitch_data_0

    .line 112
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    int-to-float v12, v12

    div-float v1, v11, v12

    .line 113
    .local v1, "displayAspectRatio":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoSarNum:I

    if-lez v11, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoSarDen:I

    if-lez v11, :cond_4

    .line 114
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoSarNum:I

    int-to-float v11, v11

    mul-float/2addr v11, v1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoSarDen:I

    int-to-float v12, v12

    div-float v1, v11, v12

    .line 117
    :cond_4
    :goto_1
    cmpl-float v11, v1, v6

    if-lez v11, :cond_7

    const/4 v5, 0x1

    .line 119
    .local v5, "shouldBeWider":Z
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mCurrentAspectRatio:I

    packed-switch v11, :pswitch_data_1

    .line 146
    :pswitch_0
    if-eqz v5, :cond_a

    .line 148
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 149
    int-to-float v11, v8

    div-float/2addr v11, v1

    float-to-int v2, v11

    goto/16 :goto_0

    .line 99
    .end local v1    # "displayAspectRatio":F
    .end local v5    # "shouldBeWider":Z
    :pswitch_1
    const v1, 0x3fe38e39

    .line 100
    .restart local v1    # "displayAspectRatio":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v12, 0x5a

    if-eq v11, v12, :cond_5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v12, 0x10e

    if-ne v11, v12, :cond_4

    .line 101
    :cond_5
    const/high16 v11, 0x3f800000    # 1.0f

    div-float v1, v11, v1

    goto :goto_1

    .line 104
    .end local v1    # "displayAspectRatio":F
    :pswitch_2
    const v1, 0x3faaaaab

    .line 105
    .restart local v1    # "displayAspectRatio":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v12, 0x5a

    if-eq v11, v12, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v12, 0x10e

    if-ne v11, v12, :cond_4

    .line 106
    :cond_6
    const/high16 v11, 0x3f800000    # 1.0f

    div-float v1, v11, v1

    goto :goto_1

    .line 117
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 123
    .restart local v5    # "shouldBeWider":Z
    :pswitch_3
    if-eqz v5, :cond_8

    .line 125
    move v8, v10

    .line 126
    int-to-float v11, v8

    div-float/2addr v11, v1

    float-to-int v2, v11

    goto/16 :goto_0

    .line 129
    :cond_8
    move v2, v4

    .line 130
    int-to-float v11, v2

    mul-float/2addr v11, v1

    float-to-int v8, v11

    .line 132
    goto/16 :goto_0

    .line 134
    :pswitch_4
    if-eqz v5, :cond_9

    .line 136
    move v2, v4

    .line 137
    int-to-float v11, v2

    mul-float/2addr v11, v1

    float-to-int v8, v11

    goto/16 :goto_0

    .line 140
    :cond_9
    move v8, v10

    .line 141
    int-to-float v11, v8

    div-float/2addr v11, v1

    float-to-int v2, v11

    .line 143
    goto/16 :goto_0

    .line 152
    :cond_a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 153
    int-to-float v11, v2

    mul-float/2addr v11, v1

    float-to-int v8, v11

    goto/16 :goto_0

    .line 157
    .end local v1    # "displayAspectRatio":F
    .end local v5    # "shouldBeWider":Z
    .end local v6    # "specAspectRatio":F
    :cond_b
    const/high16 v11, 0x40000000    # 2.0f

    if-ne v9, v11, :cond_d

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v3, v11, :cond_d

    .line 158
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->TAG:Ljava/lang/String;

    const-string v12, "both EXACTLY"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    move v8, v10

    .line 161
    move v2, v4

    .line 164
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v12, v8

    if-ge v11, v12, :cond_c

    .line 166
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    div-int v8, v11, v12

    goto/16 :goto_0

    .line 167
    :cond_c
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v12, v8

    if-le v11, v12, :cond_2

    .line 169
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v11, v8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    div-int v2, v11, v12

    goto/16 :goto_0

    .line 171
    :cond_d
    const/high16 v11, 0x40000000    # 2.0f

    if-ne v9, v11, :cond_e

    .line 172
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->TAG:Ljava/lang/String;

    const-string v12, "width EXACTLY"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move v8, v10

    .line 175
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v11, v8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    div-int v2, v11, v12

    .line 176
    const/high16 v11, -0x80000000

    if-ne v3, v11, :cond_2

    if-le v2, v4, :cond_2

    .line 178
    move v2, v4

    goto/16 :goto_0

    .line 180
    :cond_e
    const/high16 v11, 0x40000000    # 2.0f

    if-ne v3, v11, :cond_f

    .line 181
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->TAG:Ljava/lang/String;

    const-string v12, "height EXACTLY"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    move v2, v4

    .line 184
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    div-int v8, v11, v12

    .line 185
    const/high16 v11, -0x80000000

    if-ne v9, v11, :cond_2

    if-le v8, v10, :cond_2

    .line 187
    move v8, v10

    goto/16 :goto_0

    .line 190
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->TAG:Ljava/lang/String;

    const-string v12, "neither the width nor the height are fixed, try to use actual video size"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move-object/from16 v0, p0

    iget v8, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    .line 193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    .line 194
    const/high16 v11, -0x80000000

    if-ne v3, v11, :cond_10

    if-le v2, v4, :cond_10

    .line 196
    move v2, v4

    .line 197
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    div-int v8, v11, v12

    .line 199
    :cond_10
    const/high16 v11, -0x80000000

    if-ne v9, v11, :cond_2

    if-le v8, v10, :cond_2

    .line 201
    move v8, v10

    .line 202
    move-object/from16 v0, p0

    iget v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v11, v8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    div-int v2, v11, v12

    goto/16 :goto_0

    .line 206
    .end local v3    # "heightSpecMode":I
    .end local v4    # "heightSpecSize":I
    .end local v9    # "widthSpecMode":I
    .end local v10    # "widthSpecSize":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->TAG:Ljava/lang/String;

    const-string v12, "no size yet, just adopt the given spec sizes"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 119
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mMeasuredWidth:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public setAspectRatio(I)V
    .locals 0
    .param p1, "aspectRatio"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mCurrentAspectRatio:I

    .line 224
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 0
    .param p1, "videoRotationDegree"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoRotationDegree:I

    .line 64
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 0
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoSarNum:I

    .line 59
    iput p2, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoSarDen:I

    .line 60
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoWidth:I

    .line 54
    iput p2, p0, Lcom/rockvr/moonplayer_gvr/media/MeasureHelper;->mVideoHeight:I

    .line 55
    return-void
.end method
