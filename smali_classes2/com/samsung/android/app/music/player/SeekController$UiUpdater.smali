.class final Lcom/samsung/android/app/music/player/SeekController$UiUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UiUpdater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;,
        Lcom/samsung/android/app/music/player/SeekController$UiUpdater$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$Companion;


# instance fields
.field private final A:Landroid/widget/TextView;

.field private final B:Landroid/widget/TextView;

.field private final C:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final D:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

.field private final c:Landroid/content/Context;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Landroid/os/HandlerThread;

.field private final g:Landroid/os/Handler;

.field private final h:Landroid/view/Choreographer;

.field private final i:Lkotlin/Lazy;

.field private j:Z

.field private k:Z

.field private l:J

.field private m:F

.field private n:J

.field private o:J

.field private p:I

.field private q:Z

.field private r:J

.field private s:J

.field private final t:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentTime$1;

.field private final u:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;

.field private final v:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;

.field private final w:Landroid/view/Choreographer$FrameCallback;

.field private final x:Landroid/view/Choreographer$FrameCallback;

.field private final y:Landroid/view/Choreographer$FrameCallback;

.field private final z:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "firstThread"

    const-string v4, "getFirstThread()Landroid/os/HandlerThread;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "firstThreadHandler"

    const-string v4, "getFirstThreadHandler()Landroid/os/Handler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "debugUiUpdater"

    const-string v4, "getDebugUiUpdater()Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seekBar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTimeView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "durationView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->z:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->A:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->B:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->C:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iput-object p6, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->D:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "c.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c:Landroid/content/Context;

    .line 367
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThread$2;->INSTANCE:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThread$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d:Lkotlin/Lazy;

    .line 370
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThreadHandler$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$firstThreadHandler$2;-><init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->e:Lkotlin/Lazy;

    .line 375
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->h:Landroid/view/Choreographer;

    .line 376
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$debugUiUpdater$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$debugUiUpdater$2;-><init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->i:Lkotlin/Lazy;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 382
    iput p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->m:F

    const/16 p1, 0x3e8

    int-to-long p2, p1

    .line 384
    iput-wide p2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->o:J

    .line 393
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->h()Landroid/os/HandlerThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 396
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "second_thread"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 398
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->g:Landroid/os/Handler;

    .line 396
    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f:Landroid/os/HandlerThread;

    .line 404
    iget-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->z:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 407
    new-instance p1, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentTime$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentTime$1;-><init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->t:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentTime$1;

    .line 413
    new-instance p1, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;-><init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->u:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;

    .line 438
    new-instance p1, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;-><init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->v:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;

    .line 448
    new-instance p1, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateCurrentTimeText$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateCurrentTimeText$1;-><init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V

    check-cast p1, Landroid/view/Choreographer$FrameCallback;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->w:Landroid/view/Choreographer$FrameCallback;

    .line 454
    new-instance p1, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateDurationText$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateDurationText$1;-><init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V

    check-cast p1, Landroid/view/Choreographer$FrameCallback;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->x:Landroid/view/Choreographer$FrameCallback;

    .line 456
    new-instance p1, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;-><init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V

    check-cast p1, Landroid/view/Choreographer$FrameCallback;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->y:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/widget/SeekBar;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->z:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;J)V
    .locals 0

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->e(J)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/os/HandlerThread;
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->h()Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Z
    .locals 0

    .line 361
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->j:Z

    return p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/os/Handler;
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->i()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)J
    .locals 2

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method private final e(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 627
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    .line 628
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c:Landroid/content/Context;

    long-to-int p1, p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 632
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->B:Landroid/widget/TextView;

    const-string p2, "--:--"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->B:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Z
    .locals 0

    .line 361
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->k:Z

    return p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->C:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object p0
.end method

.method private final h()Landroid/os/HandlerThread;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/os/HandlerThread;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f:Landroid/os/HandlerThread;

    return-object p0
.end method

.method private final i()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/os/Handler;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->g:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic j(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)J
    .locals 2

    .line 361
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->n:J

    return-wide v0
.end method

.method private final j()Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;

    return-object v0
.end method

.method public static final synthetic k(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->j()Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object p0

    return-object p0
.end method

.method private final k()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 562
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->u:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->g:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->u:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 564
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->h()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->i()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->u:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 566
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->i()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->u:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private final l()J
    .locals 8

    .line 571
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->C:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->s:J

    .line 572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->l:J

    .line 573
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->j()Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->s:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;->a(J)V

    .line 575
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->r:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->h:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->w:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 581
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->o:J

    .line 582
    iget v4, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->p:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 583
    iget-wide v4, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->s:J

    iget-wide v6, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->o:J

    rem-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 584
    iget-wide v4, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->s:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->o:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method public static final synthetic l(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/view/Choreographer;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->h:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static final synthetic m(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->y:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method public static final synthetic n(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)J
    .locals 2

    .line 361
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->l:J

    return-wide v0
.end method

.method public static final synthetic o(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)F
    .locals 0

    .line 361
    iget p0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->m:F

    return p0
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    const/16 v0, 0x3e8

    int-to-float v0, v0

    .line 517
    iget v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->m:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->o:J

    .line 518
    iput p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->m:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 487
    iput p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->p:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 390
    iput-wide p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->s:J

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEditedMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->k:Z

    const-string v0, "android.media.metadata.DURATION"

    .line 524
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    .line 525
    iget-wide v2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->r:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 526
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->k:Z

    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->e(J)V

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 386
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->q:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->q:Z

    return v0
.end method

.method public final b()J
    .locals 2

    .line 387
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->r:J

    return-wide v0
.end method

.method public final b(J)V
    .locals 6

    .line 531
    iput-wide p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->r:J

    .line 533
    iget-wide p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->r:J

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p1, v0

    const-wide/16 v0, 0x14

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->n:J

    .line 534
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->j()Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-wide v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->r:J

    iget-wide v3, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->n:J

    .line 536
    iget-boolean v5, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->k:Z

    .line 534
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;->a(JJZ)V

    .line 538
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->h:Landroid/view/Choreographer;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->x:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)V
    .locals 2

    const/4 v0, -0x1

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->C:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->s:J

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->l:J

    .line 544
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->z:Landroid/widget/SeekBar;

    new-instance p2, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$updateUiImmediate$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$updateUiImmediate$1;-><init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    .line 555
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->k:Z

    if-eqz p1, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->k()V

    :cond_1
    return-void
.end method

.method public final d()J
    .locals 2

    .line 390
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->s:J

    return-wide v0
.end method

.method public final d(J)V
    .locals 5

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 592
    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "--:--"

    .line 609
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->A:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 610
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->A:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/view/View;

    .line 611
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 610
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 613
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->A:Landroid/widget/TextView;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->D:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    if-eqz v1, :cond_3

    .line 615
    invoke-virtual {v1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "currentTimeString"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a(Ljava/lang/String;)V

    :cond_3
    const-string v1, "currentTimeString"

    .line 617
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "-"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v1, v3}, Lkotlin/text/StringsKt;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 618
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c:Landroid/content/Context;

    const p2, 0x7f0b040a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.tts_seconds)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 620
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c:Landroid/content/Context;

    long-to-int p1, p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 622
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->A:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 491
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->j:Z

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->i()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->t:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentTime$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->i()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->t:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentTime$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->v:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->g:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->v:Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->k:Z

    if-eqz v0, :cond_3

    .line 500
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->k()V

    :cond_3
    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->j:Z

    .line 506
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->i()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f()V

    .line 512
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->h()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 513
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method
