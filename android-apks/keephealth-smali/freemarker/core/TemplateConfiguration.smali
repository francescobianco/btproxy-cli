.class public final Lfreemarker/core/TemplateConfiguration;
.super Lfreemarker/core/Configurable;
.source "TemplateConfiguration.java"

# interfaces
.implements Lfreemarker/core/ParserConfiguration;


# instance fields
.field private autoEscapingPolicy:Ljava/lang/Integer;

.field private encoding:Ljava/lang/String;

.field private interpolationSyntax:Ljava/lang/Integer;

.field private namingConvention:Ljava/lang/Integer;

.field private outputFormat:Lfreemarker/core/OutputFormat;

.field private parentConfigurationSet:Z

.field private recognizeStandardFileExtensions:Ljava/lang/Boolean;

.field private strictSyntaxMode:Ljava/lang/Boolean;

.field private tabSize:Ljava/lang/Integer;

.field private tagSyntax:Ljava/lang/Integer;

.field private whitespaceStripping:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 97
    invoke-static {}, Lfreemarker/template/Configuration;->getDefaultConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/Configurable;-><init>(Lfreemarker/core/Configurable;)V

    return-void
.end method

.method private checkParentConfigurationSet()V
    .registers 3

    .line 654
    iget-boolean v0, p0, Lfreemarker/core/TemplateConfiguration;->parentConfigurationSet:Z

    if-eqz v0, :cond_5

    return-void

    .line 655
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The TemplateConfiguration wasn\'t associated with a Configuration yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getNonNullParentConfiguration()Lfreemarker/template/Configuration;
    .registers 2

    .line 153
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->checkParentConfigurationSet()V

    .line 154
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getParent()Lfreemarker/core/Configurable;

    move-result-object v0

    check-cast v0, Lfreemarker/template/Configuration;

    return-object v0
.end method

.method private hasAnyConfigurableSet()Z
    .registers 2

    .line 661
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isAPIBuiltinEnabledSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 662
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isArithmeticEngineSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 663
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isAutoFlushSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 664
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isAutoImportsSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 665
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isAutoIncludesSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 666
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isBooleanFormatSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 667
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isClassicCompatibleSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 668
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isCustomDateFormatsSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 669
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isCustomNumberFormatsSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 670
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isDateFormatSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 671
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isDateTimeFormatSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 672
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isLazyImportsSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 673
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isLazyAutoImportsSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 674
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isLocaleSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 675
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isLogTemplateExceptionsSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 676
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isWrapUncheckedExceptionsSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 677
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isNewBuiltinClassResolverSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 678
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isTruncateBuiltinAlgorithmSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 679
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isNumberFormatSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 680
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isObjectWrapperSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 681
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isOutputEncodingSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 682
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isShowErrorTipsSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 683
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isSQLDateAndTimeTimeZoneSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 684
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isTemplateExceptionHandlerSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 685
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isAttemptExceptionReporterSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 686
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isTimeFormatSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 687
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isTimeZoneSet()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 688
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isURLEscapingCharsetSet()Z

    move-result v0

    if-eqz v0, :cond_a9

    goto :goto_ab

    :cond_a9
    const/4 v0, 0x0

    goto :goto_ac

    :cond_ab
    :goto_ab
    const/4 v0, 0x1

    :goto_ac
    return v0
.end method

