.class public final Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;,
        Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private d:Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

.field private e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onTrackDetailUpdateListener"

    const-string v4, "getOnTrackDetailUpdateListener()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->b:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->g:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    .line 24
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 25
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$onTrackDetailUpdateListener$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$onTrackDetailUpdateListener$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 23
    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->c:Lkotlin/Lazy;

    .line 33
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 20
    check-cast p2, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;)Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->g:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    return-object p0
.end method

.method private final a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;
    .locals 1

    if-nez p1, :cond_0

    .line 92
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p1

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;->getTrackInfo()Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;-><init>(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private final a(Ljava/lang/String;)Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;
    .locals 3

    .line 99
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 100
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p1

    goto :goto_2

    .line 102
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    new-instance v2, Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-direct {v2}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;-><init>()V

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;-><init>(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V

    .line 103
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a(Z)V

    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;)V
    .locals 3

    const-string v0, "PlayerMilkTrackDetail"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestTrackDetailInternal() sourceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->c(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 123
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 124
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$requestTrackDetailInternal$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;)V

    check-cast p2, Lio/reactivex/Observer;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->d:Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p0

    return-object p0
.end method

.method private final b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key_player_track_is_ad"

    const/4 v1, 0x1

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_player_track_id"

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "key_player_track_is_ad"

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_player_track_detail"

    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->d:Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    const-string p1, "PlayerMilkTrackDetail"

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState() isAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;)V
    .locals 1

    const-string v0, "sourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;->a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;)V

    goto :goto_1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;->a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;)V

    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->f:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;)V

    :goto_1
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_3

    const-string v0, "key_player_track_is_ad"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "key_player_track_is_ad"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 77
    check-cast v1, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->d:Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    const-string v0, "key_player_track_id"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    goto :goto_0

    :cond_1
    const-string v0, "key_player_track_detail"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 81
    instance-of v0, p1, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    if-nez v0, :cond_2

    move-object p1, v1

    :cond_2
    check-cast p1, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->d:Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->d:Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    :goto_0
    const-string p1, "PlayerMilkTrackDetail"

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState() isAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    if-eqz p1, :cond_8

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x80002

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_3

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 45
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 46
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->g:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a()V

    goto :goto_2

    .line 49
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_5

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->f:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->b()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;)V

    goto :goto_2

    :cond_5
    const-string p1, "PlayerMilkTrackDetail"

    const-string v0, "onMetadataChanged() trackId is the same"

    .line 52
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    const/4 p1, 0x0

    .line 38
    check-cast p1, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->d:Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    .line 39
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    return-void

    :cond_8
    return-void
.end method
