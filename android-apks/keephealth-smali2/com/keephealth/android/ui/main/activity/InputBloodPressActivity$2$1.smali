.class Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2$1;
.super Ljava/lang/Object;
.source "InputBloodPressActivity.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/DialogView$OnSelectTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectTime(II)V
    .registers 12

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->access$000(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selectTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ++ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->strings:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v0, v6

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/DateUtil;->timestampToDateHM(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringTime:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v7

    .line 129
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringTime:[Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v8

    return-void
.end method
