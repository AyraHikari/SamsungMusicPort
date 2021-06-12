.class Lcom/samsung/android/app/music/browse/list/data/YearDataLoader$YearDataSource;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/data/YearDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/model/base/YearBaseModel;",
        "Lcom/samsung/android/app/music/model/browse/year/YearModel;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/data/YearDataLoader$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/YearDataLoader$YearDataSource;-><init>()V

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
            "Lcom/samsung/android/app/music/model/browse/year/YearModel;",
            ">;"
        }
    .end annotation

    const-string v0, "1"

    const/4 v1, 0x0

    .line 32
    invoke-static {p1, v1, v0, p2}, Lcom/samsung/android/app/music/network/request/browse/YearApi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 28
    check-cast p1, Lcom/samsung/android/app/music/model/browse/year/YearModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/YearDataLoader$YearDataSource;->a(Lcom/samsung/android/app/music/model/browse/year/YearModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/model/browse/year/YearModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/browse/year/YearModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/YearBaseModel;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/year/YearModel;->getYears()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
