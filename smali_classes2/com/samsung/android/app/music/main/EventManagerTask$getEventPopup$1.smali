.class final Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/EventManagerTask;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/EventManagerTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milkevent/EventPopupList;",
            ">;"
        }
    .end annotation

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object p1, Lcom/samsung/android/app/music/network/request/browse/EventApi;->a:Lcom/samsung/android/app/music/network/request/browse/EventApi;

    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/EventManagerTask;->b(Lcom/samsung/android/app/music/main/EventManagerTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/network/request/browse/EventApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$1;->a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
