.class Lcom/samsung/android/app/music/list/local/QueueFragment$ReorderableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReorderableImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/QueueFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$ReorderableImpl;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;Lcom/samsung/android/app/music/list/local/QueueFragment$1;)V
    .locals 0

    .line 855
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$ReorderableImpl;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->reorder(II)V

    .line 861
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$ReorderableImpl;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d()V

    :cond_0
    return-void
.end method
