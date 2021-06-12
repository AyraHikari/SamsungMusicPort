.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$16;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/samsung/android/app/music/service/milk/SABundle;)V
    .locals 5

    .line 716
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$16;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->f(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 718
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 720
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$16;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Lcom/samsung/android/app/music/service/milk/SABundle;)Lcom/samsung/android/app/music/service/milk/SABundle;

    const-string p1, "LoginManager"

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() SABundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$16;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/SABundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/SABundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$16;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->h(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$16;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/SABundle;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 725
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$16;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->h(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 726
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$16;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    const-string v3, "access_token"

    .line 727
    invoke-virtual {p2}, Lcom/samsung/android/app/music/service/milk/SABundle;->a()Ljava/lang/String;

    move-result-object p2

    .line 726
    invoke-static {p1, v3, p2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 732
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$16;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Lcom/samsung/android/app/music/service/milk/SABundle;)V

    .line 734
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
