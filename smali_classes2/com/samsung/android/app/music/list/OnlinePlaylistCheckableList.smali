.class public Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/SparseBooleanArray;I)[J
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;->b(Landroid/util/SparseBooleanArray;I)[J

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/util/SparseBooleanArray;I)[J
    .locals 7

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .line 31
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_1

    .line 34
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 37
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Ljava/util/ArrayList;)[J

    move-result-object p1

    return-object p1

    .line 43
    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;->a(I)[J

    move-result-object p1

    return-object p1
.end method
