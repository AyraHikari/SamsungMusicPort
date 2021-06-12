.class Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/model/base/ServerResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedGenreModel"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
