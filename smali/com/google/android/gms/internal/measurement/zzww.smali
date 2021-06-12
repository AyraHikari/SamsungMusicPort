.class final Lcom/google/android/gms/internal/measurement/zzww;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/google/android/gms/internal/measurement/zzwt;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 3
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzww;->a(Lcom/google/android/gms/internal/measurement/zzwt;Ljava/lang/StringBuilder;I)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 134
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 136
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "_"

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/zzwt;Ljava/lang/StringBuilder;I)V
    .locals 12

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 9
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_0

    .line 11
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 13
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "get"

    const-string v6, ""

    .line 16
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "List"

    .line 17
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    const-string v6, "OrBuilderList"

    .line 18
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "List"

    .line 19
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 21
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 23
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    if-eqz v8, :cond_4

    .line 24
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 26
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzww;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 27
    invoke-static {v8, p0, v4}, Lcom/google/android/gms/internal/measurement/zzvm;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 28
    invoke-static {p1, p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzww;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v6, "Map"

    .line 30
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "Map"

    .line 31
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 33
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 34
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 35
    :goto_3
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_6

    .line 37
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/util/Map;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-class v8, Ljava/lang/Deprecated;

    .line 38
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 39
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 41
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzww;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    .line 42
    invoke-static {v3, p0, v6}, Lcom/google/android/gms/internal/measurement/zzvm;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 43
    invoke-static {p1, p2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzww;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    const-string v3, "set"

    .line 45
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_7
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    :goto_4
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    const-string v3, "Bytes"

    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "get"

    .line 48
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_8
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 49
    :goto_5
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 50
    :cond_9
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_a
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    :goto_6
    const-string v6, "get"

    .line 51
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_b
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    :goto_7
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    const-string v8, "has"

    .line 52
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_c
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_2

    .line 54
    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6, p0, v8}, Lcom/google/android/gms/internal/measurement/zzvm;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_16

    .line 57
    instance-of v4, v6, Ljava/lang/Boolean;

    if-eqz v4, :cond_e

    .line 58
    move-object v4, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_d

    :goto_9
    const/4 v4, 0x1

    goto/16 :goto_a

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 59
    :cond_e
    instance-of v4, v6, Ljava/lang/Integer;

    if-eqz v4, :cond_f

    .line 60
    move-object v4, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_d

    goto :goto_9

    .line 61
    :cond_f
    instance-of v4, v6, Ljava/lang/Float;

    if-eqz v4, :cond_10

    .line 62
    move-object v4, v6

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-nez v4, :cond_d

    goto :goto_9

    .line 63
    :cond_10
    instance-of v4, v6, Ljava/lang/Double;

    if-eqz v4, :cond_11

    .line 64
    move-object v4, v6

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v4, v8, v10

    if-nez v4, :cond_d

    goto :goto_9

    .line 65
    :cond_11
    instance-of v4, v6, Ljava/lang/String;

    if-eqz v4, :cond_12

    const-string v4, ""

    .line 66
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_a

    .line 67
    :cond_12
    instance-of v4, v6, Lcom/google/android/gms/internal/measurement/zzud;

    if-eqz v4, :cond_13

    .line 68
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzud;->zzbtz:Lcom/google/android/gms/internal/measurement/zzud;

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_a

    .line 69
    :cond_13
    instance-of v4, v6, Lcom/google/android/gms/internal/measurement/zzwt;

    if-eqz v4, :cond_14

    .line 70
    move-object v4, v6

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzwt;

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzwt;->j()Lcom/google/android/gms/internal/measurement/zzwt;

    move-result-object v4

    if-ne v6, v4, :cond_d

    goto :goto_9

    .line 71
    :cond_14
    instance-of v4, v6, Ljava/lang/Enum;

    if-eqz v4, :cond_d

    .line 72
    move-object v4, v6

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-nez v4, :cond_d

    goto :goto_9

    :goto_a
    if-nez v4, :cond_15

    const/4 v4, 0x1

    goto :goto_b

    :cond_15
    const/4 v4, 0x0

    goto :goto_b

    .line 75
    :cond_16
    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4, p0, v7}, Lcom/google/android/gms/internal/measurement/zzvm;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_b
    if-eqz v4, :cond_2

    .line 77
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzww;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, v3, v6}, Lcom/google/android/gms/internal/measurement/zzww;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 79
    :cond_17
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zzc;

    if-eqz v0, :cond_19

    .line 80
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzvm$zzc;->zzbys:Lcom/google/android/gms/internal/measurement/zzvd;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzvd;->e()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_c

    .line 83
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 85
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0

    .line 86
    :cond_19
    :goto_c
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzvm;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbym:Lcom/google/android/gms/internal/measurement/zzyc;

    if-eqz v0, :cond_1a

    .line 87
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzbym:Lcom/google/android/gms/internal/measurement/zzyc;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyc;->a(Ljava/lang/StringBuilder;I)V

    :cond_1a
    return-void
.end method

.method static final a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 89
    instance-of v0, p3, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 90
    check-cast p3, Ljava/util/List;

    .line 91
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 92
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzww;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 95
    :cond_1
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 96
    check-cast p3, Ljava/util/Map;

    .line 97
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzww;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0xa

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x20

    if-ge v1, p1, :cond_4

    .line 103
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    instance-of p2, p3, Ljava/lang/String;

    const/16 v1, 0x22

    if-eqz p2, :cond_5

    const-string p1, ": \""

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Ljava/lang/String;

    .line 108
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zzud;->zzfv(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxx;->a(Lcom/google/android/gms/internal/measurement/zzud;)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 110
    :cond_5
    instance-of p2, p3, Lcom/google/android/gms/internal/measurement/zzud;

    if-eqz p2, :cond_6

    const-string p1, ": \""

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzud;

    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zzxx;->a(Lcom/google/android/gms/internal/measurement/zzud;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 112
    :cond_6
    instance-of p2, p3, Lcom/google/android/gms/internal/measurement/zzvm;

    if-eqz p2, :cond_8

    const-string p2, " {"

    .line 113
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzvm;

    add-int/lit8 p2, p1, 0x2

    invoke-static {p3, p0, p2}, Lcom/google/android/gms/internal/measurement/zzww;->a(Lcom/google/android/gms/internal/measurement/zzwt;Ljava/lang/StringBuilder;I)V

    const-string p2, "\n"

    .line 115
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-ge v0, p1, :cond_7

    .line 117
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const-string p1, "}"

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 120
    :cond_8
    instance-of p2, p3, Ljava/util/Map$Entry;

    if-eqz p2, :cond_a

    const-string p2, " {"

    .line 121
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    check-cast p3, Ljava/util/Map$Entry;

    add-int/lit8 p2, p1, 0x2

    const-string v1, "key"

    .line 123
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, p2, v1, v3}, Lcom/google/android/gms/internal/measurement/zzww;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "value"

    .line 124
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0, p2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzww;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string p2, "\n"

    .line 125
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-ge v0, p1, :cond_9

    .line 127
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const-string p1, "}"

    .line 129
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_a
    const-string p1, ": "

    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
