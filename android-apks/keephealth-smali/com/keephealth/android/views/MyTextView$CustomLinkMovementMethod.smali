.class public Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "MyTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/MyTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomLinkMovementMethod"
.end annotation


# static fields
.field static sInstance:Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;


# instance fields
.field x1:F

.field x2:F

.field y1:F

.field y2:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->x1:F

    .line 55
    iput v0, p0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->x2:F

    .line 56
    iput v0, p0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->y1:F

    .line 57
    iput v0, p0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->y2:F

    return-void
.end method

.method public static getInstance()Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;
    .registers 1

    .line 115
    sget-object v0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->sInstance:Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;

    if-nez v0, :cond_b

    .line 116
    new-instance v0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;

    invoke-direct {v0}, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->sInstance:Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;

    .line 118
    :cond_b
    sget-object v0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->sInstance:Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 12

    .line 62
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_9b

    .line 66
    :cond_9
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 67
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 69
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 70
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 72
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 73
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 75
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 76
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    int-to-float v2, v2

    .line 77
    invoke-virtual {v4, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 79
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_72

    .line 83
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->x2:F

    .line 84
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->y2:F

    .line 85
    iget v5, p0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->y1:F

    sub-float v6, v5, v4

    const/high16 v7, 0x42480000    # 50.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_61

    .line 86
    # getter for: Lcom/keephealth/android/views/MyTextView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/views/MyTextView;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u5411\u4e0a\u6ed1"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-array v2, v3, [Landroid/text/style/ClickableSpan;

    goto :goto_7e

    :cond_61
    sub-float/2addr v4, v5

    cmpl-float v4, v4, v7

    if-lez v4, :cond_7e

    .line 89
    # getter for: Lcom/keephealth/android/views/MyTextView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/views/MyTextView;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u5411\u4e0b\u6ed1"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-array v2, v3, [Landroid/text/style/ClickableSpan;

    goto :goto_7e

    .line 94
    :cond_72
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->x1:F

    .line 95
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;->y1:F

    .line 98
    :cond_7e
    :goto_7e
    array-length v4, v2

    if-eqz v4, :cond_98

    if-ne v0, v1, :cond_9b

    .line 100
    aget-object p3, v2, v3

    .line 101
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    aget-object v0, v2, v3

    .line 102
    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 100
    invoke-static {p2, p3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 103
    aget-object p2, v2, v3

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    return v1

    .line 107
    :cond_98
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 111
    :cond_9b
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
