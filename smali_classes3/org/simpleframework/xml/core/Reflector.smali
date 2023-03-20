.class final Lorg/simpleframework/xml/core/Reflector;
.super Ljava/lang/Object;
.source "Reflector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArrayClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1

    .line 1
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 2
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1

    .line 4
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 6
    :cond_0
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getGenericClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getDependent(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static getDependents(Ljava/lang/reflect/Field;)[Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method private static getGenericClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getArrayClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    aget-char v1, p0, v0

    .line 4
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->isAcronym([C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-static {v1}, Lorg/simpleframework/xml/core/Reflector;->toLowerCase(C)C

    move-result v1

    aput-char v1, p0, v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static getParameterDependent(Ljava/lang/reflect/Constructor;I)Ljava/lang/Class;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->getParameterType(Ljava/lang/reflect/Constructor;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static getParameterDependent(Ljava/lang/reflect/Method;I)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->getParameterType(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static getParameterDependents(Ljava/lang/reflect/Constructor;I)[Ljava/lang/Class;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->getParameterType(Ljava/lang/reflect/Constructor;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public static getParameterDependents(Ljava/lang/reflect/Method;I)[Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->getParameterType(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method private static getParameterType(Ljava/lang/reflect/Constructor;I)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 6
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 7
    array-length v0, p0

    if-le v0, p1, :cond_0

    .line 8
    aget-object p0, p0, p1

    .line 9
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_0

    .line 10
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getParameterType(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2
    array-length v0, p0

    if-le v0, p1, :cond_0

    .line 3
    aget-object p0, p0, p1

    .line 4
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_0

    .line 5
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getReturnDependent(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method private static getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isAcronym([C)Z
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    aget-char v0, p0, v1

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 3
    aget-char p0, p0, v0

    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->isUpperCase(C)Z

    move-result p0

    return p0
.end method

.method private static isUpperCase(C)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0
.end method

.method private static toLowerCase(C)C
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    return p0
.end method
