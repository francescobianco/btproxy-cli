.class Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$1;
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

    .line 71
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 74
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/TimePickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/TimePickerView;->show()V

    return-void
.end method
