.class public final Lcom/samsung/android/app/music/menu/PlayerMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;,
        Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;,
        Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;,
        Lcom/samsung/android/app/music/menu/PlayerMenuGroup$FireBaseMenuLogger;,
        Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;,
        Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;,
        Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;,
        Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Companion;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/support/v4/app/FragmentManager;

.field private final e:Lcom/samsung/android/app/music/navigate/NavigationManager;

.field private final f:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;

.field private final i:Lkotlin/Lazy;

.field private j:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

.field private final k:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

.field private final l:I

.field private final m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "shareable"

    const-string v4, "getShareable()Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instance"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->k:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    iput p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->l:I

    iput-object p3, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->m:Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->k:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->c:Landroid/content/Context;

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->k:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d:Landroid/support/v4/app/FragmentManager;

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->k:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    instance-of p2, p1, Lcom/samsung/android/app/music/navigate/NavigationManager;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object p1, p3

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/navigate/NavigationManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->e:Lcom/samsung/android/app/music/navigate/NavigationManager;

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->m:Ljava/lang/Object;

    instance-of p2, p1, Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    if-nez p2, :cond_1

    move-object p1, p3

    :cond_1
    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->f:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g:Ljava/util/List;

    .line 83
    new-instance p1, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->k:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    const p3, 0x7f0d0028

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->m:Ljava/lang/Object;

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->h:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;

    .line 84
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$shareable$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$shareable$2;-><init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->i:Lkotlin/Lazy;

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$FireBaseMenuLogger;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->c:Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$FireBaseMenuLogger;-><init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerMenu;-><init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;-><init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$ConnectivityMenu;-><init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/app/music/menu/LaunchMenu;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->k:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast p3, Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->m:Ljava/lang/Object;

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/app/music/menu/LaunchMenu;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/app/music/menu/ShareMenu;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->k:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast p3, Landroid/app/Activity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a()Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/app/music/menu/ShareMenu;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->k:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast p3, Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->m:Ljava/lang/Object;

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/app/music/menu/PlayerMilkMenu;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private final a()Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->j:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    if-nez p0, :cond_0

    const-string v0, "stat"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/navigate/NavigationManager;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->e:Lcom/samsung/android/app/music/navigate/NavigationManager;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->k:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->h:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Landroid/support/v4/app/FragmentManager;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d:Landroid/support/v4/app/FragmentManager;

    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Ljava/lang/Object;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->m:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    iget-object v1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->c:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->f:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->j:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Stat;

    .line 112
    sget-object v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 736
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 113
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->l:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    sget-object v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->b:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 715
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 103
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 122
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return v1
.end method

.method public release()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->h:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->release()V

    return-void
.end method
