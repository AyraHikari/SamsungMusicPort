.class public final Lcom/samsung/android/app/music/player/lockplayer/LockCloser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Landroid/support/v4/app/FragmentActivity;

.field private final d:Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onKeyGuardDismissListener"

    const-string v4, "getOnKeyGuardDismissListener()Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragViManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->c:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->d:Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    .line 24
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockCloser;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockCloser;)Landroid/support/v4/app/FragmentActivity;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->c:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method

.method private final a(Landroid/app/Activity;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x10001

    const/4 v2, 0x0

    .line 92
    invoke-static {v0, v1, v2, v2, v2}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 87
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchAndFinish() activity is null or finishing or destroy !! activity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockCloserKt;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/view/Window;)V
    .locals 1

    const/high16 v0, 0x400000

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockCloser;Landroid/app/Activity;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private final b()Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->b:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/lockplayer/LockCloser;)Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->d:Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->c:Landroid/support/v4/app/FragmentActivity;

    .line 118
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->a(Landroid/app/Activity;Z)V

    .line 119
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->b()Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;

    move-result-object p1

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;->a(Z)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->c:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/app/Activity;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;)Z

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->c:Landroid/support/v4/app/FragmentActivity;

    .line 66
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a(Landroid/view/Window;)V

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->a(Landroid/app/Activity;Z)V

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 75
    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$launchMusic$$inlined$apply$lambda$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$launchMusic$$inlined$apply$lambda$1;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/player/lockplayer/LockCloser;Landroid/view/View;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finish"

    .line 101
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloserKt;->a(Ljava/lang/String;)V

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->b()Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;

    move-result-object p1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$onKeyGuardDismissListener$2$1;->a(Z)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->c:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/app/Activity;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/support/app/KeyguardManagerCompat$OnKeyGuardDismissListener;)Z

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->c:Landroid/support/v4/app/FragmentActivity;

    .line 110
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->a(Landroid/view/Window;)V

    .line 111
    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$finish$$inlined$apply$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$finish$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockCloser;Landroid/view/View;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$finish$2$2;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser$finish$2$2;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
