.class final Lcom/samsung/android/app/music/list/local/LocalQueueFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-void
.end method


# virtual methods
.method a(Landroid/view/ContextMenu;Landroid/view/View;)Landroid/view/ContextMenu;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 55
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getText1(I)Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    return-object p1
.end method

.method a()Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
    .locals 2

    .line 38
    new-instance v0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/LocalQueueFunction$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/LocalQueueFunction;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    return-object v0
.end method

.method b()Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;
    .locals 2

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/list/ListShareableImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method c()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
    .locals 2

    .line 46
    new-instance v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "audio_id"

    .line 47
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const-string v1, "title"

    .line 48
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->d()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/samsung/android/app/musiclibrary/ui/list/Playable;
    .locals 2

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method final e()[I
    .locals 1

    const/4 v0, 0x4

    .line 64
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x4
        0x0
        0x2
        0x5
    .end array-data
.end method
