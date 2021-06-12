.class public final Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final items:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->context:Landroid/content/Context;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->items:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getItems$p(Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;)Ljava/util/HashMap;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->items:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic execute$default(Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 17
    move-object p1, v0

    check-cast p1, Ljava/lang/Long;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->execute(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addItems(JLjava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->items:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final execute(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->addItems(JLjava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 22
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 23
    new-instance p2, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter$execute$$inlined$let$lambda$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter$execute$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 34
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->context:Landroid/content/Context;

    return-object v0
.end method
