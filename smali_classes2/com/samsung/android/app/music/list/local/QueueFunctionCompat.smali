.class final Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

.field private c:Lcom/samsung/android/app/music/list/local/LocalQueueFunction;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/content/Context;)V
    .locals 1
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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 39
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    goto :goto_0

    .line 42
    :cond_0
    new-instance p2, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->c:Lcom/samsung/android/app/music/list/local/LocalQueueFunction;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method


# virtual methods
.method a(Landroid/view/ContextMenu;Landroid/view/View;)Landroid/view/ContextMenu;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    if-eqz v0, :cond_0

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->a(Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    move-result-object p1

    return-object p1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->c:Lcom/samsung/android/app/music/list/local/LocalQueueFunction;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->a(Landroid/view/ContextMenu;Landroid/view/View;)Landroid/view/ContextMenu;

    move-result-object p1

    return-object p1
.end method

.method a()Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->a()Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->c:Lcom/samsung/android/app/music/list/local/LocalQueueFunction;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->a()Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method b()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->b()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->c:Lcom/samsung/android/app/music/list/local/LocalQueueFunction;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->c()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;
    .locals 5

    .line 68
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    new-instance v1, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat$1;-><init>(Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;)V

    const v2, 0x7f1304c9

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;-><init>(ILandroid/view/View$OnClickListener;)V

    .line 85
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v0, 0x7f0401da

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;-><init>(Landroid/support/v4/app/Fragment;I[Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;)V

    return-object v1
.end method

.method d()Lcom/samsung/android/app/musiclibrary/ui/list/Playable;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->c:Lcom/samsung/android/app/music/list/local/LocalQueueFunction;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->d()Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    move-result-object v0

    return-object v0
.end method

.method e()Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->c:Lcom/samsung/android/app/music/list/local/LocalQueueFunction;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->b()Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/samsung/android/app/music/download/Downloadable;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->c()Lcom/samsung/android/app/music/download/Downloadable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method g()[I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->d()[I

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->c:Lcom/samsung/android/app/music/list/local/LocalQueueFunction;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LocalQueueFunction;->e()[I

    move-result-object v0

    return-object v0
.end method
