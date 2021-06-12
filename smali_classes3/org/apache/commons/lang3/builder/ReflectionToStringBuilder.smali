.class public Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;
.super Lorg/apache/commons/lang3/builder/ToStringBuilder;
.source "SourceFile"


# instance fields
.field protected a:[Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 390
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 356
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->b:Z

    .line 361
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->c:Z

    const/4 p1, 0x0

    .line 373
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->d:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Class<",
            "-TT;>;ZZ)V"
        }
    .end annotation

    .line 461
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    const/4 p1, 0x0

    .line 356
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->b:Z

    .line 361
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->c:Z

    const/4 p1, 0x0

    .line 373
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->d:Ljava/lang/Class;

    .line 462
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->b(Ljava/lang/Class;)V

    .line 463
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->b(Z)V

    .line 464
    invoke-virtual {p0, p6}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a(Z)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-static {p0, p1, v0, v0, v1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            "ZZ",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 287
    new-instance v7, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V

    invoke-virtual {v7}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 350
    new-instance v0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 4

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_1
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->c:[Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;
    .locals 3

    .line 610
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->g()Lorg/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->f()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 648
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a:[Ljava/lang/String;

    goto :goto_0

    .line 651
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a:[Ljava/lang/String;

    .line 652
    iget-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method protected a(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 514
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;

    return-void

    .line 518
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 519
    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 520
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 521
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 526
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->b(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    .line 527
    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 533
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected IllegalAccessException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 624
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->b:Z

    return-void
.end method

.method protected a(Ljava/lang/reflect/Field;)Z
    .locals 3

    .line 480
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 484
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 488
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->b()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 492
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected b(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 574
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 667
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Specified class is not a superclass of the object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 672
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->d:Ljava/lang/Class;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 636
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 586
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 597
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 684
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->g()Lorg/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 687
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 688
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a(Ljava/lang/Class;)V

    .line 689
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 690
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 691
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 693
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
