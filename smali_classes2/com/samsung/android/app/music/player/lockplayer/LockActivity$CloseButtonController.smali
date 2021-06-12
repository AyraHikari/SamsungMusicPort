.class final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CloseButtonController"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private b:Z

.field private final c:Lkotlin/Lazy;

.field private final d:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "closeButton"

    const-string v4, "getCloseButton()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;)V
    .locals 1

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewTypeController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;->d:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    .line 501
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;Landroid/view/View;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;->c:Lkotlin/Lazy;

    return-void
.end method

.method private final a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;)Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;->d:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    return-object p0
.end method


# virtual methods
.method public getState()Z
    .locals 1

    .line 496
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;->b:Z

    return v0
.end method

.method public setState(Z)V
    .locals 2

    .line 498
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;->b:Z

    .line 499
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;->a()Landroid/view/View;

    move-result-object v0

    const-string v1, "closeButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
