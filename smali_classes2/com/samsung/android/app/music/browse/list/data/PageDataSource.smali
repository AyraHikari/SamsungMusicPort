.class public abstract Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/data/DataSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        "Response::",
        "Lcom/samsung/android/app/music/model/base/ServerResponse;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/list/data/DataSource<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "TItem;>;>;"
        }
    .end annotation
.end field

.field private f:Lcom/samsung/android/app/music/model/base/ServerResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponse;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a:I

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->b:Z

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->c:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->d:Ljava/util/List;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->e:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;Lcom/samsung/android/app/music/model/base/ServerResponse;)Lcom/samsung/android/app/music/model/base/ServerResponse;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->f:Lcom/samsung/android/app/music/model/base/ServerResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->b:Z

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)Landroid/util/SparseArray;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->e:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a:I

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)Ljava/util/List;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->h()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;I)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lio/reactivex/Observable<",
            "TResponse;>;"
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;IZ)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "TItem;>;>;"
        }
    .end annotation

    const-string v0, "PageDataSource"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load. req page - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current page - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deltaOnly - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", loading - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", total - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hasMore - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", clear - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a(Landroid/content/Context;I)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$4;-><init>(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V

    .line 86
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;-><init>(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;IZ)V

    .line 100
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$2;-><init>(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V

    .line 114
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$1;-><init>(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V

    .line 119
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponse;)",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->d:Ljava/util/List;

    return-object v0
.end method

.method public d()Lcom/samsung/android/app/music/model/base/ServerResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResponse;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->f:Lcom/samsung/android/app/music/model/base/ServerResponse;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->c:Z

    return v0
.end method

.method public f()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a:I

    return v0
.end method

.method public g()V
    .locals 2

    const-string v0, "PageDataSource"

    const-string v1, "clearItemsWhenSuccess"

    .line 74
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->b:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
