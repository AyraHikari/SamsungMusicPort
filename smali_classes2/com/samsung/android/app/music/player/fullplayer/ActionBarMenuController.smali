.class public final Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$InvalidateHandler;,
        Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$Companion;


# instance fields
.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private h:Z

.field private i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final j:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

.field private final k:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "actionBar"

    const-string v4, "getActionBar()Landroid/support/v7/widget/Toolbar;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerMenu"

    const-string v4, "getPlayerMenu()Lcom/samsung/android/app/music/menu/PlayerMenuGroup;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "invalidateHandler"

    const-string v4, "getInvalidateHandler()Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$InvalidateHandler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->b:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullPlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->j:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->k:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    .line 36
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$actionBar$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$actionBar$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->e:Lkotlin/Lazy;

    .line 39
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$playerMenu$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$playerMenu$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->f:Lkotlin/Lazy;

    .line 42
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$invalidateHandler$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$invalidateHandler$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->g:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->h:Z

    .line 55
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->EmptyMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    const-string p2, "MediaChangeObservable.EmptyMediaChangeObservable"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->e()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)Landroid/support/v7/widget/Toolbar;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->b()Landroid/support/v7/widget/Toolbar;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->c:Ljava/lang/Integer;

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->d:Ljava/lang/Integer;

    return-void
.end method

.method private final b()Landroid/support/v7/widget/Toolbar;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)Lcom/samsung/android/app/music/menu/PlayerMenuGroup;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->c()Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->j:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    return-object p0
.end method

.method private final c()Lcom/samsung/android/app/music/menu/PlayerMenuGroup;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    return-object v0
.end method

.method private final d()Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$InvalidateHandler;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$InvalidateHandler;

    return-object v0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->k:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    return-object p0
.end method

.method private final e()V
    .locals 5

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->b()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->c()Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const-string v3, "menu"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroid/view/MenuInflater;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->c()Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const-string v3, "menu"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Landroid/view/Menu;)V

    .line 71
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$initializeMenu$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$initializeMenu$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V

    check-cast v1, Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    const v1, 0x7f020137

    .line 72
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 73
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$initializeMenu$$inlined$apply$lambda$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$initializeMenu$$inlined$apply$lambda$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b03fc

    .line 76
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 77
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->b:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$Companion;

    .line 157
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-ActionBarMenuController"

    const-string v1, "Initialize player menu"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->d()Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$InvalidateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController$InvalidateHandler;->a()V

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->c()Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;)V

    return-void
.end method

.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public getState()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->h:Z

    return v0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    const-string v0, "mediaChangeObservable.playbackState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->d:Ljava/lang/Integer;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 92
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a()V

    :cond_3
    return-void
.end method

.method public release()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->c()Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->release()V

    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method

.method public setState(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->h:Z

    if-eqz p1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->e()V

    :cond_0
    return-void
.end method
