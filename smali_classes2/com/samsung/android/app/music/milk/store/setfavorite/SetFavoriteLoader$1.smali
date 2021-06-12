.class final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader;->a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/recommend/GetPreferenceModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/recommend/GetPreferenceModel;)V
    .locals 11

    const-string v0, "Ui"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFavorite_SetFavoriteLoader | loadGenre onNext() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/recommend/GetPreferenceModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/recommend/GetPreferenceModel;->getPreferenceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/base/PreferenceModel;

    const-string v2, "Ui"

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetFavorite_SetFavoriteLoader | preId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PreferenceModel;->getPreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", preName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PreferenceModel;->getPreName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PreferenceModel;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v2, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    .line 65
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PreferenceModel;->getPreId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PreferenceModel;->getPreName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 66
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PreferenceModel;->getLevel()I

    move-result v10

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;->a(Ljava/util/List;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "Ui"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFavorite_SetFavoriteLoader | loadGenre onError() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/samsung/android/app/music/model/recommend/GetPreferenceModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$1;->a(Lcom/samsung/android/app/music/model/recommend/GetPreferenceModel;)V

    return-void
.end method
