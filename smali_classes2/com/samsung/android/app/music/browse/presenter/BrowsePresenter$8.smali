.class Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


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

    .line 402
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$8;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "complete_set_favorite_music"

    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 407
    invoke-static {}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSettingChanged value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$8;->a:Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;Z)Z

    :cond_0
    return-void
.end method
