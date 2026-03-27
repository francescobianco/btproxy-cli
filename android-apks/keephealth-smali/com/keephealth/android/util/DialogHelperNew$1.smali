.class Lcom/keephealth/android/util/DialogHelperNew$1;
.super Ljava/lang/Object;
.source "DialogHelperNew.java"

# interfaces
.implements Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/DialogHelperNew;->showWheelSportTargetTypeDialog(Landroid/content/Context;I[Ljava/lang/String;ILjava/util/List;ILcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$targetValueList:Ljava/util/List;

.field final synthetic val$type:I

.field final synthetic val$wv_task_type3:Lcom/keephealth/android/views/wheel/NewWheelView2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/wheel/NewWheelView2;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 660
    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$wv_task_type3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    iput-object p2, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$targetValueList:Ljava/util/List;

    iput p3, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/keephealth/android/views/wheel/NewWheelView2;II)V
    .registers 6

    .line 663
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onChanged: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u6ed1\u52a8\u9009\u62e9\u5668"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$wv_task_type3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    new-instance p2, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$targetValueList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x64

    invoke-direct {p2, v0, v1}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 666
    iget p1, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$type:I

    const/4 p2, 0x5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_46

    if-ne p3, v1, :cond_38

    .line 668
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$wv_task_type3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    goto :goto_64

    :cond_38
    if-ne p3, v0, :cond_40

    .line 670
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$wv_task_type3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    goto :goto_64

    .line 672
    :cond_40
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$wv_task_type3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    goto :goto_64

    :cond_46
    if-ne p1, v1, :cond_57

    if-ne p3, v1, :cond_50

    .line 676
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$wv_task_type3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    goto :goto_64

    .line 678
    :cond_50
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$wv_task_type3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    goto :goto_64

    :cond_57
    if-nez p3, :cond_5f

    .line 682
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$wv_task_type3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    goto :goto_64

    .line 684
    :cond_5f
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$1;->val$wv_task_type3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    :goto_64
    return-void
.end method
