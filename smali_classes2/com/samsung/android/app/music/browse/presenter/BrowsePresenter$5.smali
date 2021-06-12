.class Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$5;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 339
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive mIsAccountSignedIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$5;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->d(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$5;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V

    :cond_0
    return-void
.end method
