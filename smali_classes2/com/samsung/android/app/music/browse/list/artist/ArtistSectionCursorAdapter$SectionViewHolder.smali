.class Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$SectionViewHolder;
.super Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SectionViewHolder"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;Landroid/view/View;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;Landroid/view/View;I)V

    .line 63
    invoke-static {p3}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f130300

    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$SectionViewHolder;->a:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$SectionViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$SectionViewHolder;->a:Landroid/widget/TextView;

    return-object p0
.end method
