.class public final Lcom/samsung/android/app/music/player/volume/VolumeController;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/volume/VolumeControllable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/ViewTreeObserver;

.field private final e:Landroid/os/Handler;

.field private f:I

.field private g:I

.field private h:Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;

.field private i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;

.field private final m:Lcom/samsung/android/app/music/player/volume/VolumeController$onWindowFocusChangeListener$1;

.field private final n:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field private final o:Landroid/view/View;

.field private final p:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "normalVolumeControl"

    const-string v4, "getNormalVolumeControl()Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dmrVolumeControl"

    const-string v4, "getDmrVolumeControl()Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/volume/VolumeController;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/volume/VolumeController;->b:Lcom/samsung/android/app/music/player/volume/VolumeController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->n:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->o:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->n:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->c:Landroid/content/Context;

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->d:Landroid/view/ViewTreeObserver;

    .line 37
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->e:Landroid/os/Handler;

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->f:I

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->g:I

    .line 45
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/samsung/android/app/music/player/volume/VolumeController$normalVolumeControl$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/player/volume/VolumeController$normalVolumeControl$2;-><init>(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->j:Lkotlin/Lazy;

    .line 48
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/samsung/android/app/music/player/volume/VolumeController$dmrVolumeControl$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/player/volume/VolumeController$dmrVolumeControl$2;-><init>(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->k:Lkotlin/Lazy;

    .line 62
    new-instance p2, Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;-><init>(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->l:Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;

    .line 87
    new-instance p2, Lcom/samsung/android/app/music/player/volume/VolumeController$onWindowFocusChangeListener$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/volume/VolumeController$onWindowFocusChangeListener$1;-><init>(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->m:Lcom/samsung/android/app/music/player/volume/VolumeController$onWindowFocusChangeListener$1;

    .line 101
    iget-object p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-object p3, p0

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Z)V

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->l()V

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->d:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->m:Lcom/samsung/android/app/music/player/volume/VolumeController$onWindowFocusChangeListener$1;

    check-cast p2, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/volume/VolumeController;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->n:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/volume/VolumeController;)Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->l:Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/volume/VolumeController;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->n()V

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/volume/VolumeController;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->m()V

    return-void
.end method

.method private final d()Z
    .locals 2

    .line 39
    iget v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final e()Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/volume/VolumeController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    return-object v0
.end method

.method private final k()Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->k:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/volume/VolumeController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;

    return-object v0
.end method

.method private final l()V
    .locals 3

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->k()Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->e()Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Z)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->e()Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->p:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->e()Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Z)V

    :goto_0
    return-void
.end method

.method private final m()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->e:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/player/volume/VolumeController$setVolumePanelHideTimer$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/volume/VolumeController$setVolumePanelHideTimer$1;-><init>(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    check-cast v1, Ljava/lang/Runnable;

    const/16 v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final n()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;
    .locals 1

    .line 59
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    return-object v0
.end method

.method public a(Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->h:Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;

    return-void
.end method

.method public b()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->h:Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl;->b()Z

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl;->e()V

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method public f()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->b()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->b()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl;->a()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl;->c()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public j()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl;->e()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroyCalled()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->d:Landroid/view/ViewTreeObserver;

    const-string v1, "viewTreeObserver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->d:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->m:Lcom/samsung/android/app/music/player/volume/VolumeController$onWindowFocusChangeListener$1;

    check-cast v1, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->m:Lcom/samsung/android/app/music/player/volume/VolumeController$onWindowFocusChangeListener$1;

    check-cast v1, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->c()V

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isCastPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/player/volume/IVolumeControl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isCastPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/player/volume/IVolumeControl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->f:I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->f:I

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->l()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 166
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->g:I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 167
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->g:I

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->b()V

    :cond_2
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onStopCalled()V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->c()V

    return-void
.end method

.method public x_()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController;->i:Lcom/samsung/android/app/music/player/volume/IVolumeControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl;->x_()V

    :cond_0
    return-void
.end method
