.class public Lorg/apache/commons/lang3/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 528
    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    const/16 v0, 0x25

    .line 536
    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    const/16 v0, 0x11

    .line 537
    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 528
    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    .line 558
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "HashCodeBuilder requires an odd initial value"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lorg/apache/commons/lang3/Validate;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 559
    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v1, "HashCodeBuilder requires an odd multiplier"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lorg/apache/commons/lang3/Validate;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 560
    iput p2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    .line 561
    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    return-void
.end method

.method public static varargs a(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;Z",
            "Ljava/lang/Class<",
            "-TT;>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 352
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    .line 353
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 354
    invoke-static {p2, p0, v0, p3, p5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    .line 355
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eq p0, p4, :cond_0

    .line 356
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 357
    invoke-static {p2, p0, v0, p3, p5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b()I

    move-result p0

    return p0

    .line 350
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The object to build a hash code for must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 6

    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    .line 473
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .line 147
    sget-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/lang3/builder/HashCodeBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 184
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 190
    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 191
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 192
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Lorg/apache/commons/lang3/ArrayUtils;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 197
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 198
    invoke-virtual {p2, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->d(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 202
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "Unexpected IllegalAccessException"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method static a(Ljava/lang/Object;)Z
    .locals 2

    .line 162
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static b(Ljava/lang/Object;)V
    .locals 3

    .line 486
    const-class v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    monitor-enter v0

    .line 487
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 488
    sget-object v1, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 490
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 490
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static c(Ljava/lang/Object;)V
    .locals 2

    .line 507
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 510
    const-class p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    monitor-enter p0

    .line 512
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    sget-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 516
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 622
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    return-object p0
.end method

.method public a(C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 658
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    return-object p0
.end method

.method public a(D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 0

    .line 692
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object p1

    return-object p1
.end method

.method public a(F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 725
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int v0, v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    return-object p0
.end method

.method public a(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 759
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    return-object p0
.end method

.method public a(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    .line 797
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int v0, v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr p1, v1

    long-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    return-object p0
.end method

.method public a(S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 895
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    return-object p0
.end method

.method public a(Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .line 586
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int v0, v0, v1

    xor-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    return-object p0
.end method

.method public a([B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 639
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    goto :goto_1

    .line 641
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    .line 642
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 673
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    goto :goto_1

    .line 675
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v2, p1, v1

    .line 676
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 706
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    goto :goto_1

    .line 708
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    .line 709
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 740
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    goto :goto_1

    .line 742
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 743
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 774
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    goto :goto_1

    .line 776
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 777
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 812
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    goto :goto_1

    .line 814
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    .line 815
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 876
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    goto :goto_1

    .line 878
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 879
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->d(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 910
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    goto :goto_1

    .line 912
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-short v2, p1, v1

    .line 913
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 601
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    goto :goto_1

    .line 603
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-boolean v2, p1, v1

    .line 604
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public b()I
    .locals 1

    .line 942
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    return v0
.end method

.method public d(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 832
    iget p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    goto/16 :goto_0

    .line 835
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 838
    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    .line 839
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a([J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 840
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 841
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a([I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 842
    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 843
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a([S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 844
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 845
    check-cast p1, [C

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a([C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 846
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 847
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a([B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 848
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 849
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a([D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 850
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    .line 851
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a([F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 852
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 853
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a([Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 856
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 859
    :cond_9
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b:I

    mul-int v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->c:I

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 968
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->b()I

    move-result v0

    return v0
.end method
