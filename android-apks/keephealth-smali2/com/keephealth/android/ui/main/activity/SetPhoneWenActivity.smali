.class public Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "SetPhoneWenActivity.java"


# instance fields
.field btn_go_set:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c4
    .end annotation
.end field

.field tv_title_1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090789
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0071

    return v0
.end method

.method protected initView()V
    .registers 3

    .line 42
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->tv_title_1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->titleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 11

    .line 105
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onBackPressed()V

    .line 107
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v1, "\u8bf7\u6c42\u5b8c\u6bd5:"

    const-string v2, "GFF32f"

    const/16 v3, 0xc8

    const-string v4, "class"

    const-string v5, "classStr"

    const-string v6, "MainActivityNew"

    const/4 v7, 0x1

    const-string v8, ""

    if-eqz v0, :cond_102

    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_102

    .line 108
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v9, "PersonInfoActivity"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 109
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    const-string v1, "isConnect"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v6, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v5, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 117
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->finish()V

    .line 118
    sput v7, Lcom/keephealth/android/app/AppApplication;->firstConnect:I

    .line 119
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ISCONNECT:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FDD3232"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_144

    .line 123
    :cond_7c
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v9, "MainActivity"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 124
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v0, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->setResult(I)V

    .line 129
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v6, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v5, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 132
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->finish()V

    .line 133
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_144

    .line 136
    :cond_ca
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v1, "AddMemberActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 137
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v6, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v5, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 144
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->finish()V

    .line 145
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    goto :goto_144

    .line 149
    :cond_102
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v9, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v0, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->setResult(I)V

    .line 154
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v6, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v5, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 157
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->finish()V

    .line 158
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    :goto_144
    return-void
.end method

.method tvGoset()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900c4
        }
    .end annotation

    const v0, 0x7f0900c4

    .line 95
    invoke-static {v0}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    const-string v1, "loadType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string v1, "back_set"

    invoke-virtual {v0, v1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-class v1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1e
    return-void
.end method
