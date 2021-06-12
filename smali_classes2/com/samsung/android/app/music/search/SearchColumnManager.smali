.class public Lcom/samsung/android/app/music/search/SearchColumnManager;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method public varargs constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;[Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->a:Ljava/util/List;

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    .line 34
    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->h(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->c:Z

    .line 35
    array-length v0, p2

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p2, v2

    .line 36
    iget-object v3, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->convert(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchColumnManager;->c()V

    return-void
.end method

.method private static a(II)I
    .locals 1

    .line 104
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/search/SearchColumnManager;->b(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    mul-int p0, p0, p1

    .line 110
    div-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private static b(II)I
    .locals 1

    :goto_0
    move v0, p1

    move p1, p0

    move p0, v0

    if-eqz p0, :cond_0

    .line 115
    rem-int/2addr p1, p0

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private c()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "None of grid type is given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    .line 58
    iget-boolean v4, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    iget-boolean v5, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->c:Z

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getColumnCount(ZZ)I

    move-result v3

    if-ne v2, v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/search/SearchColumnManager;->a(II)I

    move-result v2

    goto :goto_0

    :cond_1
    return v2
.end method

.method public a(Ljava/lang/String;)I
    .locals 3

    .line 70
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->convert(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    move-result-object p1

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchColumnManager;->a()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    iget-boolean v2, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->c:Z

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getColumnCount(ZZ)I

    move-result p1

    div-int/2addr v0, p1

    return v0
.end method

.method public b()I
    .locals 6

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    .line 90
    iget-boolean v3, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getColumnCount(ZZ)I

    move-result v3

    iget-boolean v4, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    const/4 v5, 0x0

    .line 91
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getColumnCount(ZZ)I

    move-result v2

    .line 90
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 92
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    .line 75
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->convert(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    move-result-object p1

    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    iget-boolean v1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->c:Z

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getColumnCount(ZZ)I

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)I
    .locals 4

    .line 81
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->convert(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    move-result-object p1

    .line 82
    iget-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getPortraitCount(Z)I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    iget-boolean v2, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->c:Z

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getMaxRowCount(ZZ)I

    move-result v1

    mul-int v0, v0, v1

    .line 83
    iget-boolean v1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getLandScapeCount(Z)I

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    iget-boolean v3, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->c:Z

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getMaxRowCount(ZZ)I

    move-result p1

    mul-int v1, v1, p1

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)I
    .locals 3

    .line 98
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->convert(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;

    move-result-object p1

    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    iget-boolean v1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->c:Z

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getColumnCount(ZZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    iget-boolean v2, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->c:Z

    .line 100
    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/music/search/SearchColumnManager$ContentType;->getMaxRowCount(ZZ)I

    move-result p1

    mul-int v0, v0, p1

    return v0
.end method

.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->b:Z

    .line 52
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->h(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/search/SearchColumnManager;->c:Z

    return-void
.end method
