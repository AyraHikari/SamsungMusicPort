.class public final Lcom/samsung/android/app/music/ActivePlayerController;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/ActivePlayerController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "musicPlayerController"

    const-string v4, "getMusicPlayerController()Lcom/samsung/android/app/music/ServicePlayerController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/ActivePlayerController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "radioPlayerController"

    const-string v4, "getRadioPlayerController()Lcom/samsung/android/app/music/RadioPlayerController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/ActivePlayerController;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    .line 13
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/music/ActivePlayerController$musicPlayerController$2;->INSTANCE:Lcom/samsung/android/app/music/ActivePlayerController$musicPlayerController$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->b:Lkotlin/Lazy;

    .line 14
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/music/ActivePlayerController$radioPlayerController$2;->INSTANCE:Lcom/samsung/android/app/music/ActivePlayerController$radioPlayerController$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->c:Lkotlin/Lazy;

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivePlayerController;->h()Lcom/samsung/android/app/music/ServicePlayerController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iput-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-void
.end method

.method private final h()Lcom/samsung/android/app/music/ServicePlayerController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->b:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/ActivePlayerController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/ServicePlayerController;

    return-object v0
.end method

.method private final i()Lcom/samsung/android/app/music/RadioPlayerController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/ActivePlayerController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/RadioPlayerController;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(IIZ)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(IIZ)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(J)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->b()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->d()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->e()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->f()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/ActivePlayerController;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->g()V

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_2

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6a840888

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 21
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :cond_2
    if-nez p1, :cond_3

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivePlayerController;->h()Lcom/samsung/android/app/music/ServicePlayerController;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/ActivePlayerController;->i()Lcom/samsung/android/app/music/RadioPlayerController;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/app/music/ActivePlayerController;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    :cond_4
    :goto_2
    return-void
.end method
