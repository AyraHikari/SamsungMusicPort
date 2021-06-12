.class Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowseYearItemViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 2

    .line 116
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;-><init>(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 118
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;
    .locals 0

    .line 113
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;->b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;
    .locals 4

    .line 128
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;

    .line 129
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001c

    const/4 v3, 0x0

    .line 130
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder$BrowseYearItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method
