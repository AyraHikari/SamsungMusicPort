.class public Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/view/PagerAdapter;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->b:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->c:Z

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->d:Z

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    return-void
.end method

.method private c()I
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->d:Z

    return v0
.end method

.method private d()I
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method a(I)I
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 43
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->d:Z

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 44
    rem-int/2addr p1, v0

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    :cond_1
    return p1
.end method

.method a(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->c:Z

    return-void
.end method

.method public b(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 53
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->d:Z

    if-eqz v1, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method public b()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method b(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->d:Z

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->c()I

    move-result v0

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->d()I

    move-result v1

    .line 95
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    instance-of v2, v2, Landroid/support/v4/app/FragmentPagerAdapter;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    instance-of v2, v2, Landroid/support/v4/app/FragmentStatePagerAdapter;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a(I)I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    move v2, p2

    .line 99
    :goto_1
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->c:Z

    if-eqz v3, :cond_3

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_3

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;

    invoke-direct {v1, p1, v2, p3}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;-><init>(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 102
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p2, p1, v2, p3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a()I

    move-result v0

    .line 66
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->d:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    instance-of v0, v0, Landroid/support/v4/app/FragmentPagerAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    instance-of v0, v0, Landroid/support/v4/app/FragmentStatePagerAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a(I)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p2

    .line 82
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->c:Z

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;

    if-eqz v1, :cond_2

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 86
    iget-object p1, v1, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;->c:Ljava/lang/Object;

    return-object p1

    .line 89
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->b:Landroid/util/SparseArray;

    .line 36
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method
