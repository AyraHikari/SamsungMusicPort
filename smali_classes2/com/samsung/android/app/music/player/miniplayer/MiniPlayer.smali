.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;
.super Ljava/lang/Object;
.source "MiniPlayer.kt"

# interfaces
.implements Lcom/samsung/android/app/music/widget/transition/i$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$a;,
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;
    }
.end annotation


# instance fields
.field public final a:Lcom/samsung/android/app/music/activity/h;

.field public final b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

.field public final c:Landroid/view/View$OnClickListener;

.field public final d:Landroid/view/View$OnClickListener;

.field public final e:Landroid/content/Context;

.field public final f:Lkotlin/g;

.field public final g:Lkotlin/g;

.field public final h:Lkotlin/g;

.field public final o:Lkotlin/g;

.field public final p:Landroid/view/ViewGroup;

.field public final q:Landroid/view/View;

.field public r:Lcom/samsung/android/app/music/player/miniplayer/f;

.field public s:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

.field public t:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;

.field public u:Lcom/samsung/android/app/music/player/miniplayer/j;

.field public v:Lcom/samsung/android/app/music/player/v3/PlayController;

.field public w:Lcom/samsung/android/app/music/player/miniplayer/d;

.field public final x:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

.field public final y:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$a;

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/activity/h;Lcom/samsung/android/app/music/player/vi/PlayerViCache;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumClickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queueButtonClickListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c:Landroid/view/View$OnClickListener;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->d:Landroid/view/View$OnClickListener;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->e:Landroid/content/Context;

    .line 7
    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$e;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$e;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->f:Lkotlin/g;

    .line 8
    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$d;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$d;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->g:Lkotlin/g;

    .line 9
    sget-object p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$b;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$b;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->h:Lkotlin/g;

    .line 10
    sget-object p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$c;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$c;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->o:Lkotlin/g;

    const p2, 0x7f0b0341

    .line 11
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/f;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->p:Landroid/view/ViewGroup;

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p3, "from(context)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->q:Landroid/view/View;

    .line 13
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->x:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    .line 14
    new-instance p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$a;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$a;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->y:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$a;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z:Z

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/v3/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->x:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/activity/h;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->s:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/miniplayer/d;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->w:Lcom/samsung/android/app/music/player/miniplayer/d;

    return-object p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic n(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/miniplayer/f;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->r:Lcom/samsung/android/app/music/player/miniplayer/f;

    return-object p0
.end method

.method public static final synthetic o(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/ui/debug/b;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->x()Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/v3/PlayController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->v:Lcom/samsung/android/app/music/player/v3/PlayController;

    return-object p0
.end method

.method public static final synthetic q(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->y:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$a;

    return-object p0
.end method

.method public static final synthetic r(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/a;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->y()Lcom/samsung/android/app/musiclibrary/ui/player/logger/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic s(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->t:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;

    return-object p0
.end method

.method public static final synthetic t(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->d:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static final synthetic u(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/c;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->A()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic v(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/vi/PlayerViCache;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/samsung/android/app/musiclibrary/ui/player/c;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->f:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/c;

    return-object v0
.end method

.method public final B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0e0161

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 3
    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ms\t"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MiniPlayer onCreateView()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " |\t"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "null cannot be cast to non-null type kotlin.Any"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TSP-Player"

    .line 8
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    const-string p2, "tsp({ \"MiniPlayer onCrea\u2026ntainer, false)\n        }"

    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final C(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->x()Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->a()Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->b()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onRestoreInstanceState "

    .line 5
    invoke-static {v2, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final D(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->x()Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->a()Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->b()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onSavedInstanceSate "

    .line 5
    invoke-static {v2, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final E(Landroid/view/View;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v1

    const-string v11, " |\t"

    const-string v12, "createUi[Mini]"

    const-string v13, " ms\t"

    const-string v14, "] "

    const/16 v15, 0x5b

    const-string v9, "TSP-Player"

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 3
    new-instance v3, Lcom/samsung/android/app/music/player/miniplayer/f;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->d(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lcom/samsung/android/app/music/player/miniplayer/f;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_0
    new-instance v3, Lcom/samsung/android/app/music/player/miniplayer/f;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->d(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v1

    invoke-direct {v3, v1, v10}, Lcom/samsung/android/app/music/player/miniplayer/f;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 10
    :goto_0
    instance-of v1, v3, Lcom/samsung/android/app/musiclibrary/ui/player/c$a;

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->A()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v1

    move-object v2, v3

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/player/c$a;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 11
    :cond_1
    instance-of v1, v3, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v2, v3

    check-cast v2, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 12
    :cond_2
    instance-of v1, v3, Lcom/samsung/android/app/music/player/i;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z()Lcom/samsung/android/app/music/player/j;

    move-result-object v1

    move-object v2, v3

    check-cast v2, Lcom/samsung/android/app/music/player/i;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 14
    :cond_3
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 15
    iput-object v3, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->r:Lcom/samsung/android/app/music/player/miniplayer/f;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 19
    new-instance v3, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->f(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->p(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 25
    :cond_4
    new-instance v3, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1, v10}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->f(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->p(Landroid/view/View$OnClickListener;)V

    .line 26
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->A()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 27
    iget-object v1, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z()Lcom/samsung/android/app/music/player/j;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 29
    iput-object v3, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->s:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    .line 30
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 32
    new-instance v3, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 38
    :cond_5
    new-instance v3, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1, v10}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 39
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->A()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 40
    iget-object v1, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z()Lcom/samsung/android/app/music/player/j;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 42
    iput-object v3, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->t:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;

    .line 43
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v1

    const-string v2, "MiniPlayer"

    const-string v3, "playerLogger"

    if-eqz v1, :cond_6

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 45
    new-instance v4, Lcom/samsung/android/app/music/n;

    invoke-direct {v4}, Lcom/samsung/android/app/music/n;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->r(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/a;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/n;->e(Lcom/samsung/android/app/musiclibrary/ui/player/logger/a;)V

    .line 46
    new-instance v18, Lcom/samsung/android/app/music/player/v3/PlayController;

    .line 47
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->d(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v3

    .line 48
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;

    invoke-direct {v5, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/a;Ljava/lang/String;)V

    const v6, 0x7f0b033e

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/16 v19, 0x0

    move-object/from16 v1, v18

    move-object v2, v3

    move-object/from16 v3, p1

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    .line 49
    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/app/music/player/v3/PlayController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/a;Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;ILcom/samsung/android/app/music/player/k;ILkotlin/jvm/internal/g;)V

    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long v1, v1, v16

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, v20

    .line 54
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v9

    move-object/from16 v1, v18

    goto :goto_3

    .line 55
    :cond_6
    new-instance v4, Lcom/samsung/android/app/music/n;

    invoke-direct {v4}, Lcom/samsung/android/app/music/n;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->r(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/a;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/n;->e(Lcom/samsung/android/app/musiclibrary/ui/player/logger/a;)V

    .line 56
    new-instance v18, Lcom/samsung/android/app/music/player/v3/PlayController;

    .line 57
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->d(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v3

    .line 58
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;

    invoke-direct {v5, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/a;Ljava/lang/String;)V

    const v6, 0x7f0b033e

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/16 v16, 0x0

    move-object/from16 v1, v18

    move-object v2, v3

    move-object/from16 v3, p1

    move-object/from16 v21, v9

    move-object/from16 v9, v16

    .line 59
    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/app/music/player/v3/PlayController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/a;Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;ILcom/samsung/android/app/music/player/k;ILkotlin/jvm/internal/g;)V

    .line 60
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->A()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 61
    iget-object v2, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 62
    instance-of v2, v1, Lcom/samsung/android/app/music/player/i;

    if-eqz v2, :cond_7

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z()Lcom/samsung/android/app/music/player/j;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/app/music/player/i;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 64
    :cond_7
    iput-object v1, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->v:Lcom/samsung/android/app/music/player/v3/PlayController;

    .line 65
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 67
    new-instance v3, Lcom/samsung/android/app/music/player/miniplayer/j;

    invoke-direct {v3, v10}, Lcom/samsung/android/app/music/player/miniplayer/j;-><init>(Landroid/view/View;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->t(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/player/miniplayer/j;->d(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v21

    .line 72
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    move-object/from16 v2, v21

    .line 73
    new-instance v3, Lcom/samsung/android/app/music/player/miniplayer/j;

    invoke-direct {v3, v10}, Lcom/samsung/android/app/music/player/miniplayer/j;-><init>(Landroid/view/View;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->t(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/player/miniplayer/j;->d(Landroid/view/View$OnClickListener;)V

    .line 74
    :goto_4
    instance-of v1, v3, Lcom/samsung/android/app/musiclibrary/ui/player/c$a;

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->A()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v1

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/player/c$a;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 75
    :cond_9
    instance-of v1, v3, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 76
    :cond_a
    instance-of v1, v3, Lcom/samsung/android/app/music/player/i;

    if-eqz v1, :cond_b

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z()Lcom/samsung/android/app/music/player/j;

    move-result-object v1

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/app/music/player/i;

    invoke-interface {v1, v4}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 78
    :cond_b
    iput-object v3, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->u:Lcom/samsung/android/app/music/player/miniplayer/j;

    .line 79
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 80
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 81
    new-instance v1, Lcom/samsung/android/app/music/player/miniplayer/d;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v10}, Lcom/samsung/android/app/music/player/miniplayer/d;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 87
    :cond_c
    new-instance v1, Lcom/samsung/android/app/music/player/miniplayer/d;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v10}, Lcom/samsung/android/app/music/player/miniplayer/d;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 88
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->A()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 89
    iget-object v3, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 90
    instance-of v3, v1, Lcom/samsung/android/app/music/player/i;

    if-eqz v3, :cond_d

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z()Lcom/samsung/android/app/music/player/j;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/app/music/player/i;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 92
    :cond_d
    iput-object v1, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->w:Lcom/samsung/android/app/music/player/miniplayer/d;

    .line 93
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 95
    new-instance v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V

    .line 96
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 101
    :cond_e
    new-instance v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V

    .line 102
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->A()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 103
    instance-of v2, v1, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 104
    :cond_f
    instance-of v2, v1, Lcom/samsung/android/app/music/player/i;

    if-eqz v2, :cond_10

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z()Lcom/samsung/android/app/music/player/j;

    move-result-object v2

    check-cast v1, Lcom/samsung/android/app/music/player/i;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 106
    :cond_10
    iget-boolean v1, v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->F(Z)V

    return-void
.end method

.method public final F(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z:Z

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->v:Lcom/samsung/android/app/music/player/v3/PlayController;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/v3/PlayController;->H(Z)V

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->u:Lcom/samsung/android/app/music/player/miniplayer/j;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/j;->c(Z)V

    .line 5
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->t:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->d(Z)V

    .line 6
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->s:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->t(Z)V

    :goto_4
    return-void
.end method

.method public b(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/widget/transition/i$g;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->p:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->p:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/app/music/widget/transition/i$g;->b()Lcom/samsung/android/app/music/widget/transition/i$g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/transition/i$g$a;->c()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->E(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/widget/transition/i$g;->b()Lcom/samsung/android/app/music/widget/transition/i$g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/transition/i$g$a;->a()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->w()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->r:Lcom/samsung/android/app/music/player/miniplayer/f;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/miniplayer/f;->c()V

    :goto_0
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->q:Landroid/view/View;

    return-object v0
.end method

.method public h(Lcom/samsung/android/app/music/widget/transition/i$g;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->t()V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/transition/i$g;->a()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->C(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->A()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->a()V

    return-void
.end method

.method public j(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->t()V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->p:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->r:Lcom/samsung/android/app/music/player/miniplayer/f;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/miniplayer/f;->d()V

    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->z:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->Z()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/i;->a(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/widget/transition/i$d$a;->a(Lcom/samsung/android/app/music/widget/transition/i$d;F)V

    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->p:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->A()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->b()V

    return-void
.end method

.method public final w(Lcom/samsung/android/app/music/player/vi/e;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->r(Lcom/samsung/android/app/music/player/vi/e;)V

    return-void
.end method

.method public final x()Lcom/samsung/android/app/musiclibrary/ui/debug/b;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->h:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    return-object v0
.end method

.method public final y()Lcom/samsung/android/app/musiclibrary/ui/player/logger/a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->o:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/logger/a;

    return-object v0
.end method

.method public final z()Lcom/samsung/android/app/music/player/j;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->g:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/j;

    return-object v0
.end method
