.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueueRepository"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_META_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_PLAYLIST_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final SQLITE_MAX_VARIABLE_NUMBER:I = 0x3e7


# instance fields
.field private final context:Landroid/content/Context;

.field private final metaDao$delegate:Lkotlin/Lazy;

.field private final playlistDao$delegate:Lkotlin/Lazy;

.field private final queueDao$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "metaDao"

    const-string v4, "getMetaDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playlistDao"

    const-string v4, "getPlaylistDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "queueDao"

    const-string v4, "getQueueDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$Companion;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->EMPTY_LIST:Ljava/util/List;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->EMPTY_META_LIST:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->EMPTY_PLAYLIST_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->context:Landroid/content/Context;

    .line 44
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$metaDao$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$metaDao$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->metaDao$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$playlistDao$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$playlistDao$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->playlistDao$delegate:Lkotlin/Lazy;

    .line 46
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$queueDao$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$queueDao$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->queueDao$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getEMPTY_LIST$cp()Ljava/util/List;
    .locals 1

    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getEMPTY_META_LIST$cp()Ljava/util/List;
    .locals 1

    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->EMPTY_META_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getEMPTY_PLAYLIST_LIST$cp()Ljava/util/List;
    .locals 1

    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->EMPTY_PLAYLIST_LIST:Ljava/util/List;

    return-object v0
.end method

.method private final getMetaDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->metaDao$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    return-object v0
.end method

.method private final getPlaylistDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->playlistDao$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;

    return-object v0
.end method

.method private final getQueueDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->queueDao$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;

    return-object v0
.end method

.method private final getSourceIdsSelection(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IN ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    check-cast p2, Ljava/lang/Iterable;

    .line 728
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    if-gez p2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_0
    check-cast v1, Ljava/lang/String;

    if-lez p2, :cond_1

    const-string p2, ","

    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x22

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v2

    goto :goto_0

    :cond_2
    const-string p1, ")"

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply {\n\u2026\n            }.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final setAvailableItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private final setMetaItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private final setPlaylistItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private final setQueueItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private final setVirtualItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public final clearMetaItems()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 141
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$clearMetaItems$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$clearMetaItems$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getMetaDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;->clear()I

    return-void
.end method

.method public final getAvailableItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->EMPTY_LIST:Ljava/util/List;

    .line 73
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getQueueDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;->getAvailableItems()Ljava/util/List;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$availableItems$2$1$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$availableItems$2$1$1;-><init>(Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final getMetaItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->EMPTY_META_LIST:Ljava/util/List;

    .line 96
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getMetaDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;->getAllItems()Ljava/util/List;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$metaItems$2$1$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$metaItems$2$1$1;-><init>(Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final getMetaItems(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;"
        }
    .end annotation

    const-string v0, "sourceIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e7

    if-lt v0, v1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getMetaDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    move-result-object v0

    .line 162
    new-instance v1, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM meta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "source_audio_id"

    .line 164
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getSourceIdsSelection(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ORDER BY _id ASC "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-direct {v1, p1}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    check-cast v1, Landroid/arch/persistence/db/SupportSQLiteQuery;

    .line 161
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;->rawQuery(Landroid/arch/persistence/db/SupportSQLiteQuery;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getMetaDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;->getItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 171
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$getMetaItems$1$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$getMetaItems$1$1;-><init>(Ljava/util/List;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    return-object p1
.end method

.method public final getPlaylistItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->EMPTY_PLAYLIST_LIST:Ljava/util/List;

    .line 85
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getPlaylistDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;->getAllItems()Ljava/util/List;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$playlistItems$2$1$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$playlistItems$2$1$1;-><init>(Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final getQueueItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->EMPTY_LIST:Ljava/util/List;

    .line 51
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getQueueDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;->getAllItems()Ljava/util/List;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$queueItems$2$1$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$queueItems$2$1$1;-><init>(Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final getVirtualItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->EMPTY_LIST:Ljava/util/List;

    .line 62
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getQueueDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;->getVirtualItems()Ljava/util/List;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$virtualItems$2$1$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$virtualItems$2$1$1;-><init>(Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final insertMeta(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$insertMeta$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$insertMeta$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 112
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$insertMeta$3$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$insertMeta$3$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getMetaDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;->insertAfterClear(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 118
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$insertMeta$3$2$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$insertMeta$3$2$1;-><init>(Ljava/util/List;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final insertPlaylist(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;)J
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$insertPlaylist$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$insertPlaylist$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 132
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getPlaylistDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;->insert(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlaylistItem;)J

    move-result-wide v0

    .line 134
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$insertPlaylist$3$1$1;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$insertPlaylist$3$1$1;-><init>(J)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    return-wide v0
.end method

.method public final removeMetaItems(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$removeMetaItems$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$removeMetaItems$1;-><init>(Ljava/util/List;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getMetaDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;->removeItems(Ljava/util/List;)V

    return-void
.end method

.method public final updateMetaItems(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$updateMetaItems$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$updateMetaItems$1;-><init>(Ljava/util/List;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->getMetaDao()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;->update(Ljava/util/List;)V

    return-void
.end method
