.class public final Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$OnTypeChangedListener;,
        Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;

.field private static volatile q:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/music/advertise/AdPlayType;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;

.field private i:Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;

.field private j:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$OnTypeChangedListener;

.field private k:Lcom/samsung/android/app/music/advertise/AdPlayType;

.field private l:I

.field private m:J

.field private n:Z

.field private o:Ljava/lang/String;

.field private final p:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dormancyController"

    const-string v4, "getDormancyController()Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dummyPatterns"

    const-string v4, "getDummyPatterns()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "defaultPolicy"

    const-string v4, "getDefaultPolicy()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->p:Landroid/content/Context;

    .line 16
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dormancyController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dormancyController$2;-><init>(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->c:Lkotlin/Lazy;

    .line 17
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dummyPatterns$2;->INSTANCE:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dummyPatterns$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->d:Lkotlin/Lazy;

    .line 18
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$defaultPolicy$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$defaultPolicy$2;-><init>(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->e:Lkotlin/Lazy;

    .line 26
    sget-object p1, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->k:Lcom/samsung/android/app/music/advertise/AdPlayType;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;)Landroid/content/Context;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->p:Landroid/content/Context;

    return-object p0
.end method

.method public static final a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->o()Ljava/lang/String;

    move-result-object p1

    const-string p2, "defaultPolicy"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->q:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 8

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->o:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->o:Ljava/lang/String;

    .line 172
    sget-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adPattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;Ljava/lang/String;)V

    .line 173
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "&"

    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    .line 234
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 235
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 236
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 238
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 242
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_10

    .line 244
    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 173
    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 174
    array-length v1, p1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_7

    .line 175
    sget-object p1, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;

    const-string v0, "adPattern is abnormal"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;->b(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    :try_start_0
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    const-string v3, "-"

    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    .line 245
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 246
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 247
    :cond_8
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 248
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 184
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_8

    .line 249
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_6

    .line 253
    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p1

    :goto_6
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_d

    .line 255
    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 183
    check-cast p1, [Ljava/lang/String;

    .line 256
    array-length v2, p1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_e

    aget-object v4, p1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_b

    .line 188
    sget-object v7, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 191
    :catch_0
    :try_start_2
    invoke-static {v4}, Lcom/samsung/android/app/music/advertise/AdPlayType;->create(Ljava/lang/String;)Lcom/samsung/android/app/music/advertise/AdPlayType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 255
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 195
    sget-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsePattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".toString()"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;->b(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;Ljava/lang/String;)V

    .line 196
    sget-object p1, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_e
    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->f:Ljava/util/List;

    return-void

    .line 244
    :cond_f
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_10
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic l()Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;
    .locals 1

    .line 15
    sget-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->q:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    return-object v0
.end method

.method private final m()Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;

    return-object v0
.end method

.method private final n()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/advertise/AdPlayType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final o()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final p()Z
    .locals 3

    .line 122
    iget v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->l:I

    if-gtz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->p:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_PRE_AUDIO_AD_INTERVAL"

    const v2, 0x1b7740

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->l:I

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->q()Z

    move-result v0

    return v0
.end method

.method private final q()Z
    .locals 5

    .line 130
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->p:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_AD_PRE_AUDIO_PLAY_TIME"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->m:J

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->m:J

    sub-long/2addr v0, v2

    .line 134
    sget-object v2, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExpiredPreAdInterval: policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;Ljava/lang/String;)V

    .line 133
    iget v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->l:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final r()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/advertise/AdPlayType;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->f:Ljava/util/List;

    .line 156
    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 157
    invoke-static {p0, v0, v1, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;Ljava/lang/String;ILjava/lang/Object;)V

    .line 158
    sget-object v0, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->a:Lcom/samsung/android/app/music/service/milk/StoreDataSender$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->p:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/StoreDataSender$Companion;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/StoreDataSender;

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 161
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->n()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/model/basic/StoreDataModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->m()Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getDormancyCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->a(I)V

    .line 109
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getConfigs()Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;

    move-result-object v0

    const-string v1, "it.configs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->getPreAudioAdIntervalTime()I

    move-result v0

    const v1, 0xea60

    mul-int v0, v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->l:I

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getAdInterval()Ljava/lang/String;

    move-result-object p1

    const-string v0, "it.adInterval"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->h:Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;

    .line 91
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->i:Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;

    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$OnTypeChangedListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->j:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$OnTypeChangedListener;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 95
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->n:Z

    if-eq v0, p1, :cond_0

    .line 96
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->n:Z

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->h:Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 99
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;->getPlayCnt()I

    move-result p1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;->getOffer()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;->resetPlayCnt()V

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->n:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Lcom/samsung/android/app/music/advertise/AdPlayType;
    .locals 5

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    return-object v0

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->r()Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    return-object v0

    .line 44
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->g:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->g:I

    .line 47
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/advertise/AdPlayType;

    .line 48
    sget-object v2, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", type: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/advertise/AdPlayType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;Ljava/lang/String;)V

    return-object v1
.end method

.method public final c()Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->h:Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;->getPlayCnt()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;->getPlayCnt()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;->getOffer()I

    move-result v0

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final d()Z
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->m()Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->a()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 3

    .line 74
    iget v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->g:I

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->k:Lcom/samsung/android/app/music/advertise/AdPlayType;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b()Lcom/samsung/android/app/music/advertise/AdPlayType;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b()Lcom/samsung/android/app/music/advertise/AdPlayType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->k:Lcom/samsung/android/app/music/advertise/AdPlayType;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final f()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->j:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$OnTypeChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$OnTypeChangedListener;->a()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 116
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->m:J

    .line 117
    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->p:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_AD_PRE_AUDIO_PLAY_TIME"

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public final h()Z
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->m()Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->b()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->m()Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->c()V

    return-void
.end method

.method public final j()Z
    .locals 1

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->m()Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->d()Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->m()Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;->e()V

    return-void
.end method
