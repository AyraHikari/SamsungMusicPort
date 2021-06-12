.class public Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 45
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    .line 46
    instance-of v0, p1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;->b:Landroid/util/SparseArray;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p1
.end method
