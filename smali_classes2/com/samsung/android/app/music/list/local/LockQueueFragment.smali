.class public final Lcom/samsung/android/app/music/list/local/LockQueueFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;,
        Lcom/samsung/android/app/music/list/local/LockQueueFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<",
        "Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;",
        ">;",
        "Landroid/view/View$OnCreateContextMenuListener;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/LockQueueFragment$Companion;


# instance fields
.field private c:Z

.field private d:Z

.field private e:Lcom/samsung/android/app/music/network/NetworkManager;

.field private f:Z

.field private i:Z

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private final m:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "queueAdapter"

    const-string v4, "getQueueAdapter()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dlnaDmsQueueAdapter"

    const-string v4, "getDlnaDmsQueueAdapter()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->b:Lcom/samsung/android/app/music/list/local/LockQueueFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->d:Z

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->i:Z

    .line 48
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/LockQueueFragment$queueAdapter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$queueAdapter$2;-><init>(Lcom/samsung/android/app/music/list/local/LockQueueFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->j:Lkotlin/Lazy;

    .line 64
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/LockQueueFragment$dlnaDmsQueueAdapter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$dlnaDmsQueueAdapter$2;-><init>(Lcom/samsung/android/app/music/list/local/LockQueueFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->k:Lkotlin/Lazy;

    .line 74
    new-instance v0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/LockQueueFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 87
    new-instance v0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$onNetworkStateChangedListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$onNetworkStateChangedListener$1;-><init>(Lcom/samsung/android/app/music/list/local/LockQueueFragment;)V

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->m:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/LockQueueFragment;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->i:Z

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/LockQueueFragment;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->f()Z

    move-result p0

    return p0
.end method

.method private final e(I)V
    .locals 2

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->d:Z

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final f()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final i()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    return-object v0
.end method

.method private final j()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->k:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    return-object v0
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->c()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    .line 160
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->d()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x20004

    if-ne v0, v1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->j()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->i()Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x100012

    return v0
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 1

    const-string v0, "523"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 96
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->lifeCycleLogEnabled:Z

    const-string v1, "LockQueueFragment"

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->c:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object p2, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->b:Lcom/samsung/android/app/music/list/local/LockQueueFragment$Companion;

    .line 273
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "SMUSIC-LockQueueFragment"

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const p2, 0x7f040105

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026_playing_kt, null, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 10

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "SMUSIC-LockQueueFragment"

    const-string v0, "onMetadataChanged cursor is empty. "

    .line 174
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueuePosition()J

    move-result-wide v1

    long-to-int v1, v1

    if-eqz v0, :cond_1

    .line 178
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v1

    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v2

    long-to-int v5, v2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v6

    int-to-long v8, v1

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->a(IJJ)V

    if-eqz v0, :cond_2

    goto :goto_0

    .line 178
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.core.service.queue.INowPlayingCursor"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "SMUSIC-LockQueueFragment"

    const-string v0, "onMetadataChanged cursor is null. "

    .line 180
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 8
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

    .line 184
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;-><init>(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    .line 186
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->f()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->a(Z)V

    if-eqz p2, :cond_0

    const-string v1, "extra.list_position"

    .line 188
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 189
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getCount()I

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "SMUSIC-LockQueueFragment"

    const-string p2, "onQueueChanged cursor is empty. "

    .line 190
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 193
    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getOrderedPosition(I)I

    move-result p2

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->d()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v3, v0

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->d()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v4

    int-to-long v6, p2

    move-object v2, p0

    .line 194
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->a(IJJ)V

    .line 199
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->d:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->e(I)V

    :cond_2
    const/4 p1, 0x1

    .line 200
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->c(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onResume()V

    .line 133
    sget-object v0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->b:Lcom/samsung/android/app/music/list/local/LockQueueFragment$Companion;

    .line 303
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LockQueueFragment"

    const-string v1, "onResume()"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->c:Z

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStart()V

    .line 127
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->d:Z

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->m:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStop()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->m:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    sget-object p1, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->b:Lcom/samsung/android/app/music/list/local/LockQueueFragment$Companion;

    .line 288
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-LockQueueFragment"

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewCreated() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p2, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->l:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    const p1, 0x7f040055

    const p2, 0x7f0b02c4

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->b(II)V

    .line 117
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const v2, 0x7f0b02c4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->f(Z)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->c(Z)V

    .line 120
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->f:Z

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->f()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->a(Z)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 156
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
