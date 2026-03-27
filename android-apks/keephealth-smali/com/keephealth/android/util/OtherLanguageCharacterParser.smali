.class public Lcom/keephealth/android/util/OtherLanguageCharacterParser;
.super Ljava/lang/Object;
.source "OtherLanguageCharacterParser.java"


# static fields
.field private static hkCharacterParser:Lcom/keephealth/android/util/OtherLanguageCharacterParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/keephealth/android/util/OtherLanguageCharacterParser;

    invoke-direct {v0}, Lcom/keephealth/android/util/OtherLanguageCharacterParser;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/OtherLanguageCharacterParser;->hkCharacterParser:Lcom/keephealth/android/util/OtherLanguageCharacterParser;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/keephealth/android/util/OtherLanguageCharacterParser;
    .registers 1

    .line 18
    sget-object v0, Lcom/keephealth/android/util/OtherLanguageCharacterParser;->hkCharacterParser:Lcom/keephealth/android/util/OtherLanguageCharacterParser;

    return-object v0
.end method


# virtual methods
.method public getEnglishName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 26
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/AreaCodeUtils;->getCountryNameByCountryCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ,strResult:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OtherCharacterParser"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2d

    return-object v0

    .line 31
    :cond_2d
    const-string p1, ""

    return-object p1
.end method
