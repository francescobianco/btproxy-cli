.class public Lcom/keephealth/android/views/gallery/ImagePickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ImagePickerActivity.java"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;
.implements Lcom/keephealth/android/views/gallery/Contract$Presenter;


# static fields
.field private static final RC_CAMERA_PERM:I = 0x3

.field private static final RC_EXTERNAL_STORAGE:I = 0x4

.field private static mOption:Lcom/keephealth/android/views/gallery/SelectOptions;


# instance fields
.field private mView:Lcom/keephealth/android/views/gallery/Contract$View;

.field private permissionsLocation:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x3

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->permissionsLocation:[Ljava/lang/String;

    return-void
.end method

.method private handleView()V
    .registers 4

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    .line 148
    invoke-static {v1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->newInstance(Lcom/keephealth/android/views/gallery/SelectOptions;)Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    move-result-object v1

    const v2, 0x7f090192

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    return-void
.end method

.method private removeView()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->mView:Lcom/keephealth/android/views/gallery/Contract$View;

    if-nez v0, :cond_5

    return-void

    .line 135
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 137
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/keephealth/android/views/gallery/SelectOptions;)V
    .registers 3

    .line 44
    sput-object p1, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    .line 45
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/views/gallery/ImagePickerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 8

    .line 158
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 161
    invoke-virtual {p1, p3, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 162
    invoke-virtual {p1, p4, p6}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 163
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, -0x1

    .line 165
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const/high16 p3, -0x1000000

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p2, -0x2

    .line 166
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 167
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00ae

    .line 52
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 54
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 55
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 56
    :cond_18
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->requestExternalStorage()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    .line 172
    sput-object v0, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    .line 173
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x4

    if-ne p1, p2, :cond_14

    .line 112
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->removeView()V

    .line 114
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->finish()V

    goto :goto_1b

    .line 118
    :cond_14
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->mView:Lcom/keephealth/android/views/gallery/Contract$View;

    if-eqz p1, :cond_1b

    .line 119
    invoke-interface {p1}, Lcom/keephealth/android/views/gallery/Contract$View;->onCameraPermissionDenied()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 127
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method public requestCamera()V
    .registers 5
    .annotation runtime Lpub/devrel/easypermissions/AfterPermissionGranted;
        value = 0x3
    .end annotation

    const/4 v0, 0x1

    .line 62
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->mView:Lcom/keephealth/android/views/gallery/Contract$View;

    if-eqz v0, :cond_20

    .line 64
    invoke-interface {v0}, Lcom/keephealth/android/views/gallery/Contract$View;->onOpenCameraSuccess()V

    goto :goto_20

    .line 67
    :cond_16
    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v1, "\u6ca1\u6709\u6743\u9650, \u4f60\u9700\u8981\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u8bfb\u53d6\u624b\u673a\u5b58\u50a8\u6743\u9650"

    const/4 v2, 0x3

    invoke-static {p0, v1, v2, v0}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public requestExternalStorage()V
    .registers 5
    .annotation runtime Lpub/devrel/easypermissions/AfterPermissionGranted;
        value = 0x4
    .end annotation

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_27

    .line 76
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->mView:Lcom/keephealth/android/views/gallery/Contract$View;

    if-nez v0, :cond_4e

    .line 78
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->handleView()V

    goto :goto_4e

    .line 81
    :cond_1c
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "\u6ca1\u6709\u6743\u9650, \u4f60\u9700\u8981\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u8bfb\u53d6\u624b\u673a\u5b58\u50a8\u6743\u9650"

    const/4 v2, 0x4

    invoke-static {p0, v1, v2, v0}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_4e

    .line 86
    :cond_27
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->mView:Lcom/keephealth/android/views/gallery/Contract$View;

    if-nez v0, :cond_4e

    .line 89
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->handleView()V

    goto :goto_4e

    :cond_47
    const/16 v0, 0x36

    .line 92
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public setDataView(Lcom/keephealth/android/views/gallery/Contract$View;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->mView:Lcom/keephealth/android/views/gallery/Contract$View;

    return-void
.end method
