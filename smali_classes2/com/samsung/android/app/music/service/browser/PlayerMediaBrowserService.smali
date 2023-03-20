.class public final Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;
.super Landroid/service/media/MediaBrowserService;
.source "PlayerMediaBrowserService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;
    }
.end annotation


# static fields
.field public static final b:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;

.field public static final c:Lkotlin/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/g<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/service/browser/mediaitem/h;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lkotlin/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->b:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;

    sget-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$a;->a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$a;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->c:Lkotlin/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$e;->a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$e;

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a:Lkotlin/g;

    return-void
.end method

.method public static final synthetic a()Lkotlin/g;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->c:Lkotlin/g;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Landroid/net/Uri;Landroid/service/media/MediaBrowserService$Result;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->j(Landroid/net/Uri;Landroid/service/media/MediaBrowserService$Result;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->k(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->l(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;ZLjava/lang/String;ILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->e(ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e(ZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/service/browser/mediaitem/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string p1, "local"

    .line 1
    invoke-static {p2, p1}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    .line 2
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;

    move-result-object v3

    const-string v4, "tab_menu_list"

    const-string v5, ""

    .line 4
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v3, v1, [Ljava/lang/Object;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x5b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%-20s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(this, *args)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnabledTabs("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", from \'SettingManger\'): ["

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "], "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "MEDIA_BROWSER> "

    invoke-static {v3, p2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "SMUSIC-SV"

    .line 7
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    const-string p2, "|"

    .line 8
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/p;->t0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_2
    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/collections/m;->i()Ljava/util/List;

    move-result-object p2

    .line 9
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v4, 0x1000031

    if-eqz v3, :cond_7

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->h(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    sget-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->b:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/browser/mediaitem/h;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_5
    :goto_4
    sget-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->b:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/browser/mediaitem/h;

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move v0, v3

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_9

    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->h(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 14
    sget-object p1, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->b:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/service/browser/mediaitem/h;

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    return-object v2
.end method

.method public final g()Lcom/samsung/android/app/music/l;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/l;

    return-object v0
.end method

.method public final h(I)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/music/info/features/a;->Z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/music/info/features/a;->Z:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/service/browser/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final j(Landroid/net/Uri;Landroid/service/media/MediaBrowserService$Result;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/u;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/a1;->b()Lkotlinx/coroutines/h0;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$c;-><init>(Landroid/net/Uri;Landroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/j;->g(Lkotlin/coroutines/g;Lkotlin/jvm/functions/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final k(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v0, v1, v2, v1}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->f(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;ZLjava/lang/String;ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    const-string v4, "applicationContext"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/service/browser/mediaitem/h;

    .line 3
    invoke-interface {v2, p3}, Lcom/samsung/android/app/music/service/browser/mediaitem/h;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/app/music/service/browser/mediaitem/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-interface {v2, p3}, Lcom/samsung/android/app/music/service/browser/mediaitem/h;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 7
    :goto_0
    invoke-interface {v2, p3, p2, v3}, Lcom/samsung/android/app/music/service/browser/mediaitem/h;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    sget-object p2, Lcom/samsung/android/app/music/service/browser/mediaitem/j;->c:Lcom/samsung/android/app/music/service/browser/mediaitem/j$a;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/service/browser/mediaitem/j$a;->f(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1, p4}, Lcom/samsung/android/app/music/service/browser/mediaitem/j$a;->d(Landroid/content/Context;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    .line 9
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v0

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%-20s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "format(this, *args)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "This is not predefined format: "

    .line 10
    invoke-static {p3, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "MEDIA_BROWSER> "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SMUSIC-SV"

    .line 11
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lkotlin/collections/m;->i()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;

    iget v1, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;-><init>(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p2, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/c;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->h:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->a:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    invoke-static {p2}, Lkotlin/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/n;->b(Ljava/lang/Object;)V

    if-nez p1, :cond_3

    .line 4
    invoke-static {}, Lkotlin/collections/m;->i()Ljava/util/List;

    move-result-object p1

    goto/16 :goto_4

    :cond_3
    new-array p2, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v2, "%-20s"

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "format(this, *args)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadRootItems("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MEDIA_BROWSER> "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "SMUSIC-SV"

    .line 7
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->e(ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v6, p0

    move-object v4, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v4

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/service/browser/mediaitem/h;

    .line 11
    invoke-virtual {v6}, Landroid/service/media/MediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "applicationContext"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->b:Ljava/lang/Object;

    iput-object v4, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->c:Ljava/lang/Object;

    iput-object v2, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$d;->h:I

    invoke-interface {v5, v7, p2, v0}, Lcom/samsung/android/app/music/service/browser/mediaitem/h;->c(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, v5

    move-object v5, p2

    move-object p2, v9

    :goto_2
    check-cast p2, Landroid/media/browse/MediaBrowser$MediaItem;

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object p2, v5

    goto :goto_1

    :cond_6
    move-object p1, v4

    :goto_4
    return-object p1
.end method

.method public onCreate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 2
    sget-object v0, Lcom/samsung/android/app/music/service/v3/session/c;->c:Lcom/samsung/android/app/music/service/v3/session/c$a;

    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/v3/session/c$a;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/v3/session/c;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/v3/session/c;->d()Lcom/samsung/android/app/music/service/v3/session/a;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/service/v3/a;->j:Lcom/samsung/android/app/music/service/v3/a;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/p;->c()Lcom/samsung/android/app/musiclibrary/ui/permission/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/v3/session/a;->t(Lcom/samsung/android/app/musiclibrary/ui/permission/a;)V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/v3/session/c;->c()Landroid/media/session/MediaSession;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    const-string v2, "ms.sessionToken"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/service/media/MediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%-20s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(this, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_BROWSER> "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-SV"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->b:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/browser/mediaitem/h;

    .line 3
    invoke-interface {v1}, Lcom/samsung/android/app/music/service/browser/mediaitem/h;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onDestroy()V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 12

    const-string v0, "clientPackageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v1, v6

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%-20s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "format(this, *args)"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onGetRoot clientPackageName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " clientUid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " rootHints "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MEDIA_BROWSER> "

    invoke-static {v9, v8}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "SMUSIC-SV"

    .line 3
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    return-object v10

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->g()Lcom/samsung/android/app/music/l;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/samsung/android/app/music/l;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetRoot("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): No permission granted"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_1
    const-string p2, "com.google.android.projection.gearhead"

    .line 9
    invoke-static {p2, p1}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "android.media.browse.AUTO_TABS_OPT_IN_HINT"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    new-instance p2, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string p3, "samu://android.auto/root"

    invoke-direct {p2, p3, p1}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/service/browser/b;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "samu://local/root"

    if-eqz p2, :cond_3

    .line 13
    new-instance p2, Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-direct {p2, p3, v10}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    new-instance p2, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string p1, "samu://online/root"

    invoke-direct {p2, p1, v10}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 16
    :cond_4
    new-instance p2, Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-direct {p2, p3, v10}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-object p2
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "parentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%-20s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadChildren parentId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEDIA_BROWSER> "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-SV"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p2}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    .line 5
    sget-object v2, Lkotlinx/coroutines/p1;->a:Lkotlinx/coroutines/p1;

    new-instance v5, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$f;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$f;-><init>(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Lkotlin/coroutines/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/j;->d(Lkotlinx/coroutines/l0;Lkotlin/coroutines/g;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;

    return-void
.end method
