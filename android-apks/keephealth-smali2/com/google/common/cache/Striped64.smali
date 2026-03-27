.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$ThreadHashCode;,
        Lcom/google/common/cache/Striped64$HashCode;,
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 145
    new-instance v0, Lcom/google/common/cache/Striped64$ThreadHashCode;

    invoke-direct {v0}, Lcom/google/common/cache/Striped64$ThreadHashCode;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;

    .line 148
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/common/cache/Striped64;->NCPU:I

    .line 306
    :try_start_11
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 307
    const-class v1, Lcom/google/common/cache/Striped64;

    .line 308
    const-string v2, "base"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    .line 310
    const-string v2, "busy"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/cache/Striped64;->busyOffset:J
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception v0

    .line 313
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .registers 1

    .line 21
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .registers 3

    .line 326
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 329
    :catch_5
    :try_start_5
    new-instance v0, Lcom/google/common/cache/Striped64$1;

    invoke-direct {v0}, Lcom/google/common/cache/Striped64$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_10
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    .line 342
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .registers 13

    .line 176
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method final casBusy()Z
    .registers 7

    .line 183
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .registers 7

    .line 288
    iget-object v0, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 289
    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    if-eqz v0, :cond_13

    .line 291
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_13

    .line 293
    aget-object v3, v0, v2

    if-eqz v3, :cond_10

    .line 295
    iput-wide p1, v3, Lcom/google/common/cache/Striped64$Cell;->value:J

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    return-void
.end method

.method final retryUpdate(JLcom/google/common/cache/Striped64$HashCode;Z)V
    .registers 16

    .line 209
    iget v0, p3, Lcom/google/common/cache/Striped64$HashCode;->code:I

    const/4 v1, 0x0

    :goto_3
    move v2, v1

    .line 213
    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    const/4 v4, 0x1

    if-eqz v3, :cond_94

    array-length v5, v3

    if-lez v5, :cond_94

    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v0

    .line 214
    aget-object v6, v3, v6

    if-nez v6, :cond_44

    .line 215
    iget v3, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v3, :cond_42

    .line 216
    new-instance v3, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v3, p1, p2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    .line 217
    iget v5, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v5, :cond_42

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 221
    :try_start_26
    iget-object v5, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v5, :cond_37

    array-length v6, v5

    if-lez v6, :cond_37

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v0

    aget-object v7, v5, v6

    if-nez v7, :cond_37

    .line 224
    aput-object v3, v5, v6
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_3e

    goto :goto_38

    :cond_37
    move v4, v1

    .line 228
    :goto_38
    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v4, :cond_4

    goto/16 :goto_cb

    :catchall_3e
    move-exception p1

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    throw p1

    :cond_42
    :goto_42
    move v2, v1

    goto :goto_89

    :cond_44
    if-nez p4, :cond_48

    move p4, v4

    goto :goto_89

    .line 239
    :cond_48
    iget-wide v7, v6, Lcom/google/common/cache/Striped64$Cell;->value:J

    invoke-virtual {p0, v7, v8, p1, p2}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v6

    if-eqz v6, :cond_56

    goto/16 :goto_cb

    .line 241
    :cond_56
    sget v6, Lcom/google/common/cache/Striped64;->NCPU:I

    if-ge v5, v6, :cond_42

    iget-object v6, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eq v6, v3, :cond_5f

    goto :goto_42

    :cond_5f
    if-nez v2, :cond_63

    move v2, v4

    goto :goto_89

    .line 245
    :cond_63
    iget v4, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v4, :cond_89

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 247
    :try_start_6d
    iget-object v2, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v2, v3, :cond_81

    shl-int/lit8 v2, v5, 0x1

    .line 248
    new-array v2, v2, [Lcom/google/common/cache/Striped64$Cell;

    move v4, v1

    :goto_76
    if-ge v4, v5, :cond_7f

    .line 250
    aget-object v6, v3, v4

    aput-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_76

    .line 251
    :cond_7f
    iput-object v2, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_81
    .catchall {:try_start_6d .. :try_end_81} :catchall_85

    .line 254
    :cond_81
    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    goto/16 :goto_3

    :catchall_85
    move-exception p1

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    throw p1

    :cond_89
    :goto_89
    shl-int/lit8 v3, v0, 0xd

    xor-int/2addr v0, v3

    ushr-int/lit8 v3, v0, 0x11

    xor-int/2addr v0, v3

    shl-int/lit8 v3, v0, 0x5

    xor-int/2addr v0, v3

    goto/16 :goto_4

    .line 263
    :cond_94
    iget v5, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v5, :cond_bf

    iget-object v5, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v5, v3, :cond_bf

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 266
    :try_start_a2
    iget-object v5, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v5, v3, :cond_b5

    const/4 v3, 0x2

    .line 267
    new-array v3, v3, [Lcom/google/common/cache/Striped64$Cell;

    and-int/lit8 v5, v0, 0x1

    .line 268
    new-instance v6, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v6, p1, p2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v6, v3, v5

    .line 269
    iput-object v3, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_b4
    .catchall {:try_start_a2 .. :try_end_b4} :catchall_bb

    goto :goto_b6

    :cond_b5
    move v4, v1

    .line 273
    :goto_b6
    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v4, :cond_4

    goto :goto_cb

    :catchall_bb
    move-exception p1

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    throw p1

    .line 278
    :cond_bf
    iget-wide v3, p0, Lcom/google/common/cache/Striped64;->base:J

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 281
    :goto_cb
    iput v0, p3, Lcom/google/common/cache/Striped64$HashCode;->code:I

    return-void
.end method
