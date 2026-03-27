.class public Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "WebViewEcgActivity.java"


# static fields
.field static final REQUEST_CODE_CAMER_PERMISSION:I = 0x1


# instance fields
.field private final NAME_HUAWEI:Ljava/lang/String;

.field private final NAME_OPPO:Ljava/lang/String;

.field private final NAME_OTHER:Ljava/lang/String;

.field private final NAME_SAMSUNG:Ljava/lang/String;

.field private final NAME_VIVO:Ljava/lang/String;

.field private final NAME_XIAOMI:Ljava/lang/String;

.field private back_set:Ljava/lang/String;

.field btn_go_set:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c4
    .end annotation
.end field

.field btn_had_set:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c5
    .end annotation
.end field

.field private cardItemCycle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/CardBean;",
            ">;"
        }
    .end annotation
.end field

.field layoutPhotoManufacturers:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09031a
    .end annotation
.end field

.field lin_botton_set:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09032f
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field mWebView:Landroid/webkit/WebView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e5
    .end annotation
.end field

.field private pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

.field tvBrandName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09062b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 87
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 102
    const-string v0, "HUAWEI"

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->NAME_HUAWEI:Ljava/lang/String;

    .line 103
    const-string v0, "XIAOMI"

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->NAME_XIAOMI:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100468

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->NAME_OTHER:Ljava/lang/String;

    .line 105
    const-string v0, "OPPO"

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->NAME_OPPO:Ljava/lang/String;

    .line 106
    const-string v0, "VIVO"

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->NAME_VIVO:Ljava/lang/String;

    .line 107
    const-string v0, "SAMSUNG"

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->NAME_SAMSUNG:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->cardItemCycle:Ljava/util/ArrayList;

    return-void
.end method

.method private initCustomCyclePicker()V
    .registers 4

    .line 274
    new-instance v0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;)V

    const v2, 0x7f0c0188

    .line 293
    invoke-virtual {v0, v2, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 302
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 303
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 304
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const v1, -0x333334

    .line 305
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 307
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->cardItemCycle:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method btn_go_set()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900c4
        }
    .end annotation

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 321
    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method btn_had_set()V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900c5
        }
    .end annotation

    .line 326
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;)V

    .line 326
    const-string v4, ""

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showSetPhoneDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c009a

    return v0
.end method

