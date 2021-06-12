.class public Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;
.super Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;,
        Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$SectionViewHolder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;)V

    .line 25
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(I)Z
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->b(I)Z

    move-result p0

    return p0
.end method

.method private static b(I)Z
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    invoke-static {p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0400d2

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    new-instance p3, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$SectionViewHolder;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$SectionViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;Landroid/view/View;I)V

    return-object p3

    .line 38
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V
    .locals 2

    .line 43
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 45
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->getItemViewType(I)I

    move-result p2

    .line 46
    invoke-static {p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->b(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 47
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 48
    check-cast p1, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$SectionViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$SectionViewHolder;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$SectionViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$SectionViewHolder;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$SectionViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
