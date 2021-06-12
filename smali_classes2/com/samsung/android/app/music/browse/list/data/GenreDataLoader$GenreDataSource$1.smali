.class Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;->a(Landroid/content/Context;I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/browse/genre/GenreModel;",
        "Lcom/samsung/android/app/music/model/browse/genre/GenreModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;Landroid/content/Context;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource$1;->b:Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/genre/GenreModel;)Lcom/samsung/android/app/music/model/browse/genre/GenreModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource$1;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/genre/GenreModel;->getGenres()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource$1;->b:Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;->a(Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;Lcom/samsung/android/app/music/model/browse/genre/GenreModel;)Lcom/samsung/android/app/music/model/browse/genre/GenreModel;

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    check-cast p1, Lcom/samsung/android/app/music/model/browse/genre/GenreModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource$1;->a(Lcom/samsung/android/app/music/model/browse/genre/GenreModel;)Lcom/samsung/android/app/music/model/browse/genre/GenreModel;

    move-result-object p1

    return-object p1
.end method
