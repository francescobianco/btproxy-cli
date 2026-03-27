.class Lfreemarker/core/Configurable$SettingStringParser;
.super Ljava/lang/Object;
.source "Configurable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/Configurable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingStringParser"
.end annotation


# instance fields
.field private ln:I

.field private p:I

.field private text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 3191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3192
    iput-object p1, p0, Lfreemarker/core/Configurable$SettingStringParser;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3193
    iput v0, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    .line 3194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lfreemarker/core/Configurable$SettingStringParser;->ln:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lfreemarker/core/Configurable$1;)V
    .registers 3

    .line 3186
    invoke-direct {p0, p1}, Lfreemarker/core/Configurable$SettingStringParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private fetchWord()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3307
    iget v0, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    iget v1, p0, Lfreemarker/core/Configurable$SettingStringParser;->ln:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b7

    .line 3310
    iget-object v1, p0, Lfreemarker/core/Configurable$SettingStringParser;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3311
    iget v1, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    const/16 v3, 0x27

    const/16 v4, 0x5c

    const/4 v5, 0x1

    if-eq v0, v3, :cond_71

    const/16 v3, 0x22

    if-ne v0, v3, :cond_1b

    goto :goto_71

    .line 3336
    :cond_1b
    iget-object v0, p0, Lfreemarker/core/Configurable$SettingStringParser;->text:Ljava/lang/String;

    iget v3, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3337
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_48

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_48

    if-eq v0, v4, :cond_48

    const/16 v3, 0x5f

    if-eq v0, v3, :cond_48

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_48

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_48

    const/16 v3, 0x21

    if-eq v0, v3, :cond_48

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_48

    const/16 v3, 0x3f

    if-eq v0, v3, :cond_48

    goto :goto_51

    .line 3341
    :cond_48
    iget v3, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    add-int/2addr v3, v5

    iput v3, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    .line 3342
    iget v6, p0, Lfreemarker/core/Configurable$SettingStringParser;->ln:I

    if-lt v3, v6, :cond_1b

    .line 3343
    :goto_51
    iget v3, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    if-eq v1, v3, :cond_5c

    .line 3346
    iget-object v0, p0, Lfreemarker/core/Configurable$SettingStringParser;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3344
    :cond_5c
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected character: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v1

    :cond_71
    :goto_71
    add-int/lit8 v3, v1, 0x1

    .line 3315
    iput v3, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    move v3, v2

    .line 3316
    :goto_76
    iget v6, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    iget v7, p0, Lfreemarker/core/Configurable$SettingStringParser;->ln:I

    if-ge v6, v7, :cond_92

    .line 3317
    iget-object v7, p0, Lfreemarker/core/Configurable$SettingStringParser;->text:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v3, :cond_8b

    if-ne v6, v4, :cond_88

    move v3, v5

    goto :goto_8c

    :cond_88
    if-ne v6, v0, :cond_8c

    goto :goto_92

    :cond_8b
    move v3, v2

    .line 3327
    :cond_8c
    :goto_8c
    iget v6, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    add-int/2addr v6, v5

    iput v6, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    goto :goto_76

    .line 3329
    :cond_92
    :goto_92
    iget v3, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    iget v4, p0, Lfreemarker/core/Configurable$SettingStringParser;->ln:I

    if-eq v3, v4, :cond_a2

    add-int/2addr v3, v5

    .line 3332
    iput v3, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    .line 3333
    iget-object v0, p0, Lfreemarker/core/Configurable$SettingStringParser;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3330
    :cond_a2
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Missing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v1

    .line 3307
    :cond_b7
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v1, "Unexpeced end of text"

    invoke-direct {v0, v1, v2, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v0
.end method


# virtual methods
.method fetchKeyword()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3288
    invoke-direct {p0}, Lfreemarker/core/Configurable$SettingStringParser;->fetchWord()Ljava/lang/String;

    move-result-object v0

    .line 3289
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    return-object v0

    .line 3290
    :cond_15
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Keyword expected, but a string value found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v1
.end method

.method fetchStringValue()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3280
    invoke-direct {p0}, Lfreemarker/core/Configurable$SettingStringParser;->fetchWord()Ljava/lang/String;

    move-result-object v0

    .line 3281
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3282
    :cond_14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3284
    :cond_1e
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->FTLStringLiteralDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method parseAsImportList()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3251
    :goto_5
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->skipWS()C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_e

    goto :goto_38

    .line 3253
    :cond_e
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->fetchStringValue()Ljava/lang/String;

    move-result-object v1

    .line 3255
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->skipWS()C

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v2, :cond_80

    .line 3258
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->fetchKeyword()Ljava/lang/String;

    move-result-object v3

    .line 3259
    const-string v5, "as"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 3262
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->skipWS()C

    move-result v3

    if-eq v3, v2, :cond_5f

    .line 3265
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->fetchStringValue()Ljava/lang/String;

    move-result-object v3

    .line 3267
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3269
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->skipWS()C

    move-result v1

    if-ne v1, v2, :cond_39

    :goto_38
    return-object v0

    :cond_39
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_44

    .line 3274
    iget v1, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    goto :goto_5

    .line 3271
    :cond_44
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected \",\" or the end of text but found \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4, v4}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v0

    .line 3263
    :cond_5f
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v1, "Unexpected end of text: expected gate hash name"

    invoke-direct {v0, v1, v4, v4}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v0

    .line 3259
    :cond_67
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \"as\", but found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3260
    invoke-static {v3}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4, v4}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v0

    .line 3256
    :cond_80
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v1, "Unexpected end of text: expected \"as\""

    invoke-direct {v0, v1, v4, v4}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v0
