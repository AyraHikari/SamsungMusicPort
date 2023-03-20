.class public final Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;
.super Ljava/lang/Object;
.source "LockPlayerPlayingItemText.kt"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/c$a;
.implements Lcom/samsung/android/app/music/player/fullplayer/z;
.implements Landroidx/lifecycle/r;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/view/View;

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->a:Landroid/app/Activity;

    const p1, 0x7f0b0581

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->b:Landroid/widget/TextView;

    const v0, 0x7f0b009c

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->c:Landroid/widget/TextView;

    const v1, 0x7f0b0069

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->d:Landroid/view/View;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->f:Z

    .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt p2, v1, :cond_0

    .line 7
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/util/i;

    invoke-direct {p2}, Lcom/samsung/android/app/musiclibrary/ui/util/i;-><init>()V

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->g:Z

    return-void
.end method

.method public d()[I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/app/music/player/fullplayer/z$a;->a(Lcom/samsung/android/app/music/player/fullplayer/z;)[I

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->g:Z

    return v0
.end method

.method public final f()J
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x190

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/app/a;->h(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->o()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public i(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public final j(Z)V
    .locals 7

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->e:Z

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    move v1, p1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->d:Landroid/view/View;

    const-string p1, "adultView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ktx/view/c;->v(Landroid/view/View;IJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artist"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lkotlin/text/p;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-static {p2}, Lkotlin/text/p;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->j(Z)V

    return-void
.end method

.method public final m()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->f()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    .line 3
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->b:Landroid/widget/TextView;

    const-string v4, "titleView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/a;->b:Landroid/view/animation/Interpolator;

    invoke-static {v3, v0, v1, v2, v4}, Lcom/samsung/android/app/musiclibrary/ktx/view/c;->u(Landroid/view/View;IJLandroid/view/animation/Interpolator;)V

    .line 4
    iget-object v3, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->c:Landroid/widget/TextView;

    const-string v5, "artistView"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0, v1, v2, v4}, Lcom/samsung/android/app/musiclibrary/ktx/view/c;->u(Landroid/view/View;IJLandroid/view/animation/Interpolator;)V

    .line 5
    iget-boolean v3, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->e:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    .line 6
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->d:Landroid/view/View;

    const-string v5, "adultView"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0, v1, v2, v4}, Lcom/samsung/android/app/musiclibrary/ktx/view/c;->u(Landroid/view/View;IJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->f:Z

    return v0
.end method

.method public final onStartCalled()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_START:Landroidx/lifecycle/k$b;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->i(Z)V

    return-void
.end method

.method public final onStopCalled()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_STOP:Landroidx/lifecycle/k$b;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->i(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->f:Z

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->m()V

    return-void
.end method
