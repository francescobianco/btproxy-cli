.class public final Lcom/keephealth/android/views/pullscrollview/OverscrollHelper;
.super Ljava/lang/Object;
.source "OverscrollHelper.java"


# static fields
.field static final DEFAULT_OVERSCROLL_SCALE:F = 1.0f

.field static final LOG_TAG:Ljava/lang/String; = "OverscrollHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAndroidOverScrollEnabled(Landroid/view/View;)Z
    .registers 2

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static overScrollBy(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;IIIIIIFZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase<",
            "*>;IIIIIIFZ)V"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/OverscrollHelper$1;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 115
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getScrollY()I

    move-result v0

    move v1, p3

    move v2, p4

    goto :goto_1c

    .line 109
    :cond_16
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getScrollX()I

    move-result v0

    move v1, p1

    move v2, p2

    .line 121
    :goto_1c
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isPullToRefreshOverScrollEnabled()Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isRefreshing()Z

    move-result v3

    if-nez v3, :cond_e5

    .line 122
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getMode()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_d4

    if-nez p8, :cond_d4

    if-eqz v1, :cond_d4

    add-int/2addr v1, v2

    .line 130
    new-instance p8, Ljava/lang/StringBuilder;

    const-string v2, "OverScroll. DeltaX: "

    invoke-direct {p8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p8, ", ScrollX: "

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", DeltaY: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", ScrollY: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", NewY: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", ScrollRange: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", CurrentScroll: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OverscrollHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    rsub-int/lit8 p1, p6, 0x0

    if-ge v1, p1, :cond_a3

    .line 138
    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_e5

    if-nez v0, :cond_9b

    .line 142
    sget-object p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->OVERSCROLLING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    new-array p2, v5, [Z

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setState(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;[Z)V

    :cond_9b
    add-int/2addr v0, v1

    int-to-float p1, v0

    mul-float/2addr p7, p1

    float-to-int p1, p7

    .line 145
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_e5

    :cond_a3
    add-int p1, p5, p6

    if-le v1, p1, :cond_bf

    .line 150
    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_e5

    if-nez v0, :cond_b6

    .line 154
    sget-object p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->OVERSCROLLING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    new-array p2, v5, [Z

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setState(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;[Z)V

    :cond_b6
    add-int/2addr v0, v1

    sub-int/2addr v0, p5

    int-to-float p1, v0

    mul-float/2addr p7, p1

    float-to-int p1, p7

    .line 157
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_e5

    .line 159
    :cond_bf
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, p6, :cond_cc

    sub-int/2addr v1, p5

    .line 160
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, p6, :cond_e5

    .line 162
    :cond_cc
    sget-object p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    new-array p2, v5, [Z

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setState(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;[Z)V

    goto :goto_e5

    :cond_d4
    if-eqz p8, :cond_e5

    .line 164
    sget-object p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->OVERSCROLLING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getState()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    move-result-object p2

    if-ne p1, p2, :cond_e5

    .line 168
    sget-object p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    new-array p2, v5, [Z

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setState(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;[Z)V

    :cond_e5
    :goto_e5
    return-void
.end method

.method public static overScrollBy(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;IIIIIZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase<",
            "*>;IIIIIZ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, p6

    .line 75
    invoke-static/range {v0 .. v8}, Lcom/keephealth/android/views/pullscrollview/OverscrollHelper;->overScrollBy(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;IIIIIIFZ)V

    return-void
.end method

.method public static overScrollBy(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;IIIIZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase<",
            "*>;IIIIZ)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 51
    invoke-static/range {v0 .. v6}, Lcom/keephealth/android/views/pullscrollview/OverscrollHelper;->overScrollBy(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;IIIIIZ)V

    return-void
.end method
