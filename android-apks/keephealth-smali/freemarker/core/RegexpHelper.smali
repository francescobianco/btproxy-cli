.class final Lfreemarker/core/RegexpHelper;
.super Ljava/lang/Object;
.source "RegexpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/RegexpHelper$PatternCacheKey;
    }
.end annotation


# static fields
.field private static final LOG:Lfreemarker/log/Logger;

.field private static final MAX_FLAG_WARNINGS_LOGGED:I = 0x19

.field static final RE_FLAG_CASE_INSENSITIVE:J

.field static final RE_FLAG_COMMENTS:J

.field static final RE_FLAG_DOTALL:J

.field static final RE_FLAG_FIRST_ONLY:J = 0x200000000L

.field static final RE_FLAG_MULTILINE:J

.field static final RE_FLAG_REGEXP:J = 0x100000000L

.field private static flagWarningsCnt:I

.field private static final flagWarningsCntSync:Ljava/lang/Object;

.field private static volatile flagWarningsEnabled:Z

.field private static final patternCache:Lfreemarker/cache/MruCacheStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    const-string v0, "freemarker.runtime"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/core/RegexpHelper;->LOG:Lfreemarker/log/Logger;

    .line 37
    invoke-virtual {v0}, Lfreemarker/log/Logger;->isWarnEnabled()Z

    move-result v0

    sput-boolean v0, Lfreemarker/core/RegexpHelper;->flagWarningsEnabled:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/core/RegexpHelper;->flagWarningsCntSync:Ljava/lang/Object;

    .line 42
    new-instance v0, Lfreemarker/cache/MruCacheStorage;

    const/16 v1, 0x32

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Lfreemarker/cache/MruCacheStorage;-><init>(II)V

    sput-object v0, Lfreemarker/core/RegexpHelper;->patternCache:Lfreemarker/cache/MruCacheStorage;

    const/4 v0, 0x2

    .line 49
    invoke-static {v0}, Lfreemarker/core/RegexpHelper;->intFlagToLong(I)J

    move-result-wide v0

    sput-wide v0, Lfreemarker/core/RegexpHelper;->RE_FLAG_CASE_INSENSITIVE:J

    const/16 v0, 0x8

    .line 51
    invoke-static {v0}, Lfreemarker/core/RegexpHelper;->intFlagToLong(I)J

    move-result-wide v0

    sput-wide v0, Lfreemarker/core/RegexpHelper;->RE_FLAG_MULTILINE:J

    const/4 v0, 0x4

    .line 53
    invoke-static {v0}, Lfreemarker/core/RegexpHelper;->intFlagToLong(I)J

    move-result-wide v0

    sput-wide v0, Lfreemarker/core/RegexpHelper;->RE_FLAG_COMMENTS:J

    const/16 v0, 0x20

    .line 55
    invoke-static {v0}, Lfreemarker/core/RegexpHelper;->intFlagToLong(I)J

    move-result-wide v0

    sput-wide v0, Lfreemarker/core/RegexpHelper;->RE_FLAG_DOTALL:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkNonRegexpFlags(Ljava/lang/String;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_TemplateModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    invoke-static {p0, p1, p2, v0}, Lfreemarker/core/RegexpHelper;->checkOnlyHasNonRegexpFlags(Ljava/lang/String;JZ)V

    return-void
.end method

.method static checkOnlyHasNonRegexpFlags(Ljava/lang/String;JZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_TemplateModelException;
        }
    .end annotation

    if-nez p3, :cond_7

    .line 183
    sget-boolean v0, Lfreemarker/core/RegexpHelper;->flagWarningsEnabled:Z

    if-nez v0, :cond_7

    return-void

    .line 186
    :cond_7
    sget-wide v0, Lfreemarker/core/RegexpHelper;->RE_FLAG_MULTILINE:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 187
    const-string p1, "m"

    goto :goto_26

    .line 188
    :cond_13
    sget-wide v0, Lfreemarker/core/RegexpHelper;->RE_FLAG_DOTALL:J

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 189
    const-string p1, "s"

    goto :goto_26

    .line 190
    :cond_1d
    sget-wide v0, Lfreemarker/core/RegexpHelper;->RE_FLAG_COMMENTS:J

    and-long/2addr p1, v0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_45

    .line 191
    const-string p1, "c"

    .line 196
    :goto_26
    const-string p2, " doesn\'t support the \""

    const-string v0, "\" flag without the \"r\" flag."

    const-string v1, "?"

    filled-new-array {v1, p0, p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    if-nez p3, :cond_3f

    .line 202
    new-instance p1, Lfreemarker/core/_ErrorDescriptionBuilder;

    invoke-direct {p1, p0}, Lfreemarker/core/_ErrorDescriptionBuilder;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lfreemarker/core/_ErrorDescriptionBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/RegexpHelper;->logFlagWarning(Ljava/lang/String;)V

    return-void

    .line 199
    :cond_3f
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    invoke-direct {p1, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p1

    :cond_45
    return-void
.end method

.method static getPattern(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 67
    new-instance v0, Lfreemarker/core/RegexpHelper$PatternCacheKey;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/RegexpHelper$PatternCacheKey;-><init>(Ljava/lang/String;I)V

    .line 71
    sget-object v1, Lfreemarker/core/RegexpHelper;->patternCache:Lfreemarker/cache/MruCacheStorage;

    monitor-enter v1

    .line 72
    :try_start_8
    invoke-virtual {v1, v0}, Lfreemarker/cache/MruCacheStorage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 73
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_31

    if-eqz v2, :cond_12

    return-object v2

    .line 79
    :cond_12
    :try_start_12
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0
    :try_end_16
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_12 .. :try_end_16} :catch_1f

    .line 84
    monitor-enter v1

    .line 85
    :try_start_17
    invoke-virtual {v1, v0, p0}, Lfreemarker/cache/MruCacheStorage;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    monitor-exit v1

    return-object p0

    :catchall_1c
    move-exception p0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw p0

    :catch_1f
    move-exception p0

    .line 81
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    const-string v0, "Malformed regular expression: "

    new-instance v1, Lfreemarker/core/_DelayedGetMessage;

    invoke-direct {v1, p0}, Lfreemarker/core/_DelayedGetMessage;-><init>(Ljava/lang/Throwable;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p1

    :catchall_31
    move-exception p0

    .line 73
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method private static intFlagToLong(I)J
    .registers 5

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static logFlagWarning(Ljava/lang/String;)V
    .registers 5

    .line 158
    sget-boolean v0, Lfreemarker/core/RegexpHelper;->flagWarningsEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 161
    :cond_5
    sget-object v0, Lfreemarker/core/RegexpHelper;->flagWarningsCntSync:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_8
    sget v1, Lfreemarker/core/RegexpHelper;->flagWarningsCnt:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_43

    add-int/lit8 v3, v1, 0x1

    .line 164
    sput v3, Lfreemarker/core/RegexpHelper;->flagWarningsCnt:I

    .line 169
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_48

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " This will be an error in some later FreeMarker version!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_3d

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " [Will not log more regular expression flag problems until restart!]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 174
    :cond_3d
    sget-object v0, Lfreemarker/core/RegexpHelper;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0, p0}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    return-void

    :cond_43
    const/4 p0, 0x0

    .line 166
    :try_start_44
    sput-boolean p0, Lfreemarker/core/RegexpHelper;->flagWarningsEnabled:Z

    .line 167
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    .line 169
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method static parseFlagString(Ljava/lang/String;)J
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 121
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_65

    .line 122
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x63

    if-eq v3, v4, :cond_5f

    const/16 v4, 0x66

    if-eq v3, v4, :cond_59

    const/16 v4, 0x69

    if-eq v3, v4, :cond_56

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_53

    const/16 v4, 0x72

    if-eq v3, v4, :cond_4d

    const/16 v4, 0x73

    if-eq v3, v4, :cond_4a

    .line 143
    sget-boolean v4, Lfreemarker/core/RegexpHelper;->flagWarningsEnabled:Z

    if-eqz v4, :cond_62

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unrecognized regular expression flag: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-static {v3}, Lfreemarker/core/RegexpHelper;->logFlagWarning(Ljava/lang/String;)V

    goto :goto_62

    .line 134
    :cond_4a
    sget-wide v3, Lfreemarker/core/RegexpHelper;->RE_FLAG_DOTALL:J

    goto :goto_61

    :cond_4d
    const-wide v3, 0x100000000L

    goto :goto_61

    .line 128
    :cond_53
    sget-wide v3, Lfreemarker/core/RegexpHelper;->RE_FLAG_MULTILINE:J

    goto :goto_61

    .line 125
    :cond_56
    sget-wide v3, Lfreemarker/core/RegexpHelper;->RE_FLAG_CASE_INSENSITIVE:J

    goto :goto_61

    :cond_59
    const-wide v3, 0x200000000L

    goto :goto_61

    .line 131
    :cond_5f
    sget-wide v3, Lfreemarker/core/RegexpHelper;->RE_FLAG_COMMENTS:J

    :goto_61
    or-long/2addr v0, v3

    :cond_62
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_65
    return-wide v0
.end method
