.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 429
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$logI(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 429
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->logI(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$printDebug(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 429
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->printDebug(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$tsp(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0

    .line 429
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->tsp(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final logI(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SMUSIC-SV-List"

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoom >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final printDebug(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 498
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-SV-List"

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueRoom>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final tsp(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 497
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 453
    :cond_0
    monitor-enter p0

    .line 454
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 456
    :cond_1
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;

    const-string v1, "queue"

    .line 455
    invoke-static {p1, v0, v1}, Landroid/arch/persistence/room/Room;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->a()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->access$setINSTANCE$cp(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;)V

    const-string v0, "Room.databaseBuilder<Que\u2026().also { INSTANCE = it }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 453
    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
