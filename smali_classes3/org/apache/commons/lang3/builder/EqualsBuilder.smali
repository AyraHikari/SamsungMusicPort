.class public Lorg/apache/commons/lang3/builder/EqualsBuilder;
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
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    return-void
.end method

.method static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation

    .line 122
    sget-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 137
    new-instance p0, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 138
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/lang3/builder/EqualsBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 401
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 406
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 407
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 408
    invoke-static {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 409
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    iget-boolean v1, p3, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-eqz v1, :cond_3

    .line 410
    aget-object v1, p2, v0

    .line 411
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Lorg/apache/commons/lang3/ArrayUtils;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    if-nez p4, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 416
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->e(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 420
    :catch_0
    :try_start_2
    new-instance p2, Ljava/lang/InternalError;

    const-string p3, "Unexpected IllegalAccessException"

    invoke-direct {p2, p3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 341
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 344
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 352
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v2

    .line 360
    :cond_4
    :goto_1
    new-instance v10, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v10}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    .line 362
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 363
    invoke-virtual {v10, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->e(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_3

    :cond_5
    move-object v4, p0

    move-object v5, p1

    move-object v6, v1

    move-object v7, v10

    move v8, p2

    move-object v9, p4

    .line 365
    invoke-static/range {v4 .. v9}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V

    .line 366
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eq v1, p3, :cond_6

    .line 367
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v10

    move v6, p2

    move-object v7, p4

    .line 368
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 379
    :cond_6
    :goto_3
    invoke-virtual {v10}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b()Z

    move-result p0

    return p0

    :catch_0
    return v0

    :cond_7
    return v0

    :cond_8
    :goto_4
    return v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 274
    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 155
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a()Ljava/util/Set;

    move-result-object v0

    .line 156
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 173
    const-class v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    monitor-enter v0

    .line 174
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 175
    sget-object v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 177
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a()Ljava/util/Set;

    move-result-object v0

    .line 180
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    .line 181
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 177
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 197
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object p0

    .line 200
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    const-class p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    monitor-enter p0

    .line 203
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    sget-object p1, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 207
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(BB)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .line 572
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 575
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    return-object p0
.end method

.method public a(CC)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .line 557
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 560
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    return-object p0
.end method

.method public a(DD)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .line 593
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    .line 596
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public a(FF)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .line 613
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    .line 616
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public a(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .line 527
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 530
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    return-object p0
.end method

.method public a(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .line 512
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 515
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    return-object p0
.end method

.method public a(SS)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .line 542
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 545
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    return-object p0
.end method

.method public a(ZZ)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .line 627
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 630
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    return-object p0
.end method

.method public a([B[B)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .line 800
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 810
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 811
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0

    .line 814
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-eqz v1, :cond_4

    .line 815
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(BB)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 807
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0
.end method

.method public a([C[C)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .line 769
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 779
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 780
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0

    .line 783
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-eqz v1, :cond_4

    .line 784
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(CC)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 776
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0
.end method

.method public a([D[D)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 5

    .line 831
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 841
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 842
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0

    .line 845
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-eqz v1, :cond_4

    .line 846
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(DD)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 838
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0
.end method

.method public a([F[F)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .line 862
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 872
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 873
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0

    .line 876
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-eqz v1, :cond_4

    .line 877
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(FF)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 869
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0
.end method

.method public a([I[I)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .line 707
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 717
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 718
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0

    .line 721
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-eqz v1, :cond_4

    .line 722
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 714
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0
.end method

.method public a([J[J)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 5

    .line 676
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 686
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 687
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0

    .line 690
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-eqz v1, :cond_4

    .line 691
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 683
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0
.end method

.method public a([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .line 645
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 655
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 656
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0

    .line 659
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-eqz v1, :cond_4

    .line 660
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->e(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 652
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0
.end method

.method public a([S[S)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .line 738
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 748
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 749
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0

    .line 752
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-eqz v1, :cond_4

    .line 753
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(SS)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 745
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0
.end method

.method public a([Z[Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .line 893
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 903
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 904
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0

    .line 907
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-eqz v1, :cond_4

    .line 908
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(ZZ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 900
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0
.end method

.method protected a(Z)V
    .locals 0

    .line 944
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 920
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    return v0
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .line 457
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    if-nez p2, :cond_2

    goto/16 :goto_1

    .line 467
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 468
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_3

    .line 470
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->b:Z

    goto/16 :goto_0

    .line 471
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 473
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    goto/16 :goto_0

    .line 477
    :cond_4
    instance-of v0, p1, [J

    if-eqz v0, :cond_5

    .line 478
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a([J[J)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 479
    :cond_5
    instance-of v0, p1, [I

    if-eqz v0, :cond_6

    .line 480
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a([I[I)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 481
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    .line 482
    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a([S[S)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 483
    :cond_7
    instance-of v0, p1, [C

    if-eqz v0, :cond_8

    .line 484
    check-cast p1, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a([C[C)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 485
    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    .line 486
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a([B[B)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 487
    :cond_9
    instance-of v0, p1, [D

    if-eqz v0, :cond_a

    .line 488
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a([D[D)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 489
    :cond_a
    instance-of v0, p1, [F

    if-eqz v0, :cond_b

    .line 490
    check-cast p1, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a([F[F)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 491
    :cond_b
    instance-of v0, p1, [Z

    if-eqz v0, :cond_c

    .line 492
    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a([Z[Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 495
    :cond_c
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    :goto_0
    return-object p0

    .line 464
    :cond_d
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Z)V

    return-object p0
.end method
