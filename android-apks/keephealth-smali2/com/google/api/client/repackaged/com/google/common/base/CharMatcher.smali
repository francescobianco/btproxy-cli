.class public abstract Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/api/client/repackaged/com/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$BitSetMatcher;,
        Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$NegatedFastMatcher;,
        Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;,
        Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;,
        Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$And;,
        Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$NegatedMatcher;,
        Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/api/client/repackaged/com/google/common/base/Predicate<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final ASCII:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final BREAKING_WHITESPACE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final DIGIT:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field private static final DISTINCT_CHARS:I = 0x10000

.field public static final INVISIBLE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final JAVA_DIGIT:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final JAVA_ISO_CONTROL:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final JAVA_LETTER:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final JAVA_LOWER_CASE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final JAVA_UPPER_CASE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field private static final NINES:Ljava/lang/String;

.field public static final NONE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final SINGLE_WIDTH:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final WHITESPACE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field static final WHITESPACE_MULTIPLIER:I = 0x6449bf0a

.field static final WHITESPACE_SHIFT:I

.field static final WHITESPACE_TABLE:Ljava/lang/String; = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\u000c\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000"

.field private static final ZEROES:Ljava/lang/String; = "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"


# instance fields
.field final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 67
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$1;

    invoke-direct {v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$1;-><init>()V

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 100
    const-string v0, "CharMatcher.ASCII"

    const/4 v1, 0x0

    const/16 v2, 0x7f

    invoke-static {v1, v2, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->ASCII:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v1

    .line 139
    :goto_1a
    const-string v5, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    if-ge v4, v3, :cond_2b

    .line 140
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, 0x9

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 142
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->NINES:Ljava/lang/String;

    .line 150
    new-instance v4, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v6, "CharMatcher.DIGIT"

    invoke-direct {v4, v6, v5, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v4, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->DIGIT:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 158
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$2;

    const-string v4, "CharMatcher.JAVA_DIGIT"

    invoke-direct {v0, v4}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 169
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$3;

    const-string v4, "CharMatcher.JAVA_LETTER"

    invoke-direct {v0, v4}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 179
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$4;

    const-string v4, "CharMatcher.JAVA_LETTER_OR_DIGIT"

    invoke-direct {v0, v4}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 190
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$5;

    const-string v4, "CharMatcher.JAVA_UPPER_CASE"

    invoke-direct {v0, v4}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 201
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$6;

    const-string v4, "CharMatcher.JAVA_LOWER_CASE"

    invoke-direct {v0, v4}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 212
    invoke-static {v1, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->inRange(CC)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x9f

    invoke-static {v2, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->inRange(CC)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->or(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v0

    const-string v1, "CharMatcher.JAVA_ISO_CONTROL"

    invoke-virtual {v0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 222
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;

    const-string v1, "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u2066\u2067\u2068\u2069\u206a\u3000\ud800\ufeff\ufff9\ufffa"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, " \u00a0\u00ad\u0604\u061c\u06dd\u070f\u1680\u180e\u200f\u202f\u2064\u2066\u2067\u2068\u2069\u206f\u3000\uf8ff\ufeff\ufff9\ufffb"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v4, "CharMatcher.INVISIBLE"

    invoke-direct {v0, v4, v1, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->INVISIBLE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 247
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;

    const-string v1, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v4, "CharMatcher.SINGLE_WIDTH"

    invoke-direct {v0, v4, v1, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->SINGLE_WIDTH:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 252
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$7;

    const-string v1, "CharMatcher.ANY"

    invoke-direct {v0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->ANY:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 328
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$8;

    const-string v1, "CharMatcher.NONE"

    invoke-direct {v0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->NONE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 1358
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    sput v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->WHITESPACE_SHIFT:I

    .line 1371
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$15;

    const-string v1, "WHITESPACE"

    invoke-direct {v0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$15;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->description:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->description:Ljava/lang/String;

    return-void
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 5

    .line 483
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_53

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3d

    .line 494
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 495
    invoke-static {p0}, Ljava/util/Arrays;->sort([C)V

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CharMatcher.anyOf(\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    array-length v2, p0

    :goto_20
    if-ge v1, v2, :cond_2e

    aget-char v3, p0, v1

    .line 498
    invoke-static {v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 500
    :cond_2e
    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    new-instance v1, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$11;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$11;-><init>(Ljava/lang/String;[C)V

    return-object v1

    .line 489
    :cond_3d
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {v0, p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->isEither(CC)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0

    .line 487
    :cond_4a
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->is(C)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0

    .line 485
    :cond_53
    sget-object p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->NONE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    return-object p0
.end method

.method private finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;
    .registers 9

    :goto_0
    if-ge p2, p3, :cond_1a

    .line 1319
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1320
    invoke-virtual {p0, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez p6, :cond_17

    .line 1322
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p6, 0x1

    goto :goto_17

    .line 1326
    :cond_13
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p6, 0x0

    :cond_17
    :goto_17
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1330
    :cond_1a
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static forPredicate(Lcom/google/api/client/repackaged/com/google/common/base/Predicate;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/repackaged/com/google/common/base/Predicate<",
            "-",
            "Ljava/lang/Character;",
            ">;)",
            "Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;"
        }
    .end annotation

    .line 576
    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    instance-of v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    if-eqz v0, :cond_a

    .line 578
    check-cast p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    return-object p0

    .line 580
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.forPredicate("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    new-instance v1, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$14;

    invoke-direct {v1, v0, p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$14;-><init>(Ljava/lang/String;Lcom/google/api/client/repackaged/com/google/common/base/Predicate;)V

    return-object v1
.end method

.method public static inRange(CC)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 4

    if-lt p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 550
    :goto_5
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.inRange(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-static {p0, p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method static inRange(CCLjava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 4

    .line 559
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$13;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$13;-><init>(Ljava/lang/String;CC)V

    return-object v0
.end method

.method public static is(C)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 3

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.is(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    new-instance v1, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;

    invoke-direct {v1, v0, p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;-><init>(Ljava/lang/String;C)V

    return-object v1
.end method

.method private static isEither(CC)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 4

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.anyOf(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    new-instance v1, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$12;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$12;-><init>(Ljava/lang/String;CC)V

    return-object v1
.end method

.method public static isNot(C)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 3

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.isNot(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    new-instance v1, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$10;

    invoke-direct {v1, v0, p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$10;-><init>(Ljava/lang/String;C)V

    return-object v1
.end method

.method private static isSmall(II)Z
    .registers 3

    const/16 v0, 0x3ff

    if-gt p0, v0, :cond_a

    mul-int/lit8 p0, p0, 0x40

    if-le p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static noneOf(Ljava/lang/CharSequence;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 1

    .line 539
    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->negate()Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method private static precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 5

    if-eqz p0, :cond_3a

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_30

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1f

    .line 871
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->isSmall(II)Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-static {p1, p2}, Lcom/google/api/client/repackaged/com/google/common/base/SmallCharMatcher;->from(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object p0

    goto :goto_1e

    :cond_18
    new-instance p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$BitSetMatcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$BitSetMatcher;-><init>(Ljava/util/BitSet;Ljava/lang/String;Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$1;)V

    :goto_1e
    return-object p0

    .line 867
    :cond_1f
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    int-to-char p0, p0

    add-int/lit8 p2, p0, 0x1

    .line 868
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    int-to-char p1, p1

    .line 869
    invoke-static {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->isEither(CC)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0

    .line 865
    :cond_30
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->is(C)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0

    .line 863
    :cond_3a
    sget-object p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->NONE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    return-object p0
.end method

.method private static showCharacter(C)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x6

    .line 230
    new-array v0, v0, [C

    const/16 v1, 0x5c

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x75

    aput-char v3, v0, v1

    const/4 v1, 0x2

    aput-char v2, v0, v1

    const/4 v1, 0x3

    aput-char v2, v0, v1

    const/4 v1, 0x4

    aput-char v2, v0, v1

    const/4 v3, 0x5

    aput-char v2, v0, v3

    :goto_19
    if-ge v2, v1, :cond_2c

    rsub-int/lit8 v3, v2, 0x5

    and-int/lit8 v4, p0, 0xf

    .line 232
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    shr-int/2addr p0, v1

    int-to-char p0, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 235
    :cond_2c
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public and(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 3

    .line 677
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$And;

    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    invoke-direct {v0, p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$And;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public apply(Ljava/lang/Character;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1340
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    .line 55
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 10
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1272
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v3, :cond_46

    .line 1274
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1275
    invoke-virtual {p0, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_43

    if-ne v2, p2, :cond_27

    add-int/lit8 v2, v3, -0x1

    if-eq v1, v2, :cond_24

    add-int/lit8 v2, v1, 0x1

    .line 1276
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 1281
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v2, v1, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 1284
    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1289
    :cond_46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 1040
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 1041
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    return v1
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .registers 5

    .line 981
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 983
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_12

    return v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .registers 5

    .line 1006
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1007
    invoke-static {p2, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkPositionIndex(II)I

    :goto_7
    if-ge p2, v0, :cond_17

    .line 1009
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_14

    return p2

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_17
    const/4 p1, -0x1

    return p1
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .registers 4

    .line 1027
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_16

    .line 1028
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method public abstract matches(C)Z
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .registers 5

    .line 947
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_17

    .line 948
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_17
    return v1
.end method

.method public matchesAnyOf(Ljava/lang/CharSequence;)Z
    .registers 2

    .line 933
    invoke-virtual {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 967
    invoke-virtual {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public negate()Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 2

    .line 623
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$NegatedMatcher;

    invoke-direct {v0, p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$NegatedMatcher;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public or(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 3

    .line 720
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;

    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    invoke-direct {v0, p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public precomputed()Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 2

    .line 765
    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/Platform;->precomputeCharMatcher(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method precomputedInternal()Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 6

    .line 792
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 793
    invoke-virtual {p0, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 794
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    const/high16 v3, 0x10000

    if-gt v2, v3, :cond_19

    .line 796
    iget-object v2, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->description:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v2, 0x0

    .line 799
    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->flip(II)V

    sub-int/2addr v3, v1

    .line 802
    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->description:Ljava/lang/String;

    const-string v4, ".negate()"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x9

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 805
    :goto_48
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$NegatedFastMatcher;

    invoke-virtual {p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$NegatedFastMatcher;-><init>(Ljava/lang/String;Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)V

    return-object v2
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1058
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1059
    invoke-virtual {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    return-object p1

    .line 1064
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :goto_12
    add-int/2addr v0, v1

    .line 1071
    :goto_13
    array-length v3, p1

    if-ne v0, v3, :cond_1e

    .line 1082
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    sub-int/2addr v0, v2

    invoke-direct {v1, p1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 1074
    :cond_1e
    aget-char v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_29

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_29
    sub-int v3, v0, v2

    .line 1077
    aget-char v4, p1, v0

    aput-char v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1117
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1118
    invoke-virtual {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    return-object p1

    .line 1122
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 1123
    aput-char p2, p1, v0

    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    .line 1124
    array-length v1, p1

    if-ge v0, v1, :cond_22

    .line 1125
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1126
    aput-char p2, p1, v0

    goto :goto_12

    .line 1129
    :cond_22
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    return-object p2
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1150
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 1152
    invoke-virtual {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    .line 1155
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1158
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1159
    invoke-virtual {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_24

    return-object p1

    .line 1164
    :cond_24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1165
    new-instance v5, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v4, 0x3

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1169
    :cond_33
    invoke-virtual {v5, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    .line 1172
    invoke-virtual {p0, p1, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v3, :cond_33

    .line 1175
    invoke-virtual {v5, p1, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1095
    invoke-virtual {p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->negate()Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 4

    const v0, 0xffff

    :goto_3
    if-ltz v0, :cond_12

    int-to-char v1, v0

    .line 913
    invoke-virtual {p0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 914
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1349
    iget-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->description:Ljava/lang/String;

    return-object v0
.end method

.method public trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 12
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1300
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v4, v1

    :goto_6
    if-ge v4, v0, :cond_15

    .line 1304
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_15

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_15
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_18
    if-le v1, v4, :cond_27

    .line 1305
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_27

    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    :cond_27
    if-nez v4, :cond_30

    if-ne v1, v0, :cond_30

    .line 1307
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    :cond_30
    add-int/lit8 v5, v1, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    sub-int v0, v5, v4

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p1

    :goto_41
    return-object p1
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1195
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 1200
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    :goto_15
    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-le v0, v1, :cond_27

    .line 1205
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_27

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_27
    :goto_27
    add-int/lit8 v0, v0, 0x1

    .line 1210
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1223
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1d

    .line 1225
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1226
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1229
    :cond_1d
    const-string p1, ""

    return-object p1
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1242
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_21

    .line 1244
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 1245
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1248
    :cond_21
    const-string p1, ""

    return-object p1
.end method

.method withToString(Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 2

    .line 775
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
