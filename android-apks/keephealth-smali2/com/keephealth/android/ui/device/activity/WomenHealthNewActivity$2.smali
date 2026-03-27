.class Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$2;
.super Ljava/lang/Object;
.source "WomenHealthNewActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->initCalendar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPagerChanged([I)V
    .registers 8

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-virtual {v1, v3, v5}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getMonthList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNewMonth:Ljava/util/List;

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->titleDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%02d"

    invoke-static {v2, p1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
