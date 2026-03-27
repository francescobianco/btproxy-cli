.class public Lcom/keephealth/android/sevice/AssistService;
.super Landroid/app/Service;
.source "AssistService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;,
        Lcom/keephealth/android/sevice/AssistService$SmsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_VOLUME_CHANGED:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final NOTICE_ID:I = 0x3e9


# instance fields
.field private CHANNEL_ONE_ID:Ljava/lang/String;

.field private SMS_INBOX:Landroid/net/Uri;

.field private SMS_URI:Landroid/net/Uri;

.field TAG:Ljava/lang/String;

.field private aa:I

.field private callHandler:Landroid/os/Handler;

.field callRun:Ljava/lang/Runnable;

.field private contactName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dd:I

.field private exitTime:J

.field private handler:Landroid/os/Handler;

.field private hasFirstReigsterPhone:Z

.field private isCommingPhone:Z

.field private isPairSuccess:Z

.field private isRemind:Z

.field private isRingOrVibrate:Z

.field lastDate:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mVib:Landroid/os/Vibrator;

.field private notification:Landroid/app/Notification;

.field private phoneNumber:Ljava/lang/String;

.field private phonePermissions:Z

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private tpm:Landroid/telephony/TelephonyManager;

.field vibrateAndMediaRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 80
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/AssistService;->isCommingPhone:Z

    .line 87
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/AssistService;->isRemind:Z

    .line 92
    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/AssistService;->SMS_URI:Landroid/net/Uri;

    .line 97
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/AssistService;->SMS_INBOX:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/AssistService;->isRingOrVibrate:Z

    .line 101
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->handler:Landroid/os/Handler;

    .line 106
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->callHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    .line 107
    iput-wide v1, p0, Lcom/keephealth/android/sevice/AssistService;->exitTime:J

    .line 109
    new-instance v1, Lcom/keephealth/android/sevice/AssistService$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/sevice/AssistService$1;-><init>(Lcom/keephealth/android/sevice/AssistService;)V

    iput-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->vibrateAndMediaRunnable:Ljava/lang/Runnable;

    .line 132
    new-instance v1, Lcom/keephealth/android/sevice/AssistService$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/sevice/AssistService$2;-><init>(Lcom/keephealth/android/sevice/AssistService;)V

    iput-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->receiver:Landroid/content/BroadcastReceiver;

    .line 322
    const-string v1, "com.hearth.notification.assist"

    iput-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->CHANNEL_ONE_ID:Ljava/lang/String;

    .line 324
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/AssistService;->phonePermissions:Z

    .line 461
    new-instance v0, Lcom/keephealth/android/sevice/AssistService$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/sevice/AssistService$4;-><init>(Lcom/keephealth/android/sevice/AssistService;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/AssistService;->callRun:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 479
    iput-wide v0, p0, Lcom/keephealth/android/sevice/AssistService;->lastDate:J

    .line 480
    const-string v0, "PHONECALL"

    iput-object v0, p0, Lcom/keephealth/android/sevice/AssistService;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/sevice/AssistService;)Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/keephealth/android/sevice/AssistService;->isRingOrVibrate:Z

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/sevice/AssistService;Z)Z
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/AssistService;->isRingOrVibrate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/sevice/AssistService;)J
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/keephealth/android/sevice/AssistService;->exitTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistService;->contactName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/keephealth/android/sevice/AssistService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistService;->contactName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistService;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/keephealth/android/sevice/AssistService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistService;->phoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/keephealth/android/sevice/AssistService;)I
    .registers 1

    .line 80
    iget p0, p0, Lcom/keephealth/android/sevice/AssistService;->aa:I

    return p0
.end method

.method static synthetic access$1202(Lcom/keephealth/android/sevice/AssistService;I)I
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/sevice/AssistService;->aa:I

    return p1
.end method

.method static synthetic access$1208(Lcom/keephealth/android/sevice/AssistService;)I
    .registers 3

    .line 80
    iget v0, p0, Lcom/keephealth/android/sevice/AssistService;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/sevice/AssistService;->aa:I

    return v0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/sevice/AssistService;)Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/keephealth/android/sevice/AssistService;->hasFirstReigsterPhone:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/keephealth/android/sevice/AssistService;Z)Z
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/AssistService;->hasFirstReigsterPhone:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/keephealth/android/sevice/AssistService;)Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/keephealth/android/sevice/AssistService;->isCommingPhone:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/keephealth/android/sevice/AssistService;Z)Z
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/AssistService;->isCommingPhone:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Handler;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistService;->callHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/sevice/AssistService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/sevice/AssistService;->sendData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/keephealth/android/sevice/AssistService;)V
    .registers 1

    .line 80
    invoke-direct {p0}, Lcom/keephealth/android/sevice/AssistService;->sendMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/sevice/AssistService;)Landroid/media/MediaPlayer;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/sevice/AssistService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Vibrator;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistService;->mVib:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/sevice/AssistService;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistService;->mVib:Landroid/os/Vibrator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Handler;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/sevice/AssistService;)Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/keephealth/android/sevice/AssistService;->isPairSuccess:Z

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/sevice/AssistService;Z)Z
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/AssistService;->isPairSuccess:Z

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/sevice/AssistService;Z)V
    .registers 2

    .line 80
    invoke-direct {p0, p1}, Lcom/keephealth/android/sevice/AssistService;->playRingtone(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/sevice/AssistService;)Landroid/content/Context;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistService;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/sevice/AssistService;)Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/keephealth/android/sevice/AssistService;->isRemind:Z

    return p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/sevice/AssistService;Z)Z
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/AssistService;->isRemind:Z

    return p1