.end method

.method parseAsList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3234
    :goto_5
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->skipWS()C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_e

    goto :goto_1b

    .line 3236
    :cond_e
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->fetchStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3237
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->skipWS()C

    move-result v1

    if-ne v1, v2, :cond_1c

    :goto_1b
    return-object v0

    :cond_1c
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_27

    .line 3242
    iget v1, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    goto :goto_5

    .line 3239
    :cond_27
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected \",\" or the end of text but found \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v0
.end method

.method parseAsSegmentedList()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3203
    :goto_6
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->skipWS()C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_f

    goto :goto_31

    .line 3205
    :cond_f
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->fetchStringValue()Ljava/lang/String;

    move-result-object v2

    .line 3206
    invoke-virtual {p0}, Lfreemarker/core/Configurable$SettingStringParser;->skipWS()C

    move-result v4

    const/16 v5, 0x3a

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2a

    .line 3209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3210
    new-instance v7, Lfreemarker/core/Configurable$KeyValuePair;

    invoke-direct {v7, v2, v1}, Lfreemarker/core/Configurable$KeyValuePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_2a
    if-eqz v1, :cond_5b

    .line 3218
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2f
    if-ne v4, v3, :cond_32

    :goto_31
    return-object v0

    :cond_32
    const/16 v2, 0x2c

    if-eq v4, v2, :cond_54

    if-ne v4, v5, :cond_39

    goto :goto_54

    .line 3222
    :cond_39
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \",\" or \":\" or the end of text but found \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6, v6}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v0

    .line 3225
    :cond_54
    :goto_54
    iget v2, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    goto :goto_6

    .line 3213
    :cond_5b
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v1, "The very first list item must be followed by \":\" so it will be the key for the following sub-list."

    invoke-direct {v0, v1, v6, v6}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v0
.end method

.method skipWS()C
    .registers 3

    .line 3298
    :goto_0
    iget v0, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    iget v1, p0, Lfreemarker/core/Configurable$SettingStringParser;->ln:I

    if-ge v0, v1, :cond_1a

    .line 3299
    iget-object v1, p0, Lfreemarker/core/Configurable$SettingStringParser;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3300
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    .line 3301
    :cond_13
    iget v0, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/Configurable$SettingStringParser;->p:I

    goto :goto_0

    :cond_1a
    const/16 v0, 0x20

    return v0
.end method