.method public initView()V
    .registers 16

    const-string v0, "initView: "

    .line 122
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 123
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 124
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 125
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 v3, -0x1

    .line 126
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 127
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/16 v3, 0x64

    .line 128
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 129
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 131
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$1;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 162
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_26c

    .line 163
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "loadType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 164
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->layoutPhotoManufacturers:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v3, 0x7

    const/16 v5, 0xa

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-ne v1, v2, :cond_66

    .line 166
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f1002a2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_126

    :cond_66
    if-ne v1, v9, :cond_7a

    .line 168
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100286

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_126

    :cond_7a
    if-ne v1, v8, :cond_8e

    .line 170
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100283

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_126

    :cond_8e
    if-ne v1, v7, :cond_a2

    .line 172
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100728

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_126

    :cond_a2
    if-ne v1, v6, :cond_f7

    .line 174
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "IS_BACK_SHOW"

    invoke-static {p0, v12, v11}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v11

    if-eqz v11, :cond_dc

    .line 175
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {p0, v12, v11}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 176
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->titleBack:Landroid/widget/ImageView;

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {v11, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100548

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->rightText:Landroid/widget/Button;

    new-instance v12, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda2;

    invoke-direct {v12, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f1

    .line 192
    :cond_dc
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->titleBack:Landroid/widget/ImageView;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f1001ea

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_f1
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->layoutPhotoManufacturers:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_126

    :cond_f7
    if-ne v1, v3, :cond_10a

    .line 197
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f1004ca

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_126

    :cond_10a
    if-ne v1, v4, :cond_11d

    .line 199
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100794

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_126

    :cond_11d
    if-ne v1, v5, :cond_126

    .line 201
    iget-object v11, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->titleName:Landroid/widget/TextView;

    const-string v12, "strava"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_126
    :goto_126
    if-ne v1, v2, :cond_12c

    .line 205
    const-string v3, "health_h5"

    goto/16 :goto_1fa

    :cond_12c
    if-ne v1, v9, :cond_132

    .line 207
    const-string v3, "noun_h5"

    goto/16 :goto_1fa

    :cond_132
    if-ne v1, v8, :cond_138

    .line 209
    const-string v3, "instructions_h5"

    goto/16 :goto_1fa

    :cond_138
    if-ne v1, v7, :cond_13e

    .line 211
    const-string v3, "faq_h5"

    goto/16 :goto_1fa

    :cond_13e
    if-ne v1, v6, :cond_1dc

    .line 213
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v11, Lcom/keephealth/android/model/bean/CardBean;

    const-string v12, "HUAWEI"

    invoke-direct {v11, v10, v12}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v11, Lcom/keephealth/android/model/bean/CardBean;

    const-string v13, "XIAOMI"

    invoke-direct {v11, v2, v13}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v11, Lcom/keephealth/android/model/bean/CardBean;

    const-string v14, "OPPO"

    invoke-direct {v11, v9, v14}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v9, Lcom/keephealth/android/model/bean/CardBean;

    const-string v11, "VIVO"

    invoke-direct {v9, v8, v11}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v8, Lcom/keephealth/android/model/bean/CardBean;

    const-string v9, "SAMSUNG"

    invoke-direct {v8, v7, v9}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v7, Lcom/keephealth/android/model/bean/CardBean;

    iget-object v8, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->NAME_OTHER:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->initCustomCyclePicker()V

    .line 220
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isEmui()Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 221
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->tvBrandName:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const-string v3, "backrun_h5_huawei"

    goto/16 :goto_1fa

    .line 223
    :cond_19a
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isMiui()Z

    move-result v3

    if-eqz v3, :cond_1a8

    .line 224
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->tvBrandName:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const-string v3, "backrun_h5_xiaomi"

    goto :goto_1fa

    .line 226
    :cond_1a8
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isOppo()Z

    move-result v3

    if-eqz v3, :cond_1b6

    .line 227
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->tvBrandName:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const-string v3, "backrun_h5_oppo"

    goto :goto_1fa

    .line 229
    :cond_1b6
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isVivo()Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 230
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->tvBrandName:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const-string v3, "backrun_h5_vivo"

    goto :goto_1fa

    .line 232
    :cond_1c4
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isSamSung()Z

    move-result v3

    if-eqz v3, :cond_1d2

    .line 233
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->tvBrandName:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const-string v3, "backrun_h5_sanxing"

    goto :goto_1fa

    .line 236
    :cond_1d2
    iget-object v3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->tvBrandName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->NAME_OTHER:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const-string v3, "backrun_h5_other"

    goto :goto_1fa

    :cond_1dc
    const/4 v6, 0x6

    if-ne v1, v6, :cond_1e2

    .line 240
    const-string v3, "family_h5"

    goto :goto_1fa

    :cond_1e2
    if-ne v1, v3, :cond_1e7

    .line 242
    const-string v3, "policy_h5"

    goto :goto_1fa

    :cond_1e7
    if-ne v1, v4, :cond_1ec

    .line 244
    const-string v3, "agreement_h5"

    goto :goto_1fa

    :cond_1ec
    const/16 v3, 0x9

    if-ne v1, v3, :cond_1f3

    .line 246
    const-string v3, "follow_h5"

    goto :goto_1fa

    :cond_1f3
    if-ne v1, v5, :cond_1f8

    .line 248
    const-string v3, "strava_yinsi"

    goto :goto_1fa

    .line 247
    :cond_1f8
    const-string v3, ""

    .line 250
    :goto_1fa
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "back_set"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->back_set:Ljava/lang/String;

    .line 251
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_21a

    iget-object v6, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->back_set:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21a

    .line 252
    iget-object v4, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->lin_botton_set:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_21f

    .line 254
    :cond_21a
    iget-object v6, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->lin_botton_set:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    :goto_21f
    const-string v4, "resourName:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "string"

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x30

    .line 258
    invoke-static {p0, v2, v4}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    if-ne v1, v5, :cond_245

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "https://www.strava.com/legal/privacy"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_26c

    .line 263
    :cond_245
    :try_start_245
    const-string v1, "WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_26c
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_26c} :catch_26c

    :catch_26c
    :cond_26c
    :goto_26c
    return-void
.end method

.method synthetic lambda$btn_had_set$5$com-keephealth-android-ui-ecg-activity-WebViewEcgActivity(Landroid/view/View;)V
    .registers 5

    .line 328
    const-string p1, "had_set"

    invoke-static {p0, p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 329
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    .line 330
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppApplication.fromActivity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FDD32r32"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const/16 v1, 0xc8

    if-eqz v0, :cond_d2

    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 338
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v2, "PersonInfoActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 339
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    const-string v1, "isConnect"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->startActivity(Landroid/content/Intent;)V

    .line 344
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 345
    sput p1, Lcom/keephealth/android/app/AppApplication;->firstConnect:I

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ISCONNECT:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FDD3232"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 349
    :cond_79
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v2, "MainActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 350
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->startActivity(Landroid/content/Intent;)V

    .line 354
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->setResult(I)V

    .line 355
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 356
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->finish()V

    .line 357
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u8bf7\u6c42\u5b8c\u6bd5:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GFF32f"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 359
    :cond_b6
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v1, "AddMemberActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 360
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 361
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    goto :goto_e4

    .line 366
    :cond_d2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->startActivity(Landroid/content/Intent;)V

    .line 368
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 369
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->setResult(I)V

    .line 370
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->finish()V

    :cond_e4
    :goto_e4
    return-void
.end method

.method synthetic lambda$btn_had_set$6$com-keephealth-android-ui-ecg-activity-WebViewEcgActivity(Landroid/view/View;)V
    .registers 2

    .line 374
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$1$com-keephealth-android-ui-ecg-activity-WebViewEcgActivity(IIILandroid/view/View;)V
    .registers 5

    .line 276
    iget-object p2, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->tvBrandName:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->cardItemCycle:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/model/bean/CardBean;

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/CardBean;->getCardName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_16

    .line 279
    const-string p1, "backrun_h5_huawei"

    goto :goto_30

    :cond_16
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1c

    .line 281
    const-string p1, "backrun_h5_xiaomi"

    goto :goto_30

    :cond_1c
    const/4 p2, 0x2

    if-ne p1, p2, :cond_22

    .line 283
    const-string p1, "backrun_h5_oppo"

    goto :goto_30

    :cond_22
    const/4 p2, 0x3

    if-ne p1, p2, :cond_28

    .line 285
    const-string p1, "backrun_h5_vivo"

    goto :goto_30

    :cond_28
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2e

    .line 287
    const-string p1, "backrun_h5_sanxing"

    goto :goto_30

    .line 289
    :cond_2e
    const-string p1, "backrun_h5_other"

    .line 291
    :goto_30
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "string"

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 292
    iget-object p2, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$2$com-keephealth-android-ui-ecg-activity-WebViewEcgActivity(Landroid/view/View;)V
    .registers 2

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->returnData()V

    .line 298
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$3$com-keephealth-android-ui-ecg-activity-WebViewEcgActivity(Landroid/view/View;)V
    .registers 2

    .line 300
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$4$com-keephealth-android-ui-ecg-activity-WebViewEcgActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 295
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 296
    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    new-instance v0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-ecg-activity-WebViewEcgActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const/4 p1, 0x0

    .line 180
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "IS_LOGIN_STATE"

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 181
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getCurrentUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p1

    .line 182
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 183
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->setDatabase()V

    .line 184
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_36

    .line 186
    :cond_25
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 187
    const-string v0, "from"

    const-string v1, "WelcomeActivity"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-class v0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_36
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 382
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method showDialog()V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09031a
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    if-eqz v0, :cond_7

    .line 313
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    :cond_7
    return-void
.end method
