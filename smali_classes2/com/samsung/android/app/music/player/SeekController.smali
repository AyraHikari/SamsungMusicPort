.class public final Lcom/samsung/android/app/music/player/SeekController;
.super Ljava/lang/Object;
.source "SeekController.kt"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/c$a;
.implements Lcom/samsung/android/app/music/player/vi/h;
.implements Landroidx/lifecycle/r;
.implements Lcom/samsung/android/app/music/player/i;


# instance fields
.field public final a:Lcom/samsung/android/app/musiclibrary/ui/i;

.field public final b:Landroid/content/Context;

.field public final c:Lkotlin/g;

.field public final d:Landroid/widget/SeekBar;

.field public final e:Landroid/view/View;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Lkotlin/g;

.field public final o:Lkotlin/g;

.field public final p:Lkotlin/g;

.field public final q:Lkotlin/g;

.field public final r:Lkotlin/g;

.field public s:J

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;Z)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forwardRewindInputListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/i;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->b:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/samsung/android/app/music/player/SeekController$e;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/player/SeekController$e;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 5
    new-instance v1, Landroidx/lifecycle/k0;

    const-class v2, Lcom/samsung/android/app/music/viewmodel/d;

    invoke-static {v2}, Lkotlin/jvm/internal/z;->a(Ljava/lang/Class;)Lkotlin/reflect/b;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/player/SeekController$f;

    invoke-direct {v3, p1}, Lcom/samsung/android/app/music/player/SeekController$f;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/k0;-><init>(Lkotlin/reflect/b;Lkotlin/jvm/functions/a;Lkotlin/jvm/functions/a;)V

    .line 6
    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->c:Lkotlin/g;

    const v0, 0x7f0b045e

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    const v1, 0x7f0b057b

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->e:Landroid/view/View;

    const v1, 0x7f0b014d

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->f:Landroid/widget/TextView;

    const v1, 0x7f0b059f

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->g:Landroid/widget/TextView;

    .line 11
    new-instance v1, Lcom/samsung/android/app/music/player/SeekController$a;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/player/SeekController$a;-><init>(Lcom/samsung/android/app/music/player/SeekController;Landroid/view/View;)V

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->h:Lkotlin/g;

    .line 12
    new-instance v1, Lcom/samsung/android/app/music/player/SeekController$g;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/SeekController$g;-><init>(Lcom/samsung/android/app/music/player/SeekController;)V

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->o:Lkotlin/g;

    .line 13
    new-instance v1, Lcom/samsung/android/app/music/player/SeekController$b;

    invoke-direct {v1, p4, p0, p2}, Lcom/samsung/android/app/music/player/SeekController$b;-><init>(ZLcom/samsung/android/app/music/player/SeekController;Landroid/view/View;)V

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController;->p:Lkotlin/g;

    .line 14
    new-instance p2, Lcom/samsung/android/app/music/player/SeekController$d;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/SeekController$d;-><init>(Lcom/samsung/android/app/music/player/SeekController;)V

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController;->q:Lkotlin/g;

    .line 15
    new-instance p2, Lcom/samsung/android/app/music/player/SeekController$c;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/SeekController$c;-><init>(Lcom/samsung/android/app/music/player/SeekController;)V

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController;->r:Lkotlin/g;

    const-wide/16 v1, -0x1

    .line 16
    iput-wide v1, p0, Lcom/samsung/android/app/music/player/SeekController;->s:J

    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p0, Lcom/samsung/android/app/music/player/SeekController;->t:Z

    const-string p2, ""

    .line 18
    invoke-static {v0, p2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/widget/f;->a(Landroid/view/View;Z)V

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->B()Lcom/samsung/android/app/music/player/o;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->A()Lcom/samsung/android/app/music/player/f;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 21
    invoke-virtual {v0, p3}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 22
    new-instance p2, Lcom/samsung/android/app/music/player/x;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "context"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/samsung/android/app/music/player/x;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/c0;)V

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ktx/view/c;->j(Landroid/view/View;Landroidx/core/view/a;)V

    .line 23
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/util/c;->y(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 24
    new-instance p2, Lcom/samsung/android/app/music/player/e;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/app/music/player/e;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/music/player/c0;)V

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/a;->c(Landroid/widget/SeekBar;Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/a$b;)V

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->D()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/viewmodel/d;->U()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/music/player/m;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/player/m;-><init>(Lcom/samsung/android/app/music/player/SeekController;)V

    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/s;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public static final H(Lcom/samsung/android/app/music/player/SeekController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 3
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-le v0, v1, :cond_0

    .line 4
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/app/music/player/SeekController;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/player/SeekController;->g(Lcom/samsung/android/app/music/player/SeekController;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/app/music/player/SeekController;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/music/player/SeekController;->H(Lcom/samsung/android/app/music/player/SeekController;)V

    return-void
.end method

.method public static final g(Lcom/samsung/android/app/music/player/SeekController;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/SeekController;->I(I)V

    return-void
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/musiclibrary/ui/i;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/i;

    return-object p0
.end method

.method public static final synthetic m(Lcom/samsung/android/app/music/player/SeekController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic o(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic p(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic s(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/music/widget/progress/a;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->y()Lcom/samsung/android/app/music/widget/progress/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/music/widget/progress/d;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->z()Lcom/samsung/android/app/music/widget/progress/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic u(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static final synthetic v(Lcom/samsung/android/app/music/player/SeekController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->e:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic w(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/music/player/c0;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/samsung/android/app/music/player/f;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->r:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/f;

    return-object v0
.end method

.method public final B()Lcom/samsung/android/app/music/player/o;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->q:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/o;

    return-object v0
.end method

.method public final C()Lcom/samsung/android/app/music/player/c0;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->o:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/c0;

    return-object v0
.end method

.method public final D()Lcom/samsung/android/app/music/viewmodel/d;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->c:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/viewmodel/d;

    return-object v0
.end method

.method public final E(IJ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SeekController> DEBUG "

    const-string v2, "initializeSeekBar"

    .line 3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-UI-Player"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->A()Lcom/samsung/android/app/music/player/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/f;->b(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/player/c0;->H(IJ)V

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/c0;->G()V

    return-void
.end method

.method public final F()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->A()Lcom/samsung/android/app/music/player/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/f;->a()Z

    move-result v0

    return v0
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/music/player/n;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/n;-><init>(Lcom/samsung/android/app/music/player/SeekController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final I(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    const-string v1, "seekBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/samsung/android/app/music/player/SeekController$h;

    invoke-direct {v1, v0, p0, p1}, Lcom/samsung/android/app/music/player/SeekController$h;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/player/SeekController;I)V

    invoke-static {v0, v1}, Landroidx/core/view/w;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/w;

    move-result-object p1

    const-string v0, "OneShotPreDrawListener.add(this) { action(this) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/c0;->G()V

    :cond_0
    return-void
.end method

.method public f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController;->t:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/c0;->C(Z)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/SeekController;->x(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    .line 4
    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/SeekController;->t:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/SeekController;->x(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    :goto_0
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

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->O()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->l()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->m()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/player/SeekController;->E(IJ)V

    :cond_0
    return-void
.end method

.method public final onDestroyCalled()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_DESTROY:Landroidx/lifecycle/k$b;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/c0;->B()V

    return-void
.end method

.method public final onStopCalled()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/b0;
        value = .enum Landroidx/lifecycle/k$b;->ON_STOP:Landroidx/lifecycle/k$b;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/c0;->G()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public final x(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", custom drawing progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/c0;->z()Z

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",active player progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;->position()J

    move-result-wide v2

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeekController> DEBUG "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-UI-Player"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_0
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController;->s:J

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->o()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController;->s:J

    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->n()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/c0;->D(I)V

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->m()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->f()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/c;->s(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;)V

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->f()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/app/music/player/c0;->K(J)V

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->G()V

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->A()Lcom/samsung/android/app/music/player/f;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/player/f;->b(Z)V

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->q()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/player/c0;->M(F)V

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/c0;->z()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/c0;->G()V

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;->position()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/app/music/player/c0;->N(J)V

    if-eq v0, v2, :cond_6

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/c0;->G()V

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/c0;->E()V

    goto :goto_1

    .line 25
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController;->C()Lcom/samsung/android/app/music/player/c0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/c0;->G()V

    :goto_1
    return-void
.end method

.method public final y()Lcom/samsung/android/app/music/widget/progress/a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->h:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/widget/progress/a;

    return-object v0
.end method

.method public final z()Lcom/samsung/android/app/music/widget/progress/d;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->p:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/widget/progress/d;

    return-object v0
.end method