.end method

.method public static getContactNameFromPhoneBook(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 818
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 823
    :cond_9
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v3

    .line 824
    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isPermissions:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 825
    const-string v4, "android.permission.READ_CONTACTS"

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 826
    new-array v6, v2, [Ljava/lang/String;

    aput-object v4, v6, v3

    .line 827
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 831
    new-array v9, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v9, v3

    const-string v3, "number"

    aput-object v3, v9, v2

    .line 833
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 835
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 833
    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 836
    invoke-static {v6}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    const-string v2, "\u83b7\u53d6\u624b\u673a\u7684\u522b\u540d:"

    if-eqz p1, :cond_90

    .line 837
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_6c

    return-object v1

    .line 840
    :cond_6c
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 843
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 842
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 844
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object v1, p1

    .line 846
    :cond_7e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FF453ff4"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hfgfr3f2"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getSystemDefultRingtoneUri()Landroid/net/Uri;
    .registers 2

    const/4 v0, 0x1

    .line 432
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private playRingtone(Z)V
    .registers 9

    .line 375
    const-string v0, "gge3d"

    .line 0
    const-string v1, "uri:"

    .line 375
    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/keephealth/android/sevice/AssistService;->vibrateAndMediaRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_16

    .line 377
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 380
    :cond_16
    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistService;->mVib:Landroid/os/Vibrator;

    if-nez v2, :cond_26

    if-eqz p1, :cond_26

    .line 381
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/keephealth/android/sevice/AssistService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistService;->mVib:Landroid/os/Vibrator;

    :cond_26
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 386
    :try_start_28
    iget-object v4, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2e} :catch_2f

    goto :goto_4c

    :catch_2f
    move-exception v4

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e1:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 390
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    move v4, v3

    :goto_4c
    if-eqz v4, :cond_66

    .line 393
    const-string v4, "mMediaPlayer.stop()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v4, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 395
    iget-object v4, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 396
    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 397
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_66
    const-wide/16 v4, 0x0

    .line 400
    :try_start_68
    invoke-direct {p0}, Lcom/keephealth/android/sevice/AssistService;->getSystemDefultRingtoneUri()Landroid/net/Uri;

    move-result-object v2

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 404
    iget-boolean v1, p0, Lcom/keephealth/android/sevice/AssistService;->isPairSuccess:Z

    if-nez v1, :cond_8f

    .line 405
    const-string v1, "\u6ca1\u6709\u914d\u5bf9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 407
    :cond_8f
    const-string v1, "\u5df2\u7ecf\u914d\u5bf9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 411
    :goto_9a
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 412
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keephealth/android/sevice/AssistService;->exitTime:J

    .line 415
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 417
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistService;->vibrateAndMediaRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_b7} :catch_b8

    goto :goto_e0

    :catch_b8
    move-exception v1

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "e:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/sevice/AssistService;->exitTime:J

    .line 423
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 424
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->vibrateAndMediaRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_e0
    if-eqz p1, :cond_ed

    .line 427
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService;->mVib:Landroid/os/Vibrator;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_ee

    invoke-virtual {p1, v0, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_ed
    return-void

    :array_ee
    .array-data 8
        0x1f4
        0x7d0
    .end array-data
.end method

.method private registerPhoneListener()V
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService;->tpm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private sendData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppApplication.isRunningEcg...:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF4534"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_1b

    return-void

    .line 456
    :cond_1b
    iput-object p2, p0, Lcom/keephealth/android/sevice/AssistService;->contactName:Ljava/lang/String;

    .line 457
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistService;->phoneNumber:Ljava/lang/String;

    .line 458
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService;->callHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/sevice/AssistService;->callRun:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendMessage()V
    .registers 14

    .line 484
    const-string v0, "sendMessage"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 485
    const-string v0, "hfgfr3f2"

    const-string v1, "sendMessage..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-eqz v0, :cond_11

    return-void

    .line 494
    :cond_11
    invoke-virtual {p0}, Lcom/keephealth/android/sevice/AssistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x6

    .line 496
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "body"

    aput-object v7, v3, v0

    const/4 v8, 0x1

    const-string v9, "address"

    aput-object v9, v3, v8

    const-string v2, "person"

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    const-string v5, "read"

    aput-object v5, v3, v2

    const/4 v2, 0x4

    const-string v10, "date"

    aput-object v10, v3, v2

    const/4 v2, 0x5

    const-string v5, "_id"

    aput-object v5, v3, v2

    .line 499
    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistService;->context:Landroid/content/Context;

    const-string v5, "android.permission.READ_SMS"

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_41

    return-void

    .line 503
    :cond_41
    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistService;->SMS_INBOX:Landroid/net/Uri;

    new-array v5, v4, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v5, v0

    const-string v4, "1"

    aput-object v4, v5, v8

    const-string v6, "date desc limit 1"

    const-string v4, "read=? and type=?"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_58

    return-void

    .line 508
    :cond_58
    const-string v2, "138"

    const-wide/16 v3, 0x0

    const-string v5, "0438"

    .line 510
    :goto_5e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const-string v11, "date:"

    if-eqz v6, :cond_b6

    .line 511
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 515
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "lastDate:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v11, p0, Lcom/keephealth/android/sevice/AssistService;->lastDate:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "body:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    move v0, v8

    goto :goto_5e

    .line 523
    :cond_b6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-nez v0, :cond_c1

    .line 525
    const-string v0, "\u6ca1\u6709\u672a\u8bfb\u77ed\u4fe1....."

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 528
    :cond_c1
    iget-wide v0, p0, Lcom/keephealth/android/sevice/AssistService;->lastDate:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_c8

    return-void

    .line 531
    :cond_c8
    iput-wide v3, p0, Lcom/keephealth/android/sevice/AssistService;->lastDate:J

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 535
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currDate:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 536
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ddd:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 537
    invoke-static {p0, v2}, Lcom/keephealth/android/sevice/AssistService;->getContactNameFromPhoneBook(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    move-object v0, v2

    .line 541
    :cond_113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "phoneNumber:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",contact:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",body:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 545
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistService;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/keephealth/android/sevice/AssistService$5;

    invoke-direct {v3, p0, v0, v5}, Lcom/keephealth/android/sevice/AssistService$5;-><init>(Lcom/keephealth/android/sevice/AssistService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnWriteCharacteristicListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 577
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {v8}, Lcom/keephealth/android/util/ble/CmdHelper;->setMessageType(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method private unregisterPhoneListener()V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService;->tpm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_c

    const/4 v2, 0x0

    .line 444
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_c
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 7

    .line 164
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 165
    const-string v0, "onCreate "

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 166
    iput-object p0, p0, Lcom/keephealth/android/sevice/AssistService;->context:Landroid/content/Context;

    .line 167
    const-string v0, "gge3d"

    const-string v1, "assitservice_oncreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/sevice/AssistService$3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/keephealth/android/sevice/AssistService$3;-><init>(Lcom/keephealth/android/sevice/AssistService;I)V

    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->addDeviceCallback(ILcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    .line 268
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 269
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v1, v3, :cond_3f

    .line 274
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v0, v3}, Lcom/keephealth/android/sevice/AssistService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_44

    .line 276
    :cond_3f
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/sevice/AssistService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    :goto_44
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_77

    .line 289
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcom/keephealth/android/sevice/AssistService;->CHANNEL_ONE_ID:Ljava/lang/String;

    const-string v4, "otifition_one"

    const/4 v5, 0x4

    invoke-direct {v1, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 291
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v3, -0x10000

    .line 292
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 293
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 294
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 295
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/keephealth/android/sevice/AssistService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 296
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 297
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService;->CHANNEL_ONE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 306
    :cond_77
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/keephealth/android/sevice/AssistService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c017f

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 307
    invoke-virtual {p0}, Lcom/keephealth/android/sevice/AssistService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0069

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const v4, 0x7f0901bd

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 308
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 310
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    .line 311
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 312
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/AssistService;->notification:Landroid/app/Notification;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 658
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 659
    const-string v0, "onDestroy......"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/sevice/AssistService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 661
    iget-boolean v0, p0, Lcom/keephealth/android/sevice/AssistService;->phonePermissions:Z

    if-nez v0, :cond_14

    .line 662
    invoke-direct {p0}, Lcom/keephealth/android/sevice/AssistService;->unregisterPhoneListener()V

    :cond_14
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    .line 330
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/AssistService;->phonePermissions:Z

    .line 331
    const-string v0, "android.permission.READ_SMS"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    .line 332
    :goto_19
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "phonePermissions:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/keephealth/android/sevice/AssistService;->phonePermissions:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "smsPermissions:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/keephealth/android/sevice/AssistService;->phonePermissions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF45fd4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-boolean v0, p0, Lcom/keephealth/android/sevice/AssistService;->phonePermissions:Z

    if-nez v0, :cond_76

    .line 337
    const-string v0, "phone"

    .line 338
    invoke-virtual {p0, v0}, Lcom/keephealth/android/sevice/AssistService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/keephealth/android/sevice/AssistService;->tpm:Landroid/telephony/TelephonyManager;

    .line 339
    new-instance v0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;-><init>(Lcom/keephealth/android/sevice/AssistService;Lcom/keephealth/android/sevice/AssistService$1;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/AssistService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 340
    invoke-direct {p0}, Lcom/keephealth/android/sevice/AssistService;->registerPhoneListener()V

    .line 341
    const-string v0, "\u6ce8\u518c\u7535\u8bdd\u76d1\u542c"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_76
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
