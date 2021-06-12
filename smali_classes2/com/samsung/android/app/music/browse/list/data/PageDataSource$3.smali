.class Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a(Landroid/content/Context;IZ)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/util/List<",
        "TItem;>;",
        "Ljava/util/List<",
        "TItem;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;IZ)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->c:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    iput p2, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->a:I

    iput-boolean p3, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->c:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->a:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;I)I

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->c:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->c:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->b(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;Z)Z

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->c:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->b(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->c:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->b(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->c:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->c(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->b:Z

    if-eqz v0, :cond_1

    return-object p1

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->c:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->d(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$3;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
