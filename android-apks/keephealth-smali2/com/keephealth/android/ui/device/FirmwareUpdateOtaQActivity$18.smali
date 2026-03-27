.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

.field final synthetic val$tvService:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Landroid/widget/TextView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1125
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->val$tvService:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 6

    .line 1128
    const-string p1, "BLUE_TYPE_SELECTED"

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_d2

    goto/16 :goto_d1

    .line 1150
    :sswitch_b
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutSPP:Landroid/widget/LinearLayout;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1151
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutBLE:Landroid/widget/LinearLayout;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1152
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z
    invoke-static {p2, v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2302(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z

    .line 1153
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutSPP:Landroid/widget/LinearLayout;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1154
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutBLE:Landroid/widget/LinearLayout;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1155
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnBounded:Landroid/widget/Button;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1156
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->val$tvService:Landroid/widget/TextView;

    const-string v0, "EDR Service:"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const-string v0, "EDR"

    invoke-static {p2, p1, v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1158
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->checkChanged(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)V

    goto/16 :goto_d1

    .line 1130
    :sswitch_52
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutSPP:Landroid/widget/LinearLayout;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1131
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutBLE:Landroid/widget/LinearLayout;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1132
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z
    invoke-static {p2, v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2302(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z

    .line 1133
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutSPP:Landroid/widget/LinearLayout;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1134
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutBLE:Landroid/widget/LinearLayout;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1135
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnBounded:Landroid/widget/Button;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1136
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const-string v0, "SPP"

    invoke-static {p2, p1, v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d1

    .line 1139
    :sswitch_8c
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutSPP:Landroid/widget/LinearLayout;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1140
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutBLE:Landroid/widget/LinearLayout;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1141
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z
    invoke-static {p2, v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2302(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z

    .line 1142
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutSPP:Landroid/widget/LinearLayout;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1143
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutBLE:Landroid/widget/LinearLayout;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1144
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnBounded:Landroid/widget/Button;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1145
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->val$tvService:Landroid/widget/TextView;

    const-string v0, "BLE Service:"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const-string v0, "BLE"

    invoke-static {p2, p1, v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1147
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->checkChanged(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)V

    :goto_d1
    return-void

    :sswitch_data_d2
    .sparse-switch
        0x7f090481 -> :sswitch_8c
        0x7f090482 -> :sswitch_52
        0x7f090488 -> :sswitch_b
    .end sparse-switch
.end method
