.class Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

.field private b:F

.field private c:F


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 199
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->b:F

    .line 200
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->c:F

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->c(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)I

    move-result v0

    .line 255
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a(I)I

    move-result v2

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 256
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    .line 257
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setCurrentItem(IZ)V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 266
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 8

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a(I)I

    move-result v0

    cmpl-float v3, p2, v1

    if-nez v3, :cond_1

    .line 225
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->b:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    .line 226
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setCurrentItem(IZ)V

    :cond_1
    move p1, v0

    .line 231
    :cond_2
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->b:F

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 234
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 235
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 237
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq p1, v4, :cond_3

    .line 238
    invoke-interface {v3, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_1

    :cond_3
    float-to-double v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    .line 242
    invoke-interface {v3, v2, v1, v2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_1

    .line 244
    :cond_4
    invoke-interface {v3, p1, v1, v2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a(I)I

    move-result p1

    .line 205
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->c:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 206
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->c:F

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 212
    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
