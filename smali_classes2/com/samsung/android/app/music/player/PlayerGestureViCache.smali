.class public final Lcom/samsung/android/app/music/player/PlayerGestureViCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/PlayerGestureViCache$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/PlayerGestureViCache$Companion;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;",
            "[I>;"
        }
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/player/PlayerGestureViCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/PlayerGestureViCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->a:Lcom/samsung/android/app/music/player/PlayerGestureViCache$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->b:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->c:Ljava/util/Map;

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/player/PlayerGestureViCache;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 21
    iget-object p3, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->e:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->d:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[ILjava/lang/String;)V
    .locals 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->b:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->b:Ljava/util/Map;

    invoke-interface {v0, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 27
    :cond_0
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p3, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->c:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->e:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->d:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_5

    .line 37
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 40
    :cond_1
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    .line 41
    iget-object v3, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->d:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->c:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    check-cast v4, [I

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V

    goto :goto_0

    .line 43
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->b:Ljava/util/Map;

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->d:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_4

    .line 61
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 64
    :cond_1
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    .line 65
    iget-object v3, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->d:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V

    goto :goto_0

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->b:Ljava/util/Map;

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method
