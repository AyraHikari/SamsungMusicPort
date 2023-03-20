.class public final Lcom/samsung/android/app/music/player/volume/VolumeController;
.super Ljava/lang/Object;
.source "VolumeController.kt"

# interfaces
.implements Lcom/samsung/android/app/music/player/volume/i;
.implements Lcom/samsung/android/app/musiclibrary/ui/dex/h;
.implements Lcom/samsung/android/app/musiclibrary/ui/v$a;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/c$a;
.implements Landroidx/lifecycle/r;
.implements Lcom/samsung/android/app/music/player/i;


# instance fields
.field public final a:Lcom/samsung/android/app/musiclibrary/ui/i;

.field public final b:Landroid/view/View;

.field public final c:Lcom/samsung/android/app/musiclibrary/ui/player/c;

.field public final d:Landroid/content/Context;

.field public final e:Landroid/view/ViewTreeObserver;

.field public final f:Landroid/os/Handler;

.field public g:I

.field public h:I

.field public o:Lcom/samsung/android/app/music/player/volume/i$a;

.field public p:Lcom/samsung/android/app/music/player/volume/e;

.field public final q:Lkotlin/g;

.field public final r:Lkotlin/g;

.field public final s:Lcom/samsung/android/app/music/player/volume/VolumeController$c;

.field public final t:Lcom/samsung/android/app/music/player/volume/VolumeController$d;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/c;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->a:Lcom/samsung/android/app/musiclibrary/ui/i;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->b:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->c:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->d:Landroid/content/Context;

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->e:Landroid/view/ViewTreeObserver;

    .line 7
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->f:Landroid/os/Handler;

    const/4 p2, -0x1

    .line 8
    iput p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->g:I

    const/4 p2, 0x1

    .line 9
    iput p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->h:I

    .line 10
    sget-object p2, Lkotlin/i;->c:Lkotlin/i;

    new-instance p3, Lcom/samsung/android/app/music/player/volume/VolumeController$b;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/player/volume/VolumeController$b;-><init>(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    invoke-static {p2, p3}, Lkotlin/h;->a(Lkotlin/i;Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->q:Lkotlin/g;

    .line 11
    new-instance p3, Lcom/samsung/android/app/music/player/volume/VolumeController$a;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/player/volume/VolumeController$a;-><init>(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    invoke-static {p2, p3}, Lkotlin/h;->a(Lkotlin/i;Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->r:Lkotlin/g;

    .line 12
    new-instance p2, Lcom/samsung/android/app/music/player/volume/VolumeController$c;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/volume/VolumeController$c;-><init>(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->s:Lcom/samsung/android/app/music/player/volume/VolumeController$c;

    .line 13
    new-instance p2, Lcom/samsung/android/app/music/player/volume/VolumeController$d;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/volume/VolumeController$d;-><init>(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->t:Lcom/samsung/android/app/music/player/volume/VolumeController$d;

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->x()V

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public static final F(Lcom/samsung/android/app/music/player/volume/VolumeController;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->E()V

    return-void
.end method

.method public static synthetic l(Lcom/samsung/android/app/music/player/volume/VolumeController;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->F(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    return-void
.end method

.method public static final synthetic m(Lcom/samsung/android/app/music/player/volume/VolumeController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->w()V

    return-void
.end method

.method public static final synthetic s(Lcom/samsung/android/app/music/player/volume/VolumeController;)Lcom/samsung/android/app/musiclibrary/ui/i;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->a:Lcom/samsung/android/app/musiclibrary/ui/i;

    return-object p0
.end method

.method public static final synthetic t(Lcom/samsung/android/app/music/player/volume/VolumeController;)Lcom/samsung/android/app/music/player/volume/VolumeController$c;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->s:Lcom/samsung/android/app/music/player/volume/VolumeController$c;

    return-object p0
.end method

.method public static final synthetic u(Lcom/samsung/android/app/music/player/volume/VolumeController;)Lcom/samsung/android/app/musiclibrary/ui/player/c;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->c:Lcom/samsung/android/app/musiclibrary/ui/player/c;

    return-object p0
.end method

.method public static final synthetic v(Lcom/samsung/android/app/music/player/volume/VolumeController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->D()V

    return-void
.end method


# virtual methods
.method public final A()Lcom/samsung/android/app/music/player/volume/c;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->r:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/volume/c;

    return-object v0
.end method

.method public final B()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->q:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final C()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final D()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/player/volume/j;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/volume/j;-><init>(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public E()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/music/player/volume/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/e;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/e;->E()V

    :cond_1
    :goto_0
    return-void
.end method

.method public G()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->o:Lcom/samsung/android/app/music/player/volume/i$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/i$a;->a()V

    :goto_0
    return-void
.end method

.method public final H(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->g:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->g:I

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->x()V

    .line 4
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->h:I

    if-eq p1, p2, :cond_1

    .line 5
    iput p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->h:I

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->I()V

    :cond_1
    return-void
.end method

.method public final I()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/music/player/volume/e;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/e;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/e;->p()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->E()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/music/player/volume/e;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/dex/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->G()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/music/player/volume/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/dex/h;->e()V

    :goto_0
    return-void
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/music/player/volume/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/e;->f()Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/music/player/volume/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/e;->g()Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/music/player/volume/e;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/e;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/e;->E()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/e;->p()V

    :goto_0
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/music/player/volume/e;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/dex/h;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->G()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public o(Lcom/samsung/android/app/music/player/volume/i$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->o:Lcom/samsung/android/app/music/player/volume/i$a;

    return-void
.end method

.method public final onDestroyCalled()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_DESTROY:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->e:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->e:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->t:Lcom/samsung/android/app/music/player/volume/VolumeController$d;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->t:Lcom/samsung/android/app/music/player/volume/VolumeController$d;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->E()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/c;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/music/player/volume/e;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/v$a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/c;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/music/player/volume/e;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/v$a;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final onStopCalled()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_STOP:Landroidx/lifecycle/k$b;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->E()V

    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->A()Lcom/samsung/android/app/music/player/volume/c;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->B()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/volume/e;

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/music/player/volume/e;

    return-void
.end method

.method public y()Lcom/samsung/android/app/musiclibrary/ui/dex/h;
    .locals 0

    return-object p0
.end method
