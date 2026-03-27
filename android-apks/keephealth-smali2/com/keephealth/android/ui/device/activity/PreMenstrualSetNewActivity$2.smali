.class Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "PreMenstrualSetNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClickL$0$com-keephealth-android-ui-device-activity-PreMenstrualSetNewActivity$2(III)V
    .registers 5

    .line 81
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectCycle:I
    invoke-static {p2, p1}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->access$002(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;I)I

    .line 82
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->tvSelectCycle:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectCycle:I
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    const v0, 0x7f10076b

    invoke-virtual {p3, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onClickL(Landroid/view/View;)V
    .registers 8

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectCycle:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)I

    move-result v1

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectPerimeter:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->access$100(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)I

    move-result p1

    add-int/lit8 p1, p1, -0x5

    const/16 v2, 0xf

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v5, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2;)V

    const-string v2, ""

    const/4 v3, 0x3

    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelIntDialog(Landroid/app/Activity;ILjava/lang/String;IILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Landroid/app/Dialog;

    return-void
.end method
