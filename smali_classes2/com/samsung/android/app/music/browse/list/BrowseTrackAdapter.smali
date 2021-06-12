.class public abstract Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;,
        Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;,
        Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected d:I

.field protected e:I

.field protected f:I

.field private final g:Lcom/samsung/android/app/music/list/LoadMoreManager;

.field private final j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->d:I

    .line 36
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->e:I

    .line 38
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->f:I

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/music/list/LoadMoreManager;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->fragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/music/list/LoadMoreManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->g:Lcom/samsung/android/app/music/list/LoadMoreManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->g:Lcom/samsung/android/app/music/list/LoadMoreManager;

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 48
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->b(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

    .line 49
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->c(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->b:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->d(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 84
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;

    .line 85
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->hasFooterView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

    iget-object v1, p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, p2, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;->a(ILandroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 93
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 95
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, -0x3eb

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->b(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;I)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->g:Lcom/samsung/android/app/music/list/LoadMoreManager;

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->g:Lcom/samsung/android/app/music/list/LoadMoreManager;

    invoke-interface {p1}, Lcom/samsung/android/app/music/list/LoadMoreManager;->k_()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;I)V

    return-void
.end method

.method protected b(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 113
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->e:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 114
    :goto_0
    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;->a:Landroid/view/View;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected c(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 119
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 120
    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;->thumbnailView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0b0244

    .line 121
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 120
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->e:I

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->f:I

    :cond_1
    return-void
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p1

    .line 67
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->f:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;I)V

    return-void
.end method

.method protected synthetic onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->c(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;

    move-result-object p1

    return-object p1
.end method
