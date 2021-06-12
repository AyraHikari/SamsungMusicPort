.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingCheckableList"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingCheckableList;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    .line 627
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/SparseBooleanArray;I)[J
    .locals 5
    .param p1    # Landroid/util/SparseBooleanArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 633
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 634
    new-array p2, p2, [J

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 637
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingCheckableList;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->e(I)J

    move-result-wide v3

    aput-wide v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method
