.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundController;
.super Ljava/lang/Object;
.source "BeyondBackground.kt"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/c$a;
.implements Lcom/samsung/android/app/music/player/vi/h;
.implements Landroidx/lifecycle/r;


# instance fields
.field public final a:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/samsung/android/app/music/background/j;

.field public final d:Lcom/samsung/android/app/music/background/c;

.field public e:Z

.field public final f:Z

.field public final g:Lkotlinx/coroutines/l0;

.field public h:Z

.field public o:Lkotlinx/coroutines/w1;

.field public final p:Landroid/content/ContentResolver;

.field public final q:Lcom/samsung/android/app/music/background/BeyondBackgroundController$f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->b:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/c;->C(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->e:Z

    .line 5
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/c;->z(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->f:Z

    .line 6
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/b;->a:Lcom/samsung/android/app/musiclibrary/core/service/v3/b;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/b;->a()Lkotlinx/coroutines/m1;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/m0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/l0;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->g:Lkotlinx/coroutines/l0;

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "activity.applicationContext.contentResolver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->p:Landroid/content/ContentResolver;

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/background/BeyondBackgroundController$f;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$f;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->q:Lcom/samsung/android/app/music/background/BeyondBackgroundController$f;

    .line 9
    new-instance v0, Lcom/samsung/android/app/music/background/j;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/j;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->c:Lcom/samsung/android/app/music/background/j;

    .line 10
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c;->e:Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c$a;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c$a;->a()Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c$b;

    move-result-object v1

    .line 11
    iget-boolean v2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->e:Z

    if-eqz v2, :cond_0

    .line 12
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/d;->b(Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c$b;)Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/a;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/samsung/android/app/music/background/e;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/a;->g()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/a;->j()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, p1, v3, v1}, Lcom/samsung/android/app/music/background/e;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v2, Lcom/samsung/android/app/music/background/e;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c$b;->a()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c$b;->b()I

    move-result v1

    invoke-direct {v2, p1, v3, v1}, Lcom/samsung/android/app/music/background/e;-><init>(Landroid/content/Context;II)V

    .line 15
    :goto_0
    invoke-virtual {p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setCurrentImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    new-instance p1, Lcom/samsung/android/app/music/background/c;

    invoke-direct {p1, p2, v2, v0}, Lcom/samsung/android/app/music/background/c;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Lcom/samsung/android/app/music/background/e;Lcom/samsung/android/app/music/background/j;)V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->d:Lcom/samsung/android/app/music/background/c;

    .line 18
    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundController$a;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$a;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/background/e;->c(Lkotlin/jvm/functions/l;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Lkotlinx/coroutines/l0;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->g:Lkotlinx/coroutines/l0;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Lcom/samsung/android/app/music/background/c;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->d:Lcom/samsung/android/app/music/background/c;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->p:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->v()Z

    move-result p0

    return p0
.end method

.method public static final synthetic m(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Lcom/samsung/android/app/music/background/BeyondBackgroundController$f;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->q:Lcom/samsung/android/app/music/background/BeyondBackgroundController$f;

    return-object p0
.end method

.method public static final synthetic o(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->f:Z

    return p0
.end method

.method public static final synthetic p(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->e:Z

    return p0
.end method

.method public static final synthetic s(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->h:Z

    return p0
.end method

.method public static final synthetic t(Lcom/samsung/android/app/music/background/BeyondBackgroundController;ZLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->x(ZLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->J()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->y(Z)V

    return-void
.end method

.method public j(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/player/vi/h$a;->c(Lcom/samsung/android/app/music/player/vi/h;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V

    return-void
.end method

.method public l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 3

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->l()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->d()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->z(IJ)V

    return-void
.end method

.method public final onDestroyCalled()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_DESTROY:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->g:Lkotlinx/coroutines/l0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/m0;->c(Lkotlinx/coroutines/l0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->d:Lcom/samsung/android/app/music/background/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/background/c;->j()V

    :goto_0
    return-void
.end method

.method public final onStartCalled()V
    .locals 9
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_START:Landroidx/lifecycle/k$b;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->h:Z

    .line 2
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->d:Lcom/samsung/android/app/music/background/c;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->w()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->o:Lkotlinx/coroutines/w1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/w1$a;->a(Lkotlinx/coroutines/w1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->g:Lkotlinx/coroutines/l0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/android/app/music/background/BeyondBackgroundController$b;

    invoke-direct {v6, p0, v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$b;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Lkotlin/coroutines/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/j;->d(Lkotlinx/coroutines/l0;Lkotlin/coroutines/g;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->o:Lkotlinx/coroutines/w1;

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/background/c;->p(Z)V

    :goto_1
    return-void
.end method

.method public final onStopCalled()V
    .locals 9
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_STOP:Landroidx/lifecycle/k$b;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->h:Z

    .line 2
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->d:Lcom/samsung/android/app/music/background/c;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->w()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->o:Lkotlinx/coroutines/w1;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/w1$a;->a(Lkotlinx/coroutines/w1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->g:Lkotlinx/coroutines/l0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/android/app/music/background/BeyondBackgroundController$c;

    invoke-direct {v6, p0, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$c;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Lkotlin/coroutines/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/j;->d(Lkotlinx/coroutines/l0;Lkotlin/coroutines/g;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->o:Lkotlinx/coroutines/w1;

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/background/c;->p(Z)V

    :goto_1
    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->Z()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/imageloader/a;->a:Lcom/samsung/android/app/musiclibrary/ui/imageloader/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->l()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->d()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/a;->d(IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->p:Landroid/content/ContentResolver;

    const-string v1, "reduce_animations"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final w()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x(ZLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/u;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/samsung/android/app/music/background/BeyondBackgroundController$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$d;

    iget v1, v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$d;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$d;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$d;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$d;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p2, v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$d;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/c;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$d;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/music/background/c;

    invoke-static {p2}, Lkotlin/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/n;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->d:Lcom/samsung/android/app/music/background/c;

    if-nez p2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/a1;->c()Lkotlinx/coroutines/i2;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/app/music/background/BeyondBackgroundController$e;

    const/4 v5, 0x0

    invoke-direct {v4, p2, p1, v5}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$e;-><init>(Lcom/samsung/android/app/music/background/c;ZLkotlin/coroutines/d;)V

    iput-object p2, v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$d;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$d;->d:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/j;->g(Lkotlin/coroutines/g;Lkotlin/jvm/functions/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 6
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final y(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->d:Lcom/samsung/android/app/music/background/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/c;->r(Z)V

    :goto_0
    return-void
.end method

.method public final z(IJ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->d:Lcom/samsung/android/app/music/background/c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c;->e:Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c$a;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "activity.applicationContext"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c$a;->b(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c;

    move-result-object v4

    const/4 v8, 0x0

    .line 4
    new-instance v9, Lcom/samsung/android/app/music/background/BeyondBackgroundController$g;

    invoke-direct {v9, p0, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController$g;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController;Lcom/samsung/android/app/music/background/c;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    move v5, p1

    move-wide v6, p2

    invoke-static/range {v4 .. v11}, Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c;->n(Lcom/samsung/android/app/musiclibrary/ui/imageloader/tintinfo/c;IJLandroid/graphics/Bitmap;Lkotlin/jvm/functions/p;ILjava/lang/Object;)V

    return-void
.end method
