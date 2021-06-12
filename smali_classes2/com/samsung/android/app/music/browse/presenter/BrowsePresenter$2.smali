.class Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$2;
.super Lio/reactivex/observers/DisposableObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$2;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;)V
    .locals 2

    .line 242
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadBrowseGroups - onNext"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$2;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->b()V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$2;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$2;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    .line 246
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 245
    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->a(Ljava/util/List;Z)V

    .line 248
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$2;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V

    .line 249
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$2;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;I)I

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$2;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 237
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadBrowseGroups - onComplete"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 231
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadBrowseGroups - onError"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$2;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 228
    check-cast p1, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$2;->a(Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;)V

    return-void
.end method
