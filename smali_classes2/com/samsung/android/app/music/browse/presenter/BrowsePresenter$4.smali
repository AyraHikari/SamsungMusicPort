.class Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$4;
.super Lio/reactivex/observers/DisposableObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$4;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)V
    .locals 5

    .line 313
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestGlobalCuration - onNext"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 315
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 316
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$4;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    .line 317
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "key_browse_personal_curation_json_data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    .line 316
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    .line 320
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$4;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->b()V

    .line 321
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$4;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$4;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v4}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Landroid/app/Activity;

    move-result-object v4

    .line 323
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->create(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;

    move-result-object v1

    .line 321
    invoke-static {v4, v1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v2, v1, v4}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->a(Ljava/util/List;Z)V

    .line 325
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$4;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;I)I

    .line 326
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->setTip(Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;)V

    .line 327
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$4;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "key_browse_global_curation_json_data"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 308
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestGlobalCuration - onComplete"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 302
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestGlobalCuration - onError"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$4;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 299
    check-cast p1, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$4;->a(Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)V

    return-void
.end method
