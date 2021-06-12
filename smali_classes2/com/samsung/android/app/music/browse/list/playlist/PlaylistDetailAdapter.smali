.class public Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;,
        Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter<",
        "Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected final g:Ljava/lang/String;

.field private final j:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)V

    .line 48
    iget v0, p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->a:I

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->j:I

    .line 49
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->d:I

    return p0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p3, :cond_0

    .line 66
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->j:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 68
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;I)V
    .locals 2

    .line 73
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;I)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 75
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->getItemViewType(I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 77
    iget-object p2, p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->d:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 2

    .line 84
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->d:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 85
    iget-object v0, p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    invoke-static {p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->isRankVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setVisibility(I)V

    .line 86
    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setRankChange(I)V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->d:I

    :cond_0
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
