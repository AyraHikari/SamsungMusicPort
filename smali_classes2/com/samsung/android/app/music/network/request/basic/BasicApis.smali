.class public Lcom/samsung/android/app/music/network/request/basic/BasicApis;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/basic/CheckCountryModel;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v7, Lcom/samsung/android/app/music/network/request/basic/BasicApis$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/network/request/basic/BasicApis$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v10, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/samsung/android/app/music/model/basic/StoreDataModel;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/request/basic/BasicApis$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Single;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lcom/samsung/android/app/music/network/request/basic/BasicApis;->a(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/request/basic/BasicApis$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/samsung/android/app/music/model/basic/NoticeListModel;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/request/basic/BasicApis$5;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Single;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method
