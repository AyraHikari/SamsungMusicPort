.class final Lorg/simpleframework/xml/core/Reflector;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(C)C
    .locals 0

    .line 443
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 0

    .line 112
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->c(Ljava/lang/reflect/Method;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Ljava/lang/reflect/Method;I)Ljava/lang/Class;
    .locals 0

    .line 173
    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->c(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 176
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 178
    :cond_0
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method private static a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .locals 1

    .line 306
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 308
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 309
    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1

    .line 345
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 346
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 348
    :cond_0
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 401
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 404
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 405
    aget-char v1, p0, v0

    .line 407
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->a([C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    invoke-static {v1}, Lorg/simpleframework/xml/core/Reflector;->a(C)C

    move-result v1

    aput-char v1, p0, v0

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method private static a([C)Z
    .locals 3

    .line 425
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 428
    :cond_0
    aget-char v0, p0, v1

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->b(C)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 431
    aget-char p0, p0, v0

    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->b(C)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/reflect/Field;)[Ljava/lang/Class;
    .locals 0

    .line 74
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->b(Ljava/lang/reflect/Field;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 77
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->b(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 79
    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method private static b(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1

    .line 362
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    .line 363
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 365
    :cond_0
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method private static b(Ljava/lang/reflect/Field;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 92
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 94
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 95
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(C)Z
    .locals 0

    .line 455
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 0

    .line 132
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->c(Ljava/lang/reflect/Method;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 135
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->b(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 137
    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public static b(Ljava/lang/reflect/Method;I)[Ljava/lang/Class;
    .locals 0

    .line 195
    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->c(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 198
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->b(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 200
    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method private static b(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;
    .locals 3

    .line 325
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 326
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 328
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 329
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/simpleframework/xml/core/Reflector;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static c(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1

    .line 379
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 380
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 381
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 384
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/lang/reflect/Method;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 151
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 153
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 154
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 259
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 261
    array-length v0, p0

    if-le v0, p1, :cond_0

    .line 262
    aget-object p0, p0, p1

    .line 264
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_0

    .line 265
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
