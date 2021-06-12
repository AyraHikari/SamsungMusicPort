.class public Lcom/samsung/android/app/music/widget/MusicSubTabLayout;
.super Landroid/support/design/widget/TabLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Z

.field private c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/widget/TextView;",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->d:Landroid/util/SparseArray;

    .line 58
    sget-object v0, Landroid/support/design/R$styleable;->TabLayout:[I

    const v1, 0x7f1102da

    .line 59
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f100614

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->seslSetSubTabIndicatorHeight(I)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->seslSetSubTabStyle()V

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->seslSetSubTabSelectedIndicatorColor(I)V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSavedState. pending state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;

    iget v1, v1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;->a:I

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getSelectedTabPosition()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchSavedState. tab count - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pos - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", selected tab pos - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getSelectedTabPosition()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/MusicSubTabLayout;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->c()V

    return-void
.end method

.method private b()V
    .locals 8

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 160
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    .line 165
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    .line 167
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 168
    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 169
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-static {v6, v5, v7, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string v0, "MusicSubTabLayout"

    const-string v1, "updateTts. view pager or  tabStrip is null"

    .line 161
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 11

    .line 179
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "MusicSubTabLayout"

    const-string v1, "applyTabScrollModeIfTabItemEllipsis. not measured yet"

    .line 185
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getTabMode()I

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "MusicSubTabLayout"

    const-string v1, "applyTabScrollModeIfTabItemEllipsis. already scrollable"

    .line 190
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->f()V

    return-void

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "MusicSubTabLayout"

    const-string v1, "applyTabScrollModeIfTabItemEllipsis. tab count is zero"

    .line 203
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    .line 209
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 210
    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->seslGetTextView()Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_1

    .line 214
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->d:Landroid/util/SparseArray;

    .line 215
    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->seslGetTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-nez v6, :cond_6

    .line 217
    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->seslGetTextView()Landroid/widget/TextView;

    move-result-object v6

    .line 218
    new-instance v7, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;

    invoke-direct {v7, p0, v5}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;-><init>(Lcom/samsung/android/app/music/widget/MusicSubTabLayout;Landroid/support/design/widget/TabLayout$Tab;)V

    .line 237
    iget-object v8, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->d:Landroid/util/SparseArray;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v9

    new-instance v10, Landroid/util/Pair;

    invoke-direct {v10, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v8, "MusicSubTabLayout"

    .line 239
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyTabScrollModeIfTabItemEllipsis. tabPos - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", observe tab size - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->d:Landroid/util/SparseArray;

    .line 241
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 239
    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v6}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 245
    :cond_6
    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->seslGetTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/widget/TextView;)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    const-string v3, "MusicSubTabLayout"

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyTabScrollModeIfTabItemEllipsis. width - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", left - "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getLeft()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", right - "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getRight()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", tabCount - "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ellipsisCount - "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_9

    .line 256
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->setTabMode(I)V

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->f()V

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->e()V

    .line 260
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->setClipToPadding(Z)V

    :cond_9
    return-void

    :cond_a
    :goto_2
    const-string v0, "MusicSubTabLayout"

    const-string v1, "applyTabScrollModeIfTabItemEllipsis. view pager is null"

    .line 196
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 271
    new-instance v0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$2;-><init>(Lcom/samsung/android/app/music/widget/MusicSubTabLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->e:Ljava/lang/Runnable;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private e()V
    .locals 4

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getPaddingStart()I

    move-result v1

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getPaddingEnd()I

    move-result v2

    .line 286
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    .line 287
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    add-int/2addr v1, v3

    .line 288
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    .line 289
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 290
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method private f()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 298
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->d:Landroid/util/SparseArray;

    .line 299
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 300
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "MusicSubTabLayout"

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearPreDrawCallbacks. clear size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSubTabLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 142
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p2, 0x3ebd70a4    # 0.37f

    .line 145
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;Z)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->seslSetTabTextColor(Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 117
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/TabLayout;->onLayout(ZIIII)V

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->d()V

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 91
    check-cast p1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;

    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/design/widget/TabLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState. ss - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->c:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 82
    invoke-super {p0}, Landroid/support/design/widget/TabLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getSelectedTabPosition()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$SavedState;->a:I

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState. ss - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Landroid/support/design/widget/TabLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 152
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 154
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSubTabSelectedIndicatorColor(I)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->seslSetSubTabSelectedIndicatorColor(I)V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V
    .locals 0
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 100
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a:Landroid/support/v4/view/ViewPager;

    const-string p1, "MusicSubTabLayout"

    const-string p2, "setupWithViewPager"

    .line 102
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->b()V

    return-void
.end method
