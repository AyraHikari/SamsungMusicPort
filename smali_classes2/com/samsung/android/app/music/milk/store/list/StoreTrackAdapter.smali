.class public abstract Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;,
        Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected d:I

.field protected e:I

.field protected f:I

.field private final g:Lcom/samsung/android/app/music/list/LoadMoreManager;

.field private final j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->d:I

    .line 36
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->e:I

    .line 38
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->f:I

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/music/list/LoadMoreManager;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->fragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/music/list/LoadMoreManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->g:Lcom/samsung/android/app/music/list/LoadMoreManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->g:Lcom/samsung/android/app/music/list/LoadMoreManager;

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 48
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->b(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->a:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->c(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->b:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;->d(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 89
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 90
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->getItemViewType(I)I

    move-result p2

    const/16 v1, -0x3eb

    if-eq p2, v1, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p2, p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;->a:Landroid/view/View;

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->e:I

    if-eq p2, v1, :cond_1

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;Landroid/database/Cursor;)V

    .line 97
    :cond_1
    iget-object p2, p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->d:I

    if-eq p2, v1, :cond_3

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->b(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->g:Lcom/samsung/android/app/music/list/LoadMoreManager;

    if-eqz p1, :cond_3

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->g:Lcom/samsung/android/app/music/list/LoadMoreManager;

    invoke-interface {p1}, Lcom/samsung/android/app/music/list/LoadMoreManager;->k_()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 110
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->e:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 111
    :goto_0
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;->a:Landroid/view/View;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V

    return-void
.end method

.method protected b(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 122
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 123
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;->thumbnailView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0b0244

    .line 124
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected b(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 115
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->d:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 116
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    invoke-static {p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->isRankVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setVisibility(I)V

    .line 117
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;->b:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setRankChange(I)V

    return-void
.end method

.method public g(I)Z
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 79
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 80
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->e:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->d:I

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->e:I

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->f:I

    :cond_2
    return-void
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p1

    .line 70
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->f:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 71
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->f:I

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
    check-cast p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V

    return-void
.end method

.method protected synthetic onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->b(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V

    return-void
.end method
