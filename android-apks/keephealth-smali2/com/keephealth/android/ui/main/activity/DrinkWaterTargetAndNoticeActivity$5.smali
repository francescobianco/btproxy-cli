.class Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$5;
.super Ljava/lang/Object;
.source "DrinkWaterTargetAndNoticeActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V
    .registers 2

    .line 521
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    .line 525
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 527
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_c

    return-object p4

    .line 531
    :cond_c
    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 533
    const-string p1, ""

    return-object p1

    :cond_1d
    return-object p4
.end method
