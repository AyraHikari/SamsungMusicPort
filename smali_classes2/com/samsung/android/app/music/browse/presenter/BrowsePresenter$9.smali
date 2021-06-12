.class Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;
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

    .line 413
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$9;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    .line 416
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserInfoChanged userInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$9;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;Z)Z

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    .line 422
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserFeatureChanged userInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
