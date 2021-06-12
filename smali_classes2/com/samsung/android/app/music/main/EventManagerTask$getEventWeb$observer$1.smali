.class public final Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;
.super Lio/reactivex/observers/DisposableObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/EventManagerTask;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lcom/samsung/android/app/music/model/milkevent/EventWebList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/EventManagerTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milkevent/EventWebList;)V
    .locals 4

    const-string v0, "requestEventWebList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "EventManager"

    const-string v1, "getEventWeb | onNext()"

    .line 202
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkevent/EventWebList;->getEventWebList()Ljava/util/ArrayList;

    move-result-object p1

    .line 204
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "eventWebList[0]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/music/model/milkevent/EventWeb;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Lcom/samsung/android/app/music/main/EventManagerTask;Lcom/samsung/android/app/music/model/milkevent/EventWeb;)V

    const-string p1, "EventManager"

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEventWeb | EventWeb : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->d(Lcom/samsung/android/app/music/main/EventManagerTask;)Lcom/samsung/android/app/music/model/milkevent/EventWeb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->getCount()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 209
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "EventManager"

    const-string v0, "getEventWeb | EventWeb count > 0"

    .line 211
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->e(Lcom/samsung/android/app/music/main/EventManagerTask;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string v0, "event_latest_check_time"

    .line 215
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DateTimeUtils.convertDateToString(Date(0))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/EventManagerTask;->d(Lcom/samsung/android/app/music/main/EventManagerTask;)Lcom/samsung/android/app/music/model/milkevent/EventWeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milkevent/EventWeb;->getRegDate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventManager"

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEventWeb | Get event list, latest check="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", latest reg time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {v1}, Lcom/samsung/android/app/music/main/EventManagerTask;->e(Lcom/samsung/android/app/music/main/EventManagerTask;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "event_badge_exist"

    .line 226
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 224
    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    const-string p1, "EventManager"

    const-string v0, "getEventWeb | EventWeb count <= 0"

    .line 229
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->b(Lcom/samsung/android/app/music/main/EventManagerTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->invalidateOptionsMenu()V

    :cond_4
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "EventManager"

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEventWeb | onError() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Lcom/samsung/android/app/music/main/EventManagerTask;Z)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 193
    check-cast p1, Lcom/samsung/android/app/music/model/milkevent/EventWebList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask$getEventWeb$observer$1;->a(Lcom/samsung/android/app/music/model/milkevent/EventWebList;)V

    return-void
.end method
