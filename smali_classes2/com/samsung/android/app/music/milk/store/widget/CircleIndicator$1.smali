.class Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

    .line 174
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

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

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->d(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->d(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 198
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->e(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 199
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->b(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 205
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->f(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 206
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->c(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->a:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->a(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;I)I

    return-void

    :cond_5
    :goto_0
    return-void
.end method
