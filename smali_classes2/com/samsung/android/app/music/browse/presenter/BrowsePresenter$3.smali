.class Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;
.super Lio/reactivex/observers/DisposableObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)V
    .locals 4

    .line 274
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestPersonalCuration - onNext"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 276
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    .line 278
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "key_browse_global_curation_json_data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    .line 277
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    .line 281
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->b()V

    .line 282
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v3}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Landroid/app/Activity;

    move-result-object v3

    .line 284
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->create(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;

    move-result-object v1

    .line 282
    invoke-static {v3, v1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->a(Ljava/util/List;Z)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;I)I

    .line 287
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "key_browse_personal_curation_json_data"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 269
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestPersonalCuration - onComplete"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 263
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestPersonalCuration - onError"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 260
    check-cast p1, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;->a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)V

    return-void
.end method
