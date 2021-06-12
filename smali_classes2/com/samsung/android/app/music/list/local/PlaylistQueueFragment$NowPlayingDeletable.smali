.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingDeletable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingDeletable"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingDeletable;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$1;)V
    .locals 0

    .line 653
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingDeletable;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V

    return-void
.end method


# virtual methods
.method public deleteItems()V
    .locals 8

    .line 656
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingDeletable;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 658
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 660
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingDeletable;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    .line 662
    invoke-virtual {v1, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 663
    invoke-virtual {v1, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 664
    invoke-virtual {v0, v7, v2, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(IZZ)V

    .line 665
    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    .line 671
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->deleteRadioQueue([I)V

    .line 674
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingDeletable;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Z)Z

    .line 676
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v0, :cond_4

    .line 678
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->c()V

    :cond_4
    return-void
.end method
