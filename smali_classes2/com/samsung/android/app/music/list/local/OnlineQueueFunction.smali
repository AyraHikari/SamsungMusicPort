.class public final Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;,
        Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method a(Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0

    return-object p1
.end method

.method a()Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
    .locals 2

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$ActionModeOptionsMenu;-><init>(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method a(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f1304d5

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->a:Landroid/content/Context;

    const v2, 0x7f0b02ed

    .line 103
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f1304c9

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->a:Landroid/content/Context;

    const v1, 0x7f0b007e

    .line 108
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method b()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
    .locals 2

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "audio_id"

    .line 59
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const-string v1, "title"

    .line 60
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const-string v1, "cp_attrs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    const-string v1, "explicit"

    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    move-result-object v0

    const-string v1, "is_celeb"

    .line 63
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$1;-><init>(Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->setListItemMenuable(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->d()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/samsung/android/app/music/download/Downloadable;
    .locals 2

    .line 92
    new-instance v0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method final d()[I
    .locals 1

    const/4 v0, 0x5

    .line 113
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
        0x6
    .end array-data
.end method
