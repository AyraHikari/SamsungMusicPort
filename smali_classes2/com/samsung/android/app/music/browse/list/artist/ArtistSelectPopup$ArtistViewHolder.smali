.class Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistViewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 135
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f13015f

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;->a:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;
    .locals 2

    const v0, 0x7f040118

    const/4 v1, 0x0

    .line 140
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 141
    new-instance v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
