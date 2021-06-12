.class Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader$2;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/TagModel;",
        "Lcom/samsung/android/app/music/model/browse/theme/ThemeModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TagModel;",
            ">;)V"
        }
    .end annotation

    .line 301
    invoke-static {}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader;->g()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/browse/theme/ThemeModel;",
            ">;"
        }
    .end annotation

    const-string v0, "1"

    const/4 v1, 0x0

    .line 290
    invoke-static {p1, v1, v0, p2}, Lcom/samsung/android/app/music/network/request/browse/ThemeApi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 287
    check-cast p1, Lcom/samsung/android/app/music/model/browse/theme/ThemeModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader$2;->a(Lcom/samsung/android/app/music/model/browse/theme/ThemeModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/model/browse/theme/ThemeModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/browse/theme/ThemeModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TagModel;",
            ">;"
        }
    .end annotation

    .line 295
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/theme/ThemeModel;->getTags()Ljava/util/List;

    move-result-object p1

    .line 296
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader$2;->a(Ljava/util/List;)V

    return-object p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
