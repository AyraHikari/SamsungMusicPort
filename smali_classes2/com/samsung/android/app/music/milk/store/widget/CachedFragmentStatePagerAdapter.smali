.class public abstract Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentStatePagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 17
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentStatePagerAdapter;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method protected abstract a(I)Landroid/support/v4/app/Fragment;
.end method

.method public b(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentStatePagerAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentStatePagerAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentStatePagerAdapter;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentStatePagerAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 27
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    .line 28
    instance-of v0, p1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentStatePagerAdapter;->a:Landroid/util/SparseArray;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 3

    const-string v0, "CachedFragmentStatePagerAdapter"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreState. state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentStatePagerAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 60
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/support/v4/app/FragmentStatePagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
