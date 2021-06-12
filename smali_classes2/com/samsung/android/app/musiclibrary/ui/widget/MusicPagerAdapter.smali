.class public abstract Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "MusicPagerAdapter"


# instance fields
.field private final b:Landroid/support/v4/app/FragmentManager;

.field private c:Landroid/support/v4/app/FragmentTransaction;

.field private d:Landroid/support/v4/app/Fragment;

.field private e:I

.field private f:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->c:Landroid/support/v4/app/FragmentTransaction;

    .line 41
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->d:Landroid/support/v4/app/Fragment;

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->e:I

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->b:Landroid/support/v4/app/FragmentManager;

    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>(TT;)TT;"
        }
    .end annotation

    .line 226
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 229
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->e:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a(IJ)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private a()V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->f:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 210
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 211
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 214
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 216
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 218
    :cond_2
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeUnwantedFragments().remove fg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ft: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->f:Ljava/util/List;

    .line 222
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract b(I)Landroid/support/v4/app/Fragment;
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->c:Landroid/support/v4/app/FragmentTransaction;

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->c:Landroid/support/v4/app/FragmentTransaction;

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->c:Landroid/support/v4/app/FragmentTransaction;

    check-cast p3, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, p3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->c:Landroid/support/v4/app/FragmentTransaction;

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->c:Landroid/support/v4/app/FragmentTransaction;

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a()V

    return-void
.end method

.method public h()V
    .locals 9

    .line 187
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->e:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->view_pager:I

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->getCount()I

    move-result v1

    .line 189
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 191
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a(I)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a(IJ)Ljava/lang/String;

    move-result-object v4

    .line 192
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 194
    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 195
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove fg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ft: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " | tag: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->c:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->c:Landroid/support/v4/app/FragmentTransaction;

    .line 71
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a(I)J

    move-result-wide v0

    .line 74
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->e:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->e:I

    .line 77
    :cond_1
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->e:I

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a(IJ)Ljava/lang/String;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 89
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->c:Landroid/support/v4/app/FragmentTransaction;

    .line 90
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 92
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->d:Landroid/support/v4/app/Fragment;

    if-eq v2, p1, :cond_3

    const/4 p1, 0x0

    .line 93
    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 94
    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_3
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 140
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 3

    .line 155
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreState() | state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 157
    check-cast p1, Landroid/os/Bundle;

    const-string p2, "key_tags"

    .line 158
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->f:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 3

    .line 145
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a:Ljava/lang/String;

    const-string v1, "saveState()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "key_tags"

    .line 149
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->d:Landroid/support/v4/app/Fragment;

    if-eq p3, p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->d:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->d:Landroid/support/v4/app/Fragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 118
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 121
    invoke-virtual {p3, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 122
    invoke-virtual {p3, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 124
    :cond_1
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->d:Landroid/support/v4/app/Fragment;

    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
