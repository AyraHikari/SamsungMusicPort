.class public final Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->b(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->b(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 141
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->b(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 124
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 126
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 128
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    const-string p2, "fragmentMediaChangeCenter!!.subObservable"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;->a:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    :cond_3
    :goto_0
    return-void
.end method
