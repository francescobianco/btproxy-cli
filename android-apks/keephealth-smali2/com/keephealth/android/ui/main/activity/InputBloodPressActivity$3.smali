.class Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3;
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

    .line 135
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClickL$0$com-keephealth-android-ui-main-activity-InputBloodPressActivity$3(III)V
    .registers 4

    .line 140
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->tvBloodFz:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object p3, p3, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringFz:[Ljava/lang/String;

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    add-int/lit8 p1, p1, 0x28

    iput p1, p2, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->valueFz:I

    return-void
.end method

.method protected onClickL(Landroid/view/View;)V
    .registers 6

    .line 139
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringFz:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityInputBloodPressBinding;->tvBloodFz:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity;->stringFz:[Ljava/lang/String;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/InputBloodPressActivity$3;)V

    const-string v3, "\u9ad8\u538b"

    invoke-static {v3, p1, v0, v1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelBloodDialog(Ljava/lang/String;Landroid/content/Context;I[Ljava/lang/String;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialog;

    return-void
.end method
