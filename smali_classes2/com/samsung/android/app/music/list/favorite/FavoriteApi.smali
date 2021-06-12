.class public interface abstract Lcom/samsung/android/app/music/list/favorite/FavoriteApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->$$INSTANCE:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    sput-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    return-void
.end method


# virtual methods
.method public abstract addFavorites(Ljava/lang/Object;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "/usm/user/favorites"
    .end annotation
.end method

.method public abstract checkFavorite(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "contentId"
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/favorite/CheckFavoriteResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "/usm/user/favorite/check"
    .end annotation
.end method

.method public abstract deleteFavorites(Ljava/lang/Object;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        a = "DELETE"
        b = "/usm/user/favorites"
        c = true
    .end annotation
.end method

.method public abstract getFavoriteCount(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "contentId"
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/favorite/GetFavoriteCountResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "/usm/user/favorite/count"
    .end annotation
.end method

.method public abstract getFavorites(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "page"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "updateDate"
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/favorite/ServerFavoriteResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "/usm/user/favorites"
    .end annotation
.end method
