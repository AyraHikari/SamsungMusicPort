.class Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$BrowseSpotLightPagerAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->b(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)Lcom/samsung/android/app/music/browse/data/BrowseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    return-void
.end method
