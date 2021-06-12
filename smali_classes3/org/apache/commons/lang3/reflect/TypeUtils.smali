.class public Lorg/apache/commons/lang3/reflect/TypeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/reflect/WildcardType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 288
    invoke-static {}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a()Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->a([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->a()Ljava/lang/reflect/WildcardType;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils;->a:Ljava/lang/reflect/WildcardType;

    return-void
.end method

.method private static a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1240
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1247
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1251
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 1248
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait... What!? Type of rawType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1745
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1746
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1748
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    const/16 v1, 0x3c

    .line 1751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 1752
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e

    .line 1753
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1755
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s[]"

    const/4 v1, 0x1

    .line 1826
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 1659
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1661
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1663
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1664
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1666
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    .line 1667
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->c(Ljava/lang/reflect/WildcardType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1669
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    .line 1670
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1672
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_4

    .line 1673
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1675
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;
    .locals 2

    .line 1838
    invoke-static {p2}, Lorg/apache/commons/lang3/Validate;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/Validate;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1839
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1840
    aget-object v0, p2, v0

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 1841
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1842
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1049
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1051
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 1056
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 1059
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_0

    .line 1060
    move-object v5, v4

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    .line 1061
    :cond_0
    instance-of v5, v4, Ljava/lang/Class;

    if-eqz v5, :cond_2

    .line 1062
    move-object v5, v4

    check-cast v5, Ljava/lang/Class;

    .line 1070
    :goto_1
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1, v5}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1064
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected generic interface type found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz v1, :cond_4

    return-object v1

    .line 1084
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 722
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 723
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    if-eqz p1, :cond_0

    return-object p1

    .line 726
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing assignment type for type variable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p0
.end method

.method private static a(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 492
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 493
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 494
    move-object p0, v0

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 900
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 905
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 907
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 914
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    :cond_2
    if-nez p2, :cond_3

    .line 918
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    .line 922
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p2

    .line 927
    :cond_4
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 847
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 850
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 854
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 857
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 859
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 860
    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 864
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v1

    .line 869
    :goto_0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 871
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 874
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 875
    aget-object v3, p0, v2

    .line 876
    aget-object v4, v1, v2

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    :cond_3
    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 880
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p2

    .line 886
    :cond_5
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 784
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 797
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 798
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 801
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 802
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 805
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 806
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    :cond_2
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 812
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 813
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    .line 815
    invoke-static {v3, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 816
    invoke-static {v3, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v1

    .line 823
    :cond_6
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_9

    .line 824
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_8

    aget-object v3, p0, v2

    .line 826
    invoke-static {v3, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 827
    invoke-static {v3, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return-object v1

    .line 833
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "found an unhandled type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
    .locals 2

    .line 1547
    new-instance v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;-><init>(Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V

    return-object v0
.end method

.method private static a(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z
    .locals 1

    .line 1612
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z
    .locals 2

    .line 1595
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 1596
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 1597
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/GenericArrayType;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 525
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 529
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 531
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 532
    check-cast p0, Ljava/lang/Class;

    .line 535
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 539
    :cond_4
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_5

    .line 541
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 545
    :cond_5
    instance-of p2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz p2, :cond_8

    .line 547
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length p2, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_7

    aget-object v3, p0, v2

    .line 548
    invoke-static {v3, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return v1

    .line 556
    :cond_8
    instance-of p2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz p2, :cond_b

    .line 559
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length p2, p0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_a

    aget-object v3, p0, v2

    .line 560
    invoke-static {v3, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    return v1

    .line 568
    :cond_b
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_c

    return v1

    .line 575
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "found an unhandled type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 437
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 442
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 445
    invoke-static {p0, v2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_3

    return v1

    .line 455
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    return v0

    .line 460
    :cond_4
    invoke-static {p1, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 464
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 465
    invoke-static {v3, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 466
    invoke-static {v3, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 471
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    instance-of v5, v4, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_6

    invoke-static {v3, v4, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_6
    return v1

    :cond_7
    return v0
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 326
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 331
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 334
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 335
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 338
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 339
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 342
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    .line 343
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 346
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "found an unhandled type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 688
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 692
    :cond_2
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_4

    .line 696
    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 698
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 699
    invoke-static {v5, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 705
    :cond_4
    instance-of p1, p0, Ljava/lang/Class;

    if-nez p1, :cond_6

    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez p1, :cond_6

    instance-of p1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez p1, :cond_6

    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz p1, :cond_5

    goto :goto_1

    .line 710
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "found an unhandled type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return v1
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/WildcardType;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 601
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 605
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 606
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 608
    instance-of v3, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_9

    .line 609
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 610
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 611
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 613
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v2, v5

    .line 616
    invoke-static {v6, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 621
    array-length v7, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v3, v8

    .line 622
    invoke-static {v9, v6, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_3

    return v1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 628
    :cond_5
    array-length v2, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_8

    aget-object v4, p1, v3

    .line 631
    invoke-static {v4, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 636
    array-length v5, p0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_7

    aget-object v7, p0, v6

    .line 637
    invoke-static {v4, v7, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_6

    return v1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    return v0

    .line 645
    :cond_9
    array-length v3, v2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_b

    aget-object v5, v2, v4

    .line 648
    invoke-static {v5, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {p0, v5, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_a

    return v1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 654
    :cond_b
    array-length v2, p1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_d

    aget-object v4, p1, v3

    .line 657
    invoke-static {v4, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, p0, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_c

    return v1

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    return v0
.end method

.method static synthetic a(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0
.end method

.method private static a([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z
    .locals 4

    .line 1640
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 1641
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1642
    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-static {v1, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public static a(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const-string v0, "typeVariable is null"

    const/4 v1, 0x0

    .line 1162
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lorg/apache/commons/lang3/Validate;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1165
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/reflect/Type;

    const-class v0, Ljava/lang/Object;

    aput-object v0, p0, v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .locals 3

    const-string v0, "wildcardType is null"

    const/4 v1, 0x0

    .line 1179
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lorg/apache/commons/lang3/Validate;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1182
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/reflect/Type;

    const-class v0, Ljava/lang/Object;

    aput-object v0, p0, v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 9

    const-string v0, "null value specified for bounds array"

    const/4 v1, 0x0

    .line 1126
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lorg/apache/commons/lang3/Validate;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    array-length v0, p0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return-object p0

    .line 1132
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 1134
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    .line 1137
    array-length v5, p0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, p0, v6

    if-eq v4, v7, :cond_1

    const/4 v8, 0x0

    .line 1138
    invoke-static {v7, v4, v8}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_3

    .line 1145
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1149
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/reflect/Type;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method private static b(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/String;
    .locals 4

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1783
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1784
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 1785
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    if-nez v1, :cond_0

    .line 1787
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1789
    :cond_0
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1790
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1792
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x2e

    .line 1794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x3c

    .line 1797
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1798
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1766
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1767
    array-length v2, v1

    if-lez v2, :cond_1

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, " extends "

    .line 1768
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    .line 1769
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;

    .line 1771
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    .line 360
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_3

    return v1

    .line 370
    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    .line 374
    :cond_4
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_5

    .line 376
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ClassUtils;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    return p0

    .line 379
    :cond_5
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_6

    .line 381
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result p0

    return p0

    .line 385
    :cond_6
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_9

    .line 388
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_8

    aget-object v4, p0, v3

    .line 389
    invoke-static {v4, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    return v1

    .line 399
    :cond_9
    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_c

    .line 400
    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_a

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_2
    return v0

    .line 408
    :cond_c
    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz p1, :cond_d

    return v1

    .line 412
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found an unhandled type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 1

    .line 1572
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ObjectUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1575
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1576
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0

    .line 1578
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 1579
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0

    .line 1581
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 1582
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z
    .locals 3

    .line 1624
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1625
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 1626
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public static b(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .locals 3

    const-string v0, "wildcardType is null"

    const/4 v1, 0x0

    .line 1195
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lorg/apache/commons/lang3/Validate;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1198
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/reflect/Type;

    const/4 v0, 0x0

    aput-object v0, p0, v1

    :cond_0
    return-object p0
.end method

.method private static c(Ljava/lang/reflect/WildcardType;)Ljava/lang/String;
    .locals 5

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1809
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1810
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1811
    array-length v2, v1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    array-length v2, v1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1813
    :cond_0
    array-length v1, p0

    if-gt v1, v3, :cond_1

    array-length v1, p0

    if-ne v1, v3, :cond_3

    const-class v1, Ljava/lang/Object;

    aget-object v2, p0, v4

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const-string v1, " extends "

    .line 1814
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, " super "

    .line 1812
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " & "

    invoke-static {v0, p0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;

    .line 1816
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
