.class Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$1;->a:Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$1;->a:Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGenreChanged. try to refresh"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$1;->a:Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;->c()V

    return-void
.end method
