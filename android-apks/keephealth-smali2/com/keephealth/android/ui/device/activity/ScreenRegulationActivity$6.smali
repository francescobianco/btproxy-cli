.class Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$6;
.super Ljava/lang/Object;
.source "ScreenRegulationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)V
    .registers 2

    .line 418
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 421
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;->access$2300(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity;)Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    return-void
.end method
