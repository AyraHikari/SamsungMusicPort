.class final Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;",
        "Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;",
        "Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 387
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getResultCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 390
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->create(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;

    move-result-object p1

    .line 391
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestBrowseMain - b.p : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->getPersonalCurationModel()Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestBrowseMain - b.g : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->getGlobalCurationModel()Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    check-cast p1, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    check-cast p2, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$7;->a(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;

    move-result-object p1

    return-object p1
.end method
