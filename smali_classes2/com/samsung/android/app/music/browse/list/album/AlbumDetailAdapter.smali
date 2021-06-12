.class public Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;,
        Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter<",
        "Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private final j:Z

.field private k:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)V

    .line 52
    iget v0, p1, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->a:I

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->g:I

    .line 53
    iget-boolean p1, p1, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->b:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->j:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;)V

    return-void
.end method

.method static synthetic a(I)Z
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->b(I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->k:Z

    return p0
.end method

.method private static b(I)Z
    .locals 1

    const/16 v0, -0x3e8

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Landroid/database/Cursor;)Z
    .locals 3
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 105
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string v2, "_id"

    .line 107
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ltz v2, :cond_2

    const-string v2, "artist"

    .line 109
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 108
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 111
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 117
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;
    .locals 3
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

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {p2}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->b(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 69
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0400fb

    .line 70
    invoke-virtual {p3, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    :cond_0
    if-nez p3, :cond_1

    .line 74
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->g:I

    invoke-virtual {p3, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 76
    :cond_1
    new-instance p1, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    check-cast p1, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;I)V
    .locals 5
    .param p1    # Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$BrowseTrackViewHolder;I)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 83
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->getItemViewType(I)I

    move-result p2

    .line 84
    invoke-static {p2}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->b(I)Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 85
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 86
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0b0100

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "disc_no"

    .line 87
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 86
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0b03f4

    .line 90
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    const-string p2, "is_title"

    .line 94
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 93
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 95
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 96
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p1

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    check-cast p1, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    check-cast p1, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    check-cast p1, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;I)V

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

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->b(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;->k:Z

    .line 60
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
