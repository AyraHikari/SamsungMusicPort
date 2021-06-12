.class Lcom/samsung/android/app/music/browse/list/data/PageDataSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a(Landroid/content/Context;IZ)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$1;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$1;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a(Lcom/samsung/android/app/music/browse/list/data/PageDataSource;Z)Z

    const-string v0, "PageDataSource"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load. unsubscribed. isLoading - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$1;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    .line 124
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", total - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$1;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    .line 125
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", has more - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/data/PageDataSource$1;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
