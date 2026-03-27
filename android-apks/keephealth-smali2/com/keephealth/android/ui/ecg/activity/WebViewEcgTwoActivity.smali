.class public Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "WebViewEcgTwoActivity.java"


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

    .line 64
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 79
    const-string v0, "HUAWEI"

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->NAME_HUAWEI:Ljava/lang/String;

    .line 80
    const-string v0, "XIAOMI"

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->NAME_XIAOMI:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100468

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->NAME_OTHER:Ljava/lang/String;

    .line 82
    const-string v0, "OPPO"

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->NAME_OPPO:Ljava/lang/String;

    .line 83
    const-string v0, "VIVO"

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->NAME_VIVO:Ljava/lang/String;

    .line 84
    const-string v0, "SAMSUNG"

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->NAME_SAMSUNG:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->cardItemCycle:Ljava/util/ArrayList;

    return-void
.end method

.method private initCustomCyclePicker()V
    .registers 4

    .line 362
    new-instance v0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V

    const v2, 0x7f0c0188

    .line 381
    invoke-virtual {v0, v2, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 390
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 391
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 392
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const v1, -0x333334

    .line 393
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 395
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->cardItemCycle:Ljava/util/ArrayList;

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

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 407
    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method btn_had_set()V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900c5
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V

    .line 412
    const-string v4, ""

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showSetPhoneDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c009a

    return v0
.end method

.method public initView()V
    .registers 14

    .line 102
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 105
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 110
    :cond_19
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 112
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 113
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    const/4 v3, 0x0

    .line 115
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v4, 0x2

    .line 117
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/16 v5, 0x64

    .line 124
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$1;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$1;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$2;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$2;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 250
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_26a

    .line 251
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "loadType"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 252
    iget-object v5, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->layoutPhotoManufacturers:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v5, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-ne v0, v1, :cond_9a

    .line 254
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f1002a2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_150

    :cond_9a
    if-ne v0, v4, :cond_ae

    .line 256
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f100286

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_150

    :cond_ae
    if-ne v0, v9, :cond_c2

    .line 258
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f100283

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_150

    :cond_c2
    if-ne v0, v8, :cond_d6

    .line 260
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f100728

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_150

    :cond_d6
    if-ne v0, v7, :cond_12b

    .line 262
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "IS_BACK_SHOW"

    invoke-static {p0, v11, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v10

    if-eqz v10, :cond_110

    .line 263
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {p0, v11, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 264
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->titleBack:Landroid/widget/ImageView;

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {v10, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f100548

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->rightText:Landroid/widget/Button;

    new-instance v11, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda2;

    invoke-direct {v11, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_125

    .line 280
    :cond_110
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->titleBack:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f1001ea

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :goto_125
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->layoutPhotoManufacturers:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_150

    :cond_12b
    if-ne v0, v5, :cond_13e

    .line 285
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f1004ca

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_150

    :cond_13e
    if-ne v0, v6, :cond_150

    .line 287
    iget-object v10, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f100794

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_150
    :goto_150
    if-ne v0, v1, :cond_156

    .line 291
    const-string v0, "health_h5"

    goto/16 :goto_21e

    :cond_156
    if-ne v0, v4, :cond_15c

    .line 293
    const-string v0, "noun_h5"

    goto/16 :goto_21e

    :cond_15c
    if-ne v0, v9, :cond_162

    .line 295
    const-string v0, "instructions_h5"

    goto/16 :goto_21e

    :cond_162
    if-ne v0, v8, :cond_168

    .line 297
    const-string v0, "faq_h5"

    goto/16 :goto_21e

    :cond_168
    if-ne v0, v7, :cond_205

    .line 299
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v5, Lcom/keephealth/android/model/bean/CardBean;

    const-string v10, "HUAWEI"

    invoke-direct {v5, v3, v10}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v5, Lcom/keephealth/android/model/bean/CardBean;

    const-string v11, "XIAOMI"

    invoke-direct {v5, v1, v11}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v1, Lcom/keephealth/android/model/bean/CardBean;

    const-string v5, "OPPO"

    invoke-direct {v1, v4, v5}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v1, Lcom/keephealth/android/model/bean/CardBean;

    const-string v4, "VIVO"

    invoke-direct {v1, v9, v4}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v1, Lcom/keephealth/android/model/bean/CardBean;

    const-string v9, "SAMSUNG"

    invoke-direct {v1, v8, v9}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v1, Lcom/keephealth/android/model/bean/CardBean;

    iget-object v8, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->NAME_OTHER:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-direct {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->initCustomCyclePicker()V

    .line 306
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isEmui()Z

    move-result v0

    if-eqz v0, :cond_1c3

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->tvBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const-string v0, "backrun_h5_huawei"

    goto :goto_21e

    .line 309
    :cond_1c3
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->tvBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const-string v0, "backrun_h5_xiaomi"

    goto :goto_21e

    .line 312
    :cond_1d1
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isOppo()Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 313
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->tvBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    const-string v0, "backrun_h5_oppo"

    goto :goto_21e

    .line 315
    :cond_1df
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_1ed

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->tvBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    const-string v0, "backrun_h5_vivo"

    goto :goto_21e

    .line 318
    :cond_1ed
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isSamSung()Z

    move-result v0

    if-eqz v0, :cond_1fb

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->tvBrandName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    const-string v0, "backrun_h5_sanxing"

    goto :goto_21e

    .line 322
    :cond_1fb
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->tvBrandName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->NAME_OTHER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const-string v0, "backrun_h5_other"

    goto :goto_21e

    :cond_205
    const/4 v1, 0x6

    if-ne v0, v1, :cond_20b

    .line 326
    const-string v0, "family_h5"

    goto :goto_21e

    :cond_20b
    if-ne v0, v5, :cond_210

    .line 328
    const-string v0, "policy_h5"

    goto :goto_21e

    :cond_210
    if-ne v0, v6, :cond_215

    .line 330
    const-string v0, "agreement_h5"

    goto :goto_21e

    :cond_215
    const/16 v1, 0x9

    if-ne v0, v1, :cond_21c

    .line 332
    const-string v0, "follow_h5"

    goto :goto_21e

    .line 331
    :cond_21c
    const-string v0, ""

    .line 334
    :goto_21e
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "back_set"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->back_set:Ljava/lang/String;

    .line 335
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23e

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->back_set:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23e

    .line 336
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->lin_botton_set:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_243

    .line 338
    :cond_23e
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->lin_botton_set:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    :goto_243
    const-string v1, "resourName:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "string"

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :try_start_259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://www.strava.com/oauth/authorize?client_id=31770&response_type=code&redirect_uri=myapp://developers.strava.com&approval_prompt=auto&scope=activity:write,read"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 350
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->startActivity(Landroid/content/Intent;)V

    .line 352
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->finish()V
    :try_end_26a
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_26a} :catch_26a

    :catch_26a
    :cond_26a
    return-void
.end method

.method synthetic lambda$btn_had_set$5$com-keephealth-android-ui-ecg-activity-WebViewEcgTwoActivity(Landroid/view/View;)V
    .registers 5

    .line 414
    const-string p1, "had_set"

    invoke-static {p0, p1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 415
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    .line 416
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 422
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

    .line 423
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const/16 v1, 0xc8

    if-eqz v0, :cond_d2

    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 424
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v2, "PersonInfoActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 425
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 427
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    const-string v1, "isConnect"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->startActivity(Landroid/content/Intent;)V

    .line 430
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 431
    sput p1, Lcom/keephealth/android/app/AppApplication;->firstConnect:I

    .line 432
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

    .line 435
    :cond_79
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v2, "MainActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 436
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->startActivity(Landroid/content/Intent;)V

    .line 440
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->setResult(I)V

    .line 441
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 442
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->finish()V

    .line 443
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

    .line 445
    :cond_b6
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v1, "AddMemberActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 446
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 447
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    goto :goto_e4

    .line 452
    :cond_d2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->startActivity(Landroid/content/Intent;)V

    .line 454
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 455
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->setResult(I)V

    .line 456
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->finish()V

    :cond_e4
    :goto_e4
    return-void
.end method

.method synthetic lambda$btn_had_set$6$com-keephealth-android-ui-ecg-activity-WebViewEcgTwoActivity(Landroid/view/View;)V
    .registers 2

    .line 460
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$1$com-keephealth-android-ui-ecg-activity-WebViewEcgTwoActivity(IIILandroid/view/View;)V
    .registers 5

    .line 364
    iget-object p2, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->tvBrandName:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->cardItemCycle:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/model/bean/CardBean;

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/CardBean;->getCardName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_16

    .line 367
    const-string p1, "backrun_h5_huawei"

    goto :goto_30

    :cond_16
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1c

    .line 369
    const-string p1, "backrun_h5_xiaomi"

    goto :goto_30

    :cond_1c
    const/4 p2, 0x2

    if-ne p1, p2, :cond_22

    .line 371
    const-string p1, "backrun_h5_oppo"

    goto :goto_30

    :cond_22
    const/4 p2, 0x3

    if-ne p1, p2, :cond_28

    .line 373
    const-string p1, "backrun_h5_vivo"

    goto :goto_30

    :cond_28
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2e

    .line 375
    const-string p1, "backrun_h5_sanxing"

    goto :goto_30

    .line 377
    :cond_2e
    const-string p1, "backrun_h5_other"

    .line 379
    :goto_30
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "string"

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 380
    iget-object p2, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$2$com-keephealth-android-ui-ecg-activity-WebViewEcgTwoActivity(Landroid/view/View;)V
    .registers 2

    .line 385
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->returnData()V

    .line 386
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$3$com-keephealth-android-ui-ecg-activity-WebViewEcgTwoActivity(Landroid/view/View;)V
    .registers 2

    .line 388
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$4$com-keephealth-android-ui-ecg-activity-WebViewEcgTwoActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 383
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 384
    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    new-instance v0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-ecg-activity-WebViewEcgTwoActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const/4 p1, 0x0

    .line 268
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "IS_LOGIN_STATE"

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 269
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getCurrentUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p1

    .line 270
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 271
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->setDatabase()V

    .line 272
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_36

    .line 274
    :cond_25
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 275
    const-string v0, "from"

    const-string v1, "WelcomeActivity"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-class v0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_36
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 467
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 468
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

    .line 400
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    return-void
.end method
