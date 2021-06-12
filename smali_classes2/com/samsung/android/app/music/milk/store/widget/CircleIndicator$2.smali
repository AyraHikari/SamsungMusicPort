.class Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 222
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->d(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;I)I

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;I)I

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->g(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    return-void
.end method
