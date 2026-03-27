.class public Lcom/keephealth/android/util/SystemLanguageUtil;
.super Ljava/lang/Object;
.source "SystemLanguageUtil.java"


# static fields
.field private static final INT_LANGUAGE_EN_2:I = 0x2

.field private static final INT_LANGUAGE_INA_4:I = 0x4

.field private static final INT_LANGUAGE_TH_1:I = 0x1

.field private static final INT_LANGUAGE_ZH_CN_0:I = 0x0

.field private static final INT_LANGUAGE_ZH_TW_3:I = 0x3

.field private static final LANGUAGE_EN:Ljava/lang/String; = "en"

.field private static final LANGUAGE_EN_2:Ljava/lang/String; = "2"

.field private static final LANGUAGE_HANS:Ljava/lang/String; = "Hans"

.field public static final LANGUAGE_HANT:Ljava/lang/String; = "Hant"

.field private static final LANGUAGE_INA:Ljava/lang/String; = "in"

.field private static final LANGUAGE_INA_4:Ljava/lang/String; = "4"

.field private static final LANGUAGE_TH:Ljava/lang/String; = "th"

.field private static final LANGUAGE_TH_1:Ljava/lang/String; = "1"

.field private static final LANGUAGE_ZH_CN:Ljava/lang/String; = "zh_CN"

.field private static final LANGUAGE_ZH_CN_0:Ljava/lang/String; = "0"

.field private static final LANGUAGE_ZH_CN_VALUE:Ljava/lang/String; = "zh"

.field public static final LANGUAGE_ZH_CN_VALUE_DETAILS:Ljava/lang/String; = "zh-CN"

.field private static final LANGUAGE_ZH_HK:Ljava/lang/String; = "zh_HK"

.field public static final LANGUAGE_ZH_HK_VALUE:Ljava/lang/String; = "zh-HK"

.field private static final LANGUAGE_ZH_MO:Ljava/lang/String; = "zh_MO"

.field public static final LANGUAGE_ZH_MO_VALUE:Ljava/lang/String; = "zh-MO"

.field private static final LANGUAGE_ZH_SG:Ljava/lang/String; = "zh_SG"

.field public static final LANGUAGE_ZH_SG_VALUE:Ljava/lang/String; = "zh-SG"

.field private static final LANGUAGE_ZH_TW:Ljava/lang/String; = "zh_TW"

.field private static final LANGUAGE_ZH_TW_3:Ljava/lang/String; = "3"

.field public static final LANGUAGE_ZH_TW_VALUE:Ljava/lang/String; = "zh-TW"

.field private static final TAG:Ljava/lang/String; = "SystemLanguageUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppLanguageForHeader(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 100
    invoke-static {p0}, Lcom/keephealth/android/util/SystemLanguageUtil;->getSysPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAppLanguageForHeader locale:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemLanguageUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getAppLanguageForHeader getAppLanguageForSSO language: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAppLanguageForHeader locale.getCountry():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "strLocale:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "zh_CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_69

    return-object v1

    .line 111
    :cond_69
    const-string v0, "zh_SG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    return-object v1

    .line 113
    :cond_72
    const-string v0, "zh_TW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "3"

    if-eqz v0, :cond_7d

    return-object v1

    .line 115
    :cond_7d
    const-string v0, "zh_HK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_86

    return-object v1

    .line 117
    :cond_86
    const-string v0, "zh_MO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    return-object v1

    .line 119
    :cond_8f
    const-string v0, "th"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 120
    const-string p0, "1"

    return-object p0

    .line 121
    :cond_9a
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a5

    .line 122
    const-string p0, "4"

    return-object p0

    .line 124
    :cond_a5
    const-string p0, "2"

    return-object p0
.end method

.method public static getLocal()Ljava/util/Locale;
    .registers 2

    .line 137
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalCountry(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 161
    invoke-static {p0}, Lcom/keephealth/android/util/SystemLanguageUtil;->getSysPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLocalCountry = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemLanguageUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getLocalLanguageAndCountry(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 174
    invoke-static {p0}, Lcom/keephealth/android/util/SystemLanguageUtil;->getSysPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSysPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 4

    .line 151
    invoke-static {}, Lcom/keephealth/android/util/SystemLanguageUtil;->getLocal()Ljava/util/Locale;

    move-result-object v0

    .line 152
    const-string v1, "zh"

    invoke-static {p0}, Lcom/keephealth/android/util/SystemLanguageUtil;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 153
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    goto :goto_2d

    .line 154
    :cond_13
    const-string v1, "zh-TW"

    invoke-static {p0}, Lcom/keephealth/android/util/SystemLanguageUtil;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "zh-HK"

    invoke-static {p0}, Lcom/keephealth/android/util/SystemLanguageUtil;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 155
    :cond_2b
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public static getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 185
    :cond_4
    invoke-static {}, Lcom/keephealth/android/util/SystemLanguageUtil;->getLocal()Ljava/util/Locale;

    move-result-object p0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSystemLanguage locale--->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemLanguageUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSystemLanguage language--->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getSystemLanguage strLocale:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v0, "zh_CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "zh_SG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "Hans"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_9a

    .line 194
    :cond_61
    const-string v0, "zh_TW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    const-string v0, "zh_HK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    const-string v0, "zh_MO"

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    const-string v0, "Hant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_97

    .line 197
    :cond_82
    const-string v0, "th"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    return-object v0

    .line 199
    :cond_8b
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_94

    return-object v0

    .line 202
    :cond_94
    const-string p0, "en"

    return-object p0

    .line 196
    :cond_97
    :goto_97
    const-string p0, "zh-HK"

    return-object p0

    .line 193
    :cond_9a
    :goto_9a
    const-string p0, "zh"

    return-object p0
.end method
