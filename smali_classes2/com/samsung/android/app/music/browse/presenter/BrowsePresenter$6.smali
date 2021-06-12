.class Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$6;
.super Lio/reactivex/observers/DisposableObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->g()V
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

    .line 350
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$6;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)V
    .locals 2

    .line 365
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestPersonalCurationSigned - onNext"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$6;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    .line 368
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)Lcom/samsung/android/app/music/browse/data/BrowseData;

    move-result-object p1

    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$6;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    .line 370
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$6;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;I)I

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 360
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestPersonalCurationSigned - onComplete"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 353
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestPersonalCurationSigned - onError"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 355
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$6;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;I)I

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 350
    check-cast p1, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$6;->a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;)V

    return-void
.end method
