.class Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<",
        "Lcom/samsung/android/app/music/model/artist/Artist;",
        "Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;
    .locals 0

    .line 110
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 102
    check-cast p1, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;I)V
    .locals 0

    .line 115
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/model/artist/Artist;

    .line 116
    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;

    move-result-object p1

    return-object p1
.end method
