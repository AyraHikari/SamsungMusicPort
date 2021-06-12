.class Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$1;->a:Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$1;->a:Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGenreChanged. try to refresh"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$1;->a:Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;->g()V

    return-void
.end method
