.class public final Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;
.super Ljava/lang/Object;
.source "M2TvConnectionController.kt"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/m;
.implements Landroidx/lifecycle/r;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/c$a;


# instance fields
.field public final a:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/ui/i;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/content/Context;

.field public final d:Landroidx/fragment/app/FragmentManager;

.field public final e:Lkotlin/g;

.field public f:Z

.field public g:J

.field public final h:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$b;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->b:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/h;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "activity.supportFragmentManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->d:Landroidx/fragment/app/FragmentManager;

    .line 6
    sget-object p1, Lkotlin/i;->c:Lkotlin/i;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$a;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$a;-><init>(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)V

    invoke-static {p1, p2}, Lkotlin/h;->a(Lkotlin/i;Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->e:Lkotlin/g;

    const-wide/16 p1, -0x63

    .line 7
    iput-wide p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->g:J

    .line 8
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$b;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$b;-><init>(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->h:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$b;

    return-void
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->d:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    return-object p0
.end method

.method public static final synthetic j(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->p(J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic l(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->f:Z

    return p0
.end method

.method public static final synthetic m(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "M2TvConnectionController> requestDeviceList() isDlnaSupported="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiPlayer"

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/i;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->o()Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->f:Z

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;->y(Lcom/samsung/android/app/musiclibrary/ui/i;Z)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->o()Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;->l()V

    return-void
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->o()Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;->o()Z

    move-result v0

    return v0
.end method

.method public final o()Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->e:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;

    return-object v0
.end method

.method public final onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_START:Landroidx/lifecycle/k$b;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->o()Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->h:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$b;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;->k(Lcom/samsung/android/app/musiclibrary/core/library/wifi/b$c;)V

    return-void
.end method

.method public final onStop()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_STOP:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->e()Z

    move-result v0

    const-wide/16 v1, -0x63

    .line 2
    iput-wide v1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->g:J

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->o()Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->h:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$b;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;->x(Lcom/samsung/android/app/musiclibrary/core/library/wifi/b$c;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->e()Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->C()V

    :cond_0
    return-void
.end method

.method public final p(J)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->c:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/util/k;->o(Landroid/content/Context;[J)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public final s(J)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->g:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->g:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->f:Z

    .line 4
    sget-object v1, Lkotlinx/coroutines/p1;->a:Lkotlinx/coroutines/p1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$c;-><init>(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;JLkotlin/coroutines/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->d(Lkotlinx/coroutines/l0;Lkotlin/coroutines/g;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;

    return-void
.end method

.method public final t(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->o()Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/b;->z(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    return-void
.end method