.method private mergeLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    if-nez p2, :cond_6

    return-object p1

    .line 709
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p2

    .line 710
    :cond_d
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    return-object p1

    .line 712
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 713
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 714
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private mergeMaps(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
    .registers 6

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    if-nez p2, :cond_6

    return-object p1

    .line 694
    :cond_6
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_d

    return-object p2

    .line 695
    :cond_d
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_14

    return-object p1

    .line 697
    :cond_14
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p3, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 698
    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 699
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 700
    invoke-virtual {p3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 702
    :cond_43
    invoke-virtual {p3, p2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-object p3
.end method


# virtual methods
.method public apply(Lfreemarker/template/Template;)V
    .registers 6

    .line 299
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->getNonNullParentConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    .line 300
    invoke-virtual {p1}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v1

    if-ne v1, v0, :cond_23f

    .line 306
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isAPIBuiltinEnabledSet()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lfreemarker/template/Template;->isAPIBuiltinEnabledSet()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 307
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isAPIBuiltinEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setAPIBuiltinEnabled(Z)V

    .line 309
    :cond_1d
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isArithmeticEngineSet()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lfreemarker/template/Template;->isArithmeticEngineSet()Z

    move-result v0

    if-nez v0, :cond_30

    .line 310
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setArithmeticEngine(Lfreemarker/core/ArithmeticEngine;)V

    .line 312
    :cond_30
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isAutoFlushSet()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lfreemarker/template/Template;->isAutoFlushSet()Z

    move-result v0

    if-nez v0, :cond_43

    .line 313
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getAutoFlush()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setAutoFlush(Z)V

    .line 315
    :cond_43
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isBooleanFormatSet()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Lfreemarker/template/Template;->isBooleanFormatSet()Z

    move-result v0

    if-nez v0, :cond_56

    .line 316
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getBooleanFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setBooleanFormat(Ljava/lang/String;)V

    .line 318
    :cond_56
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isClassicCompatibleSet()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Lfreemarker/template/Template;->isClassicCompatibleSet()Z

    move-result v0

    if-nez v0, :cond_69

    .line 319
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getClassicCompatibleAsInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setClassicCompatibleAsInt(I)V

    .line 321
    :cond_69
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isCustomDateFormatsSet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7f

    .line 323
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getCustomDateFormats()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/template/Template;->getCustomDateFormatsWithoutFallback()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lfreemarker/core/TemplateConfiguration;->mergeMaps(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    .line 322
    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setCustomDateFormats(Ljava/util/Map;)V

    .line 325
    :cond_7f
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isCustomNumberFormatsSet()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 327
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getCustomNumberFormats()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/template/Template;->getCustomNumberFormatsWithoutFallback()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lfreemarker/core/TemplateConfiguration;->mergeMaps(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    .line 326
    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setCustomNumberFormats(Ljava/util/Map;)V

    .line 329
    :cond_94
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isDateFormatSet()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual {p1}, Lfreemarker/template/Template;->isDateFormatSet()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 330
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setDateFormat(Ljava/lang/String;)V

    .line 332
    :cond_a7
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isDateTimeFormatSet()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {p1}, Lfreemarker/template/Template;->isDateTimeFormatSet()Z

    move-result v0

    if-nez v0, :cond_ba

    .line 333
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getDateTimeFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setDateTimeFormat(Ljava/lang/String;)V

    .line 335
    :cond_ba
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isEncodingSet()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-virtual {p1}, Lfreemarker/template/Template;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_cd

    .line 336
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setEncoding(Ljava/lang/String;)V

    .line 338
    :cond_cd
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isLocaleSet()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-virtual {p1}, Lfreemarker/template/Template;->isLocaleSet()Z

    move-result v0

    if-nez v0, :cond_e0

    .line 339
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setLocale(Ljava/util/Locale;)V

    .line 341
    :cond_e0
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isLogTemplateExceptionsSet()Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-virtual {p1}, Lfreemarker/template/Template;->isLogTemplateExceptionsSet()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 342
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getLogTemplateExceptions()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setLogTemplateExceptions(Z)V

    .line 344
    :cond_f3
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isWrapUncheckedExceptionsSet()Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-virtual {p1}, Lfreemarker/template/Template;->isWrapUncheckedExceptionsSet()Z

    move-result v0

    if-nez v0, :cond_106

    .line 345
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getWrapUncheckedExceptions()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setWrapUncheckedExceptions(Z)V

    .line 347
    :cond_106
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isNewBuiltinClassResolverSet()Z

    move-result v0

    if-eqz v0, :cond_119

    invoke-virtual {p1}, Lfreemarker/template/Template;->isNewBuiltinClassResolverSet()Z

    move-result v0

    if-nez v0, :cond_119

    .line 348
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getNewBuiltinClassResolver()Lfreemarker/core/TemplateClassResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setNewBuiltinClassResolver(Lfreemarker/core/TemplateClassResolver;)V

    .line 350
    :cond_119
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isTruncateBuiltinAlgorithmSet()Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-virtual {p1}, Lfreemarker/template/Template;->isTruncateBuiltinAlgorithmSet()Z

    move-result v0

    if-nez v0, :cond_12c

    .line 351
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getTruncateBuiltinAlgorithm()Lfreemarker/core/TruncateBuiltinAlgorithm;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setTruncateBuiltinAlgorithm(Lfreemarker/core/TruncateBuiltinAlgorithm;)V

    .line 353
    :cond_12c
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isNumberFormatSet()Z

    move-result v0

    if-eqz v0, :cond_13f

    invoke-virtual {p1}, Lfreemarker/template/Template;->isNumberFormatSet()Z

    move-result v0

    if-nez v0, :cond_13f

    .line 354
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getNumberFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setNumberFormat(Ljava/lang/String;)V

    .line 356
    :cond_13f
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isObjectWrapperSet()Z

    move-result v0

    if-eqz v0, :cond_152

    invoke-virtual {p1}, Lfreemarker/template/Template;->isObjectWrapperSet()Z

    move-result v0

    if-nez v0, :cond_152

    .line 357
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    .line 359
    :cond_152
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isOutputEncodingSet()Z

    move-result v0

    if-eqz v0, :cond_165

    invoke-virtual {p1}, Lfreemarker/template/Template;->isOutputEncodingSet()Z

    move-result v0

    if-nez v0, :cond_165

    .line 360
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getOutputEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setOutputEncoding(Ljava/lang/String;)V

    .line 362
    :cond_165
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isShowErrorTipsSet()Z

    move-result v0

    if-eqz v0, :cond_178

    invoke-virtual {p1}, Lfreemarker/template/Template;->isShowErrorTipsSet()Z

    move-result v0

    if-nez v0, :cond_178

    .line 363
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getShowErrorTips()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setShowErrorTips(Z)V

    .line 365
    :cond_178
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isSQLDateAndTimeTimeZoneSet()Z

    move-result v0

    if-eqz v0, :cond_18b

    invoke-virtual {p1}, Lfreemarker/template/Template;->isSQLDateAndTimeTimeZoneSet()Z

    move-result v0

    if-nez v0, :cond_18b

    .line 366
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getSQLDateAndTimeTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setSQLDateAndTimeTimeZone(Ljava/util/TimeZone;)V

    .line 368
    :cond_18b
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isTemplateExceptionHandlerSet()Z

    move-result v0

    if-eqz v0, :cond_19e

    invoke-virtual {p1}, Lfreemarker/template/Template;->isTemplateExceptionHandlerSet()Z

    move-result v0

    if-nez v0, :cond_19e

    .line 369
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getTemplateExceptionHandler()Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    .line 371
    :cond_19e
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isAttemptExceptionReporterSet()Z

    move-result v0

    if-eqz v0, :cond_1b1

    invoke-virtual {p1}, Lfreemarker/template/Template;->isAttemptExceptionReporterSet()Z

    move-result v0

    if-nez v0, :cond_1b1

    .line 372
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getAttemptExceptionReporter()Lfreemarker/template/AttemptExceptionReporter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setAttemptExceptionReporter(Lfreemarker/template/AttemptExceptionReporter;)V

    .line 374
    :cond_1b1
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isTimeFormatSet()Z

    move-result v0

    if-eqz v0, :cond_1c4

    invoke-virtual {p1}, Lfreemarker/template/Template;->isTimeFormatSet()Z

    move-result v0

    if-nez v0, :cond_1c4

    .line 375
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getTimeFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setTimeFormat(Ljava/lang/String;)V

    .line 377
    :cond_1c4
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isTimeZoneSet()Z

    move-result v0

    if-eqz v0, :cond_1d7

    invoke-virtual {p1}, Lfreemarker/template/Template;->isTimeZoneSet()Z

    move-result v0

    if-nez v0, :cond_1d7

    .line 378
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setTimeZone(Ljava/util/TimeZone;)V

    .line 380
    :cond_1d7
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isURLEscapingCharsetSet()Z

    move-result v0

    if-eqz v0, :cond_1ea

    invoke-virtual {p1}, Lfreemarker/template/Template;->isURLEscapingCharsetSet()Z

    move-result v0

    if-nez v0, :cond_1ea

    .line 381
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getURLEscapingCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setURLEscapingCharset(Ljava/lang/String;)V

    .line 383
    :cond_1ea
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isLazyImportsSet()Z

    move-result v0

    if-eqz v0, :cond_1fd

    invoke-virtual {p1}, Lfreemarker/template/Template;->isLazyImportsSet()Z

    move-result v0

    if-nez v0, :cond_1fd

    .line 384
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getLazyImports()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setLazyImports(Z)V

    .line 386
    :cond_1fd
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isLazyAutoImportsSet()Z

    move-result v0

    if-eqz v0, :cond_210

    invoke-virtual {p1}, Lfreemarker/template/Template;->isLazyAutoImportsSet()Z

    move-result v0

    if-nez v0, :cond_210

    .line 387
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getLazyAutoImports()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setLazyAutoImports(Ljava/lang/Boolean;)V

    .line 389
    :cond_210
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isAutoImportsSet()Z

    move-result v0

    if-eqz v0, :cond_226

    .line 394
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getAutoImports()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/template/Template;->getAutoImportsWithoutFallback()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lfreemarker/core/TemplateConfiguration;->mergeMaps(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setAutoImports(Ljava/util/Map;)V

    .line 396
    :cond_226
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->isAutoIncludesSet()Z

    move-result v0

    if-eqz v0, :cond_23b

    .line 397
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getAutoIncludes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/template/Template;->getAutoIncludesWithoutFallback()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfreemarker/core/TemplateConfiguration;->mergeLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->setAutoIncludes(Ljava/util/List;)V

    .line 400
    :cond_23b
    invoke-virtual {p0, p1, v1}, Lfreemarker/core/TemplateConfiguration;->copyDirectCustomAttributes(Lfreemarker/core/Configurable;Z)V

    return-void

    .line 302
    :cond_23f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The argument Template doesn\'t belong to the same Configuration as the TemplateConfiguration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAutoEscapingPolicy()I
    .registers 2

    .line 505
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->autoEscapingPolicy:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11

    .line 506
    :cond_9
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->getNonNullParentConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getAutoEscapingPolicy()I

    move-result v0

    :goto_11
    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 589
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->getNonNullParentConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getIncompatibleImprovements()Lfreemarker/template/Version;
    .registers 2

    .line 650
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->getNonNullParentConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    return-object v0
.end method

.method public getInterpolationSyntax()I
    .registers 2

    .line 437
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->interpolationSyntax:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11

    .line 438
    :cond_9
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->getNonNullParentConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getInterpolationSyntax()I

    move-result v0

    :goto_11
    return v0
.end method

.method public getNamingConvention()I
    .registers 2

    .line 460
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->namingConvention:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11

    .line 461
    :cond_9
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->getNonNullParentConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getNamingConvention()I

    move-result v0

    :goto_11
    return v0
.end method

.method public getOutputFormat()Lfreemarker/core/OutputFormat;
    .registers 2

    .line 528
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->outputFormat:Lfreemarker/core/OutputFormat;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->getNonNullParentConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getOutputFormat()Lfreemarker/core/OutputFormat;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getParentConfiguration()Lfreemarker/template/Configuration;
    .registers 2

    .line 149
    iget-boolean v0, p0, Lfreemarker/core/TemplateConfiguration;->parentConfigurationSet:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getParent()Lfreemarker/core/Configurable;

    move-result-object v0

    check-cast v0, Lfreemarker/template/Configuration;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getRecognizeStandardFileExtensions()Z
    .registers 2

    .line 549
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->recognizeStandardFileExtensions:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_11

    .line 550
    :cond_9
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->getNonNullParentConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getRecognizeStandardFileExtensions()Z

    move-result v0

    :goto_11
    return v0
.end method

.method public getStrictSyntaxMode()Z
    .registers 2

    .line 571
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->strictSyntaxMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_11

    .line 572
    :cond_9
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->getNonNullParentConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getStrictSyntaxMode()Z

    move-result v0

    :goto_11
    return v0
.end method

.method public getTabSize()I
    .registers 2

    .line 629
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->tabSize:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11

    .line 630
    :cond_9
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->getNonNullParentConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getTabSize()I

    move-result v0

    :goto_11
    return v0
.end method

.method public getTagSyntax()I
    .registers 2

    .line 415
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->tagSyntax:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11

    :cond_9
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->getNonNullParentConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getTagSyntax()I

    move-result v0

    :goto_11
    return v0
.end method

.method public getWhitespaceStripping()Z
    .registers 2

    .line 482
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->whitespaceStripping:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_11

    .line 483
    :cond_9
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->getNonNullParentConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getWhitespaceStripping()Z

    move-result v0

    :goto_11
    return v0
.end method

.method public isAutoEscapingPolicySet()Z
    .registers 2

    .line 513
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->autoEscapingPolicy:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEncodingSet()Z
    .registers 2

    .line 611
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isInterpolationSyntaxSet()Z
    .registers 2

    .line 445
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->interpolationSyntax:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNamingConventionSet()Z
    .registers 2

    .line 468
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->namingConvention:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isOutputFormatSet()Z
    .registers 2

    .line 535
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->outputFormat:Lfreemarker/core/OutputFormat;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isRecognizeStandardFileExtensionsSet()Z
    .registers 2

    .line 557
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->recognizeStandardFileExtensions:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isStrictSyntaxModeSet()Z
    .registers 2

    .line 579
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->strictSyntaxMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isTabSizeSet()Z
    .registers 2

    .line 639
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->tabSize:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isTagSyntaxSet()Z
    .registers 2

    .line 422
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->tagSyntax:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isWhitespaceStrippingSet()Z
    .registers 2

    .line 490
    iget-object v0, p0, Lfreemarker/core/TemplateConfiguration;->whitespaceStripping:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public merge(Lfreemarker/core/TemplateConfiguration;)V
    .registers 5

    .line 163
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isAPIBuiltinEnabledSet()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 164
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isAPIBuiltinEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setAPIBuiltinEnabled(Z)V

    .line 166
    :cond_d
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isArithmeticEngineSet()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 167
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setArithmeticEngine(Lfreemarker/core/ArithmeticEngine;)V

    .line 169
    :cond_1a
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isAutoEscapingPolicySet()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 170
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getAutoEscapingPolicy()I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setAutoEscapingPolicy(I)V

    .line 172
    :cond_27
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isAutoFlushSet()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 173
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getAutoFlush()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setAutoFlush(Z)V

    .line 175
    :cond_34
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isBooleanFormatSet()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 176
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getBooleanFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setBooleanFormat(Ljava/lang/String;)V

    .line 178
    :cond_41
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isClassicCompatibleSet()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 179
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getClassicCompatibleAsInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setClassicCompatibleAsInt(I)V

    .line 181
    :cond_4e
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isCustomDateFormatsSet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    .line 182
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getCustomDateFormats()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getCustomDateFormats()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lfreemarker/core/TemplateConfiguration;->mergeMaps(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setCustomDateFormats(Ljava/util/Map;)V

    .line 184
    :cond_64
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isCustomNumberFormatsSet()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 185
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getCustomNumberFormats()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getCustomNumberFormats()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lfreemarker/core/TemplateConfiguration;->mergeMaps(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setCustomNumberFormats(Ljava/util/Map;)V

    .line 187
    :cond_79
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isDateFormatSet()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 188
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setDateFormat(Ljava/lang/String;)V

    .line 190
    :cond_86
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isDateTimeFormatSet()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 191
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getDateTimeFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setDateTimeFormat(Ljava/lang/String;)V

    .line 193
    :cond_93
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isEncodingSet()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 194
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setEncoding(Ljava/lang/String;)V

    .line 196
    :cond_a0
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isLocaleSet()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 197
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setLocale(Ljava/util/Locale;)V

    .line 199
    :cond_ad
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isLogTemplateExceptionsSet()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 200
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getLogTemplateExceptions()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setLogTemplateExceptions(Z)V

    .line 202
    :cond_ba
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isWrapUncheckedExceptionsSet()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 203
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getWrapUncheckedExceptions()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setWrapUncheckedExceptions(Z)V

    .line 205
    :cond_c7
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isNamingConventionSet()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 206
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getNamingConvention()I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setNamingConvention(I)V

    .line 208
    :cond_d4
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isNewBuiltinClassResolverSet()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 209
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getNewBuiltinClassResolver()Lfreemarker/core/TemplateClassResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setNewBuiltinClassResolver(Lfreemarker/core/TemplateClassResolver;)V

    .line 211
    :cond_e1
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isTruncateBuiltinAlgorithmSet()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 212
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getTruncateBuiltinAlgorithm()Lfreemarker/core/TruncateBuiltinAlgorithm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setTruncateBuiltinAlgorithm(Lfreemarker/core/TruncateBuiltinAlgorithm;)V

    .line 214
    :cond_ee
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isNumberFormatSet()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 215
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getNumberFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setNumberFormat(Ljava/lang/String;)V

    .line 217
    :cond_fb
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isObjectWrapperSet()Z

    move-result v0

    if-eqz v0, :cond_108

    .line 218
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    .line 220
    :cond_108
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isOutputEncodingSet()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 221
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getOutputEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setOutputEncoding(Ljava/lang/String;)V

    .line 223
    :cond_115
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isOutputFormatSet()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 224
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getOutputFormat()Lfreemarker/core/OutputFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setOutputFormat(Lfreemarker/core/OutputFormat;)V

    .line 226
    :cond_122
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isRecognizeStandardFileExtensionsSet()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 227
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getRecognizeStandardFileExtensions()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setRecognizeStandardFileExtensions(Z)V

    .line 229
    :cond_12f
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isShowErrorTipsSet()Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 230
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getShowErrorTips()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setShowErrorTips(Z)V

    .line 232
    :cond_13c
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isSQLDateAndTimeTimeZoneSet()Z

    move-result v0

    if-eqz v0, :cond_149

    .line 233
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getSQLDateAndTimeTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setSQLDateAndTimeTimeZone(Ljava/util/TimeZone;)V

    .line 235
    :cond_149
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isStrictSyntaxModeSet()Z

    move-result v0

    if-eqz v0, :cond_156

    .line 236
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getStrictSyntaxMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setStrictSyntaxMode(Z)V

    .line 238
    :cond_156
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isTagSyntaxSet()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 239
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getTagSyntax()I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setTagSyntax(I)V

    .line 241
    :cond_163
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isInterpolationSyntaxSet()Z

    move-result v0

    if-eqz v0, :cond_170

    .line 242
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getInterpolationSyntax()I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setInterpolationSyntax(I)V

    .line 244
    :cond_170
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isTemplateExceptionHandlerSet()Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 245
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getTemplateExceptionHandler()Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    .line 247
    :cond_17d
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isAttemptExceptionReporterSet()Z

    move-result v0

    if-eqz v0, :cond_18a

    .line 248
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getAttemptExceptionReporter()Lfreemarker/template/AttemptExceptionReporter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setAttemptExceptionReporter(Lfreemarker/template/AttemptExceptionReporter;)V

    .line 250
    :cond_18a
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isTimeFormatSet()Z

    move-result v0

    if-eqz v0, :cond_197

    .line 251
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getTimeFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setTimeFormat(Ljava/lang/String;)V

    .line 253
    :cond_197
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isTimeZoneSet()Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 254
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setTimeZone(Ljava/util/TimeZone;)V

    .line 256
    :cond_1a4
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isURLEscapingCharsetSet()Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 257
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getURLEscapingCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setURLEscapingCharset(Ljava/lang/String;)V

    .line 259
    :cond_1b1
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isWhitespaceStrippingSet()Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 260
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getWhitespaceStripping()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setWhitespaceStripping(Z)V

    .line 262
    :cond_1be
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isTabSizeSet()Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 263
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getTabSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setTabSize(I)V

    .line 265
    :cond_1cb
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isLazyImportsSet()Z

    move-result v0

    if-eqz v0, :cond_1d8

    .line 266
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getLazyImports()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setLazyImports(Z)V

    .line 268
    :cond_1d8
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isLazyAutoImportsSet()Z

    move-result v0

    if-eqz v0, :cond_1e5

    .line 269
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getLazyAutoImports()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setLazyAutoImports(Ljava/lang/Boolean;)V

    .line 271
    :cond_1e5
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isAutoImportsSet()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1fb

    .line 272
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getAutoImportsWithoutFallback()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getAutoImportsWithoutFallback()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lfreemarker/core/TemplateConfiguration;->mergeMaps(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setAutoImports(Ljava/util/Map;)V

    .line 274
    :cond_1fb
    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->isAutoIncludesSet()Z

    move-result v0

    if-eqz v0, :cond_210

    .line 275
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getAutoIncludesWithoutFallback()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/TemplateConfiguration;->getAutoIncludesWithoutFallback()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lfreemarker/core/TemplateConfiguration;->mergeLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateConfiguration;->setAutoIncludes(Ljava/util/List;)V

    .line 278
    :cond_210
    invoke-virtual {p1, p0, v1}, Lfreemarker/core/TemplateConfiguration;->copyDirectCustomAttributes(Lfreemarker/core/Configurable;Z)V

    return-void
.end method

.method public setAutoEscapingPolicy(I)V
    .registers 2

    .line 497
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->validateAutoEscapingPolicyValue(I)V

    .line 498
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TemplateConfiguration;->autoEscapingPolicy:Ljava/lang/Integer;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 606
    const-string v0, "encoding"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    iput-object p1, p0, Lfreemarker/core/TemplateConfiguration;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setInterpolationSyntax(I)V
    .registers 2

    .line 429
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->valideInterpolationSyntaxValue(I)V

    .line 430
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TemplateConfiguration;->interpolationSyntax:Ljava/lang/Integer;

    return-void
.end method

.method public setNamingConvention(I)V
    .registers 2

    .line 452
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->validateNamingConventionValue(I)V

    .line 453
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TemplateConfiguration;->namingConvention:Ljava/lang/Integer;

    return-void
.end method

.method public setOutputFormat(Lfreemarker/core/OutputFormat;)V
    .registers 3

    .line 520
    const-string v0, "outputFormat"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    iput-object p1, p0, Lfreemarker/core/TemplateConfiguration;->outputFormat:Lfreemarker/core/OutputFormat;

    return-void
.end method

.method setParent(Lfreemarker/core/Configurable;)V
    .registers 4

    .line 105
    const-string v0, "cfg"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    instance-of v0, p1, Lfreemarker/template/Configuration;

    if-eqz v0, :cond_41

    .line 110
    iget-boolean v0, p0, Lfreemarker/core/TemplateConfiguration;->parentConfigurationSet:Z

    if-eqz v0, :cond_1c

    .line 111
    invoke-virtual {p0}, Lfreemarker/core/TemplateConfiguration;->getParent()Lfreemarker/core/Configurable;

    move-result-object v0

    if-ne v0, p1, :cond_14

    return-void

    .line 112
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This TemplateConfiguration is already associated with a different Configuration instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_1c
    move-object v0, p1

    check-cast v0, Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_22:I

    if-ge v0, v1, :cond_3a

    .line 119
    invoke-direct {p0}, Lfreemarker/core/TemplateConfiguration;->hasAnyConfigurableSet()Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_3a

    .line 120
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This TemplateConfiguration can\'t be associated to a Configuration that has incompatibleImprovements less than 2.3.22, because it changes non-parser settings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_3a
    :goto_3a
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setParent(Lfreemarker/core/Configurable;)V

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lfreemarker/core/TemplateConfiguration;->parentConfigurationSet:Z

    return-void

    .line 107
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The parent of a TemplateConfiguration can only be a Configuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParentConfiguration(Lfreemarker/template/Configuration;)V
    .registers 2

    .line 142
    invoke-virtual {p0, p1}, Lfreemarker/core/TemplateConfiguration;->setParent(Lfreemarker/core/Configurable;)V

    return-void
.end method

.method public setRecognizeStandardFileExtensions(Z)V
    .registers 2

    .line 542
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TemplateConfiguration;->recognizeStandardFileExtensions:Ljava/lang/Boolean;

    return-void
.end method

.method public setStrictBeanModels(Z)V
    .registers 3

    .line 584
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 585
    const-string v0, "Setting strictBeanModels on TemplateConfiguration level isn\'t supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStrictSyntaxMode(Z)V
    .registers 2

    .line 564
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TemplateConfiguration;->strictSyntaxMode:Ljava/lang/Boolean;

    return-void
.end method

.method public setTabSize(I)V
    .registers 2

    .line 620
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TemplateConfiguration;->tabSize:Ljava/lang/Integer;

    return-void
.end method

.method public setTagSyntax(I)V
    .registers 2

    .line 407
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->valideTagSyntaxValue(I)V

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TemplateConfiguration;->tagSyntax:Ljava/lang/Integer;

    return-void
.end method

.method public setWhitespaceStripping(Z)V
    .registers 2

    .line 475
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TemplateConfiguration;->whitespaceStripping:Ljava/lang/Boolean;

    return-void
.end method
