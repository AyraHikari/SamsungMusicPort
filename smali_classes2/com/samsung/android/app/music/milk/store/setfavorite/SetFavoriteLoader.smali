.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 233
    invoke-static {v1}, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;->makeEmptyMode(I)Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 234
    invoke-static {v1}, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;->makeEmptyMode(I)Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 235
    invoke-static {v1}, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;->makeEmptyMode(I)Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/RecommendTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/RecommendTransport;

    move-result-object p0

    .line 238
    invoke-static {v0}, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;->create(Ljava/util/List;)Lcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;

    move-result-object v0

    const/16 v1, 0x23f4

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/app/music/network/transport/RecommendTransport;->a(ILcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 239
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$5;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$5;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static a(Landroid/content/Context;ILjava/util/List;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Ui"

    const-string v1, "SetFavorite_SetFavoriteLoader | upload()"

    .line 183
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    .line 187
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 188
    new-instance v2, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g()I

    move-result v1

    invoke-direct {v2, p1, v3, v1}, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;-><init>(ILjava/lang/String;I)V

    .line 189
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Ui"

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetFavorite_SetFavoriteLoader | upload() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p2, 0x23f3

    goto :goto_1

    :pswitch_1
    const/16 p2, 0x23f2

    goto :goto_1

    :pswitch_2
    const/16 p2, 0x23f1

    .line 207
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;->create(ILjava/util/List;)Lcom/samsung/android/app/music/model/recommend/SaveUserPreferenceModel;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/RecommendTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/RecommendTransport;

    move-result-object p0

    .line 211
    invoke-static {v1}, Lcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;->create(Ljava/util/List;)Lcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/app/music/network/transport/RecommendTransport;->a(ILcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 212
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$4;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$4;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/RecommendTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/RecommendTransport;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x238d

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2, v0, v0}, Lcom/samsung/android/app/music/network/transport/RecommendTransport;->a(IILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 42
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;)V

    .line 43
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
            ">;",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;",
            ")V"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    .line 78
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "@"

    .line 80
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/RecommendTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/RecommendTransport;

    move-result-object p0

    const/16 v0, 0x238e

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 82
    invoke-interface {p0, v0, v1, p1, v2}, Lcom/samsung/android/app/music/network/transport/RecommendTransport;->a(IILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 83
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$2;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;)V

    .line 84
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
            ">;",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;",
            ")V"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    .line 127
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "@"

    .line 129
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/RecommendTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/RecommendTransport;

    move-result-object p0

    const/16 v0, 0x238f

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 131
    invoke-interface {p0, v0, v1, v2, p1}, Lcom/samsung/android/app/music/network/transport/RecommendTransport;->a(IILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 132
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$3;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$3;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;)V

    .line 133
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
