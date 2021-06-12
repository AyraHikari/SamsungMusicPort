.class final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionBarVisibleController"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private b:Z

.field private final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;

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

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 750
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;->b:Z

    .line 755
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController$actionBar$2;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController$actionBar$2;-><init>(Landroid/view/View;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;->c:Lkotlin/Lazy;

    return-void
.end method

.method private final a()Landroid/support/v7/widget/Toolbar;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method


# virtual methods
.method public getState()Z
    .locals 1

    .line 750
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;->b:Z

    return v0
.end method

.method public setState(Z)V
    .locals 2

    .line 752
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;->b:Z

    .line 753
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const-string v1, "actionBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void
.end method
