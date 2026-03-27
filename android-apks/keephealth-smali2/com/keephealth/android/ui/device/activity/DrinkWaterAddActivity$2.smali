.class Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$2;
.super Ljava/lang/Object;
.source "DrinkWaterAddActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    .line 163
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_c

    return-object p4

    .line 168
    :cond_c
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result p3

    const-string p5, ""

    const-string p6, "."

    if-nez p3, :cond_21

    invoke-virtual {p1, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_21

    return-object p5

    .line 172
    :cond_21
    invoke-virtual {p1, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-virtual {p2, p6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    return-object p5

    .line 177
    :cond_2e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->access$500(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "filter1111: "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4
.end method
