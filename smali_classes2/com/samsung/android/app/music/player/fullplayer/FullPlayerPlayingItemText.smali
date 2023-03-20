.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;
.super Ljava/lang/Object;
.source "FullPlayerPlayingItemText.kt"

# interfaces
.implements Landroidx/lifecycle/r;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/c$a;
.implements Lcom/samsung/android/app/music/player/vi/h;


# instance fields
.field public final a:Lkotlin/g;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/view/View;

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$a;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$a;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 3
    new-instance v1, Landroidx/lifecycle/k0;

    const-class v2, Lcom/samsung/android/app/music/viewmodel/d;

    invoke-static {v2}, Lkotlin/jvm/internal/z;->a(Ljava/lang/Class;)Lkotlin/reflect/b;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$b;

    invoke-direct {v3, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$b;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/k0;-><init>(Lkotlin/reflect/b;Lkotlin/jvm/functions/a;Lkotlin/jvm/functions/a;)V

    .line 4
    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a:Lkotlin/g;

    const v0, 0x7f0b0581

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b:Landroid/widget/TextView;

    const v1, 0x7f0b009c

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c:Landroid/widget/TextView;

    const v2, 0x7f0b0069

    .line 7
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->d:Landroid/view/View;

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->f:Z

    .line 9
    iput-boolean p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->g:Z

    .line 10
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt p2, v2, :cond_0

    .line 11
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/util/i;

    invoke-direct {p2}, Lcom/samsung/android/app/musiclibrary/ui/util/i;-><init>()V

    .line 12
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 13
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->g()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/viewmodel/d;->X()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/l;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/l;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;)V

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/s;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->d(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final d(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->i(Z)V

    return-void
.end method


# virtual methods
.method public final e()J
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->f:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x190

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/player/vi/h$a;->b(Lcom/samsung/android/app/music/player/vi/h;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    return-void
.end method

.method public final g()Lcom/samsung/android/app/music/viewmodel/d;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/viewmodel/d;

    return-object v0
.end method

.method public final i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->f:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->s(Z)V

    return-void
.end method

.method public j(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/player/vi/h$a;->c(Lcom/samsung/android/app/music/player/vi/h;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V

    return-void
.end method

.method public l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 2

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->J()Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public m(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public final o(Z)V
    .locals 7

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->e:Z

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->f:Z

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
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->d:Landroid/view/View;

    const-string p1, "adultView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ktx/view/c;->v(Landroid/view/View;IJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    return-void
.end method

.method public final onStartCalled()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_START:Landroidx/lifecycle/k$b;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->m(Z)V

    return-void
.end method

.method public final onStopCalled()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_STOP:Landroidx/lifecycle/k$b;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->m(Z)V

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/text/p;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c:Landroid/widget/TextView;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lkotlin/text/p;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->o(Z)V

    return-void
.end method

.method public final s(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->e()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    .line 2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b:Landroid/widget/TextView;

    const-string v3, "titleView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$c;

    invoke-direct {v3, v2, p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$c;-><init>(Landroid/view/View;IJ)V

    invoke-static {v2, v3}, Landroidx/core/view/w;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/w;

    move-result-object v2

    const-string v3, "OneShotPreDrawListener.add(this) { action(this) }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c:Landroid/widget/TextView;

    const-string v4, "artistView"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v4, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$d;

    invoke-direct {v4, v2, p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$d;-><init>(Landroid/view/View;IJ)V

    invoke-static {v2, v4}, Landroidx/core/view/w;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/w;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->e:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    .line 7
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->d:Landroid/view/View;

    const-string v4, "adultView"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v4, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$e;

    invoke-direct {v4, v2, p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$e;-><init>(Landroid/view/View;IJ)V

    invoke-static {v2, v4}, Landroidx/core/view/w;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/w;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
