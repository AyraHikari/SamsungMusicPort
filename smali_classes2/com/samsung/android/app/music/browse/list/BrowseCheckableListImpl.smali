.class public Lcom/samsung/android/app/music/browse/list/BrowseCheckableListImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;


# instance fields
.field protected final a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-void
.end method

.method private a(ILandroid/util/SparseBooleanArray;I)[J
    .locals 1

    if-eqz p2, :cond_1

    .line 28
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    .line 36
    new-array p1, p1, [J

    return-object p1

    .line 34
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseCheckableListImpl;->a(Landroid/util/SparseBooleanArray;I)[J

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/util/SparseBooleanArray;I)[J
    .locals 6

    .line 41
    new-array p2, p2, [J

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 46
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    aput-wide v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v0

    return v0
.end method

.method public a(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V
    .locals 1

    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseCheckableListImpl;->a(I)[J

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;->a(I[J)V

    return-void
.end method

.method public a(I)[J
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 23
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v1

    .line 22
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCheckableListImpl;->a(ILandroid/util/SparseBooleanArray;I)[J

    move-result-object p1

    return-object p1
.end method

.method public w_()I
    .locals 8

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 70
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method
