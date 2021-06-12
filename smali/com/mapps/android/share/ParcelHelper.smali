.class public Lcom/mapps/android/share/ParcelHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/share/ParcelHelper$Cache;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x65


# instance fields
.field private arrr:Ljava/lang/Class;

.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mapps/android/share/ParcelHelper;->id:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/mapps/android/share/ParcelHelper;->arrr:Ljava/lang/Class;

    .line 16
    iput-object v0, p0, Lcom/mapps/android/share/ParcelHelper;->cache:Ljava/util/Map;

    const/16 v0, 0x5f

    const/16 v1, 0x2e

    .line 19
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2d

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mapps/android/share/ParcelHelper;->id:Ljava/lang/String;

    .line 22
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ".R"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/mapps/android/share/ParcelHelper;->arrr:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    new-instance p1, Lcom/mapps/android/share/ParcelHelper$Cache;

    invoke-direct {p1, p0}, Lcom/mapps/android/share/ParcelHelper$Cache;-><init>(Lcom/mapps/android/share/ParcelHelper;)V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/mapps/android/share/ParcelHelper;->cache:Ljava/util/Map;

    return-void

    :catch_0
    move-exception p1

    .line 25
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Exception finding R class"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getResourceClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/mapps/android/share/ParcelHelper;->arrr:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v3, v0, v2

    .line 128
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDrawableId(Ljava/lang/String;)I
    .locals 2

    const-string v0, "drawable"

    const/4 v1, 0x1

    .line 77
    invoke-virtual {p0, p1, v0, v1}, Lcom/mapps/android/share/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, p1, p2, v0}, Lcom/mapps/android/share/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7c

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lcom/mapps/android/share/ParcelHelper;->cache:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/share/ParcelHelper;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    .line 99
    new-instance p3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapps/android/share/ParcelHelper;->id:Ljava/lang/String;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5f

    .line 101
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mapps/android/share/ParcelHelper;->getResourceClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    .line 115
    iget-object p2, p0, Lcom/mapps/android/share/ParcelHelper;->cache:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 120
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Exception finding resource identifier"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getItemId(Ljava/lang/String;)I
    .locals 2

    const-string v0, "id"

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, p1, v0, v1}, Lcom/mapps/android/share/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 2

    const-string v0, "layout"

    const/4 v1, 0x1

    .line 65
    invoke-virtual {p0, p1, v0, v1}, Lcom/mapps/android/share/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public getMenuId(Ljava/lang/String;)I
    .locals 2

    const-string v0, "menu"

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p0, p1, v0, v1}, Lcom/mapps/android/share/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public getStyleableArray(Ljava/lang/String;)[I
    .locals 3

    :try_start_0
    const-string v0, "styleable"

    .line 33
    invoke-direct {p0, v0}, Lcom/mapps/android/share/ParcelHelper;->getResourceClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 41
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    .line 42
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-array v0, v0, [I

    .line 44
    :goto_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-lt v1, v2, :cond_0

    return-object v0

    .line 45
    :cond_0
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_1
    new-array p1, v1, [I

    return-object p1

    :catch_0
    move-exception p1

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception finding styleable"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getStyleableId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "styleable"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mapps/android/share/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method
