.class Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "InputBloodPressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 96
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1$1;-><init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;)V

    invoke-static {v0, p1, v1}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelBirthDayDialogNew(Landroid/content/Context;[ILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V

    return-void
.end method
