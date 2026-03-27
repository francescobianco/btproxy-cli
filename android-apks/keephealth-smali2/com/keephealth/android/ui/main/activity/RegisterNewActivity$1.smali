.class Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$1;
.super Ljava/lang/Object;
.source "RegisterNewActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    .line 140
    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 141
    const-string p1, ""

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
