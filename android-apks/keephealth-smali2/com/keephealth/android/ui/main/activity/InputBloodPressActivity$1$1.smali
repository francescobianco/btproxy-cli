.class Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1$1;
.super Ljava/lang/Object;
.source "InputBloodPressActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(III)V
    .registers 8

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    .line 101
    invoke-virtual {v0, p1, v1, p3}, Ljava/util/Calendar;->set(III)V

    .line 102
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->timestampToDateYMD(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 109
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 110
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    const/4 p2, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    return-void
.end method
