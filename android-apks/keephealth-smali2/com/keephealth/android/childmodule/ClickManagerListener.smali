.class public abstract Lcom/keephealth/android/childmodule/ClickManagerListener;
.super Ljava/lang/Object;
.source "ClickManagerListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final DELAY_TIME:J

.field private lastTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 13
    iput-wide v0, p0, Lcom/keephealth/android/childmodule/ClickManagerListener;->DELAY_TIME:J

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/keephealth/android/childmodule/ClickManagerListener;->lastTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 18
    iget-wide v2, p0, Lcom/keephealth/android/childmodule/ClickManagerListener;->lastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 19
    iput-wide v0, p0, Lcom/keephealth/android/childmodule/ClickManagerListener;->lastTime:J

    .line 20
    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/ClickManagerListener;->onClickL(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method protected abstract onClickL(Landroid/view/View;)V
.end method
