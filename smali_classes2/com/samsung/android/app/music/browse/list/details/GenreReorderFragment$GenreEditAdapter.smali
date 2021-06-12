.class public Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter;
.super Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenreEditAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;,
        Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$ViewHolder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$1;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 216
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method protected b(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 211
    new-instance p1, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 202
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 202
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V

    return-void
.end method
