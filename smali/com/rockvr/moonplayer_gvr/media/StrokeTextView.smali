.class public Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;
.super Landroid/widget/TextView;
.source "StrokeTextView.java"


# instance fields
.field private borderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    .line 17
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    .line 18
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    .line 23
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    .line 24
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    .line 30
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    .line 31
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->init()V

    .line 32
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 36
    .local v0, "tp1":Landroid/text/TextPaint;
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 37
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->getGravity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 74
    .local v0, "tt":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 78
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 61
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 62
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 63
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 50
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 51
    .local v0, "tt":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->postInvalidate()V

    .line 55
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 56
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->measure(II)V

    .line 57
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 69
    return-void
.end method
