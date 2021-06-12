.class Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/LegalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegalSettingObserver"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/reactivex/subjects/Subject<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/milk/LegalManager$1;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/subjects/PublishSubject;
    .locals 2

    .line 232
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 239
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 240
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/app/music/service/milk/LegalManager;->e()Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 243
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/reactivex/subjects/Subject;

    const/4 v0, 0x1

    .line 244
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p2}, Lio/reactivex/subjects/Subject;->onComplete()V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    goto :goto_1

    :cond_1
    const-string p1, "LegalManager"

    const-string p2, "User disagreed legal which leads to service"

    .line 249
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
