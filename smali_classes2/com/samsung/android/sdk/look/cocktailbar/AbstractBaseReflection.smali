.class abstract Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractBaseReflection"


# instance fields
.field protected mBaseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReflectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mNameList:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mReflectionList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mClassMap:Ljava/util/HashMap;

    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadReflection()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mNameList:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mReflectionList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mClassMap:Ljava/util/HashMap;

    .line 29
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadReflection(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mNameList:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mReflectionList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mClassMap:Ljava/util/HashMap;

    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadReflection(Ljava/lang/String;)V

    return-void
.end method

.method private addReflectionInstance(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mNameList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mReflectionList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getReflectionInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mNameList:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 79
    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_1

    .line 103
    monitor-exit v0

    return-object v1

    .line 83
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 84
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v6, -0x1

    .line 90
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v6, :cond_3

    goto :goto_2

    .line 93
    :cond_3
    aget-char v10, v5, v9

    aget-char v11, v8, v9

    and-int/2addr v10, v11

    aget-char v11, v5, v9

    if-eq v10, v11, :cond_4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ne v9, v7, :cond_5

    .line 97
    iget-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mReflectionList:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 78
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getUniqueConstructorName([Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_EMPTY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 452
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-object v0

    :cond_1
    aget-object v3, p1, v2

    .line 454
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 456
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " getUniqueConstructorName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getUniqueFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FIELD_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUniqueMethodName(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_1

    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 475
    :cond_1
    aget-object v2, p2, v1

    if-eqz v2, :cond_2

    .line 477
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 149
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->createInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs createInstance([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 158
    new-array p2, p2, [Ljava/lang/Object;

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadConstructorIfNeeded([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot invoke there\'s no constructor."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 v1, 0x1

    .line 168
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 179
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " InstantiationException encountered invoking constructor "

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 174
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " InvocationTargetException encountered invoking constructor "

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 171
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " IllegalAccessException encountered invoking constructor "

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected varargs createInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->createInstance([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getBaseClassName()Ljava/lang/String;
.end method

.method protected getBooleanStaticValue(Ljava/lang/String;Z)Z
    .locals 0

    .line 265
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getStaticValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 268
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " Unable to load class "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getClassType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected getDoubleStaticValue(Ljava/lang/String;D)D
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getStaticValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    .line 296
    :cond_0
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method protected getFloatStaticValue(Ljava/lang/String;F)F
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getStaticValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 289
    :cond_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method protected getIntStaticValue(Ljava/lang/String;I)I
    .locals 0

    .line 272
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getStaticValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 275
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected getLongStaticValue(Ljava/lang/String;J)J
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getStaticValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    .line 282
    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method protected getNormalValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 222
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadFieldIfNeeded(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 235
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 237
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " IllegalAccessException encountered get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    .line 223
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected getStaticValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 307
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 313
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 327
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " IllegalAccessException encountered get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :catch_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    .line 323
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " IllegalAccessException encountered get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 321
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " No field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v1

    .line 308
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot get static value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected getStringStaticValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 300
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getStaticValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 303
    :cond_0
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 368
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 376
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p4, :cond_1

    const/4 p4, 0x0

    .line 382
    new-array p4, p4, [Ljava/lang/Object;

    .line 385
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadMethodIfNeeded(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-nez p3, :cond_2

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Cannot invoke there\'s no method reflection : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 392
    :cond_2
    :try_start_0
    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 397
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " InvocationTargetException encountered invoking "

    .line 398
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 397
    invoke-virtual {p3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 394
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " IllegalAccessException encountered invoking "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 377
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Cannot invoke "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected varargs invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected invokeStaticMethod(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 407
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 415
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    const/4 p3, 0x0

    .line 421
    new-array p3, p3, [Ljava/lang/Object;

    .line 424
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadMethodIfNeeded(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-nez p2, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Cannot invoke there\'s no method reflection : "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 431
    :cond_2
    :try_start_0
    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 436
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " InvocationTargetException encountered invoking "

    .line 437
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 433
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " IllegalAccessException encountered invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 433
    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 416
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Cannot invoke "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected varargs invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected loadClassIfNeeded(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mClassMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mClassMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected loadConstructorIfNeeded([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getUniqueConstructorName([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getReflectionInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    check-cast v1, Ljava/lang/reflect/Constructor;

    return-object v1

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 126
    new-array p1, p1, [Ljava/lang/Class;

    .line 131
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->addReflectionInstance(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-object v2, v1

    .line 136
    :catch_1
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v1, 0x1

    .line 137
    :try_start_3
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 138
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->addReflectionInstance(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    return-object p1

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    move-object p1, v2

    .line 141
    :goto_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " No method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object p1

    :cond_3
    :goto_1
    return-object v2
.end method

.method protected loadFieldIfNeeded(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getUniqueFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getReflectionInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 195
    check-cast v2, Ljava/lang/reflect/Field;

    return-object v2

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    if-nez v2, :cond_2

    return-object v0

    .line 204
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->addReflectionInstance(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-object v0, v2

    .line 209
    :catch_1
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v0, 0x1

    .line 210
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 211
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->addReflectionInstance(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2

    return-object p1

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :catch_3
    move-exception p1

    .line 214
    :goto_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " No field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected loadMethodIfNeeded(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getUniqueMethodName(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getReflectionInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    check-cast v1, Ljava/lang/reflect/Method;

    return-object v1

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 346
    new-array p2, p2, [Ljava/lang/Class;

    .line 350
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 351
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->addReflectionInstance(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 355
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 356
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 357
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->addReflectionInstance(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 360
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " No method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    :cond_3
    :goto_0
    return-object v2
.end method

.method protected loadReflection()V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadReflection(Ljava/lang/String;)V

    return-void
.end method

.method protected loadReflection(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    .line 43
    iget-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->mBaseClass:Ljava/lang/Class;

    if-nez p1, :cond_0

    const-string p1, "AbstractBaseReflection"

    const-string v0, "There\'s no class."

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadStaticFields()V

    return-void
.end method

.method protected loadReflection(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadReflection(Ljava/lang/Class;)V

    return-void
.end method

.method protected loadStaticFields()V
    .locals 0

    return-void
.end method

.method protected setNormalValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 244
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 249
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->loadFieldIfNeeded(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set value : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 257
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " IllegalAccessException encountered set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 245
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/cocktailbar/AbstractBaseReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set value : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
