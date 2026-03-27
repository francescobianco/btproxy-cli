.class Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$1;
.super Ljava/lang/Object;
.source "DrinkWaterHistoryActivity2.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_e

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->startY:F

    .line 204
    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5e

    .line 205
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    iget p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->startY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5e

    .line 206
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->access$000(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTouch:\u6ed1\u52a8\u62e6\u622a-- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    iget v1, v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->startY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->startY:F

    .line 208
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    :cond_5e
    const/4 p1, 0x0

    return p1
.end method
