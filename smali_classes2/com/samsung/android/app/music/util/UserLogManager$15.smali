.class Lcom/samsung/android/app/music/util/UserLogManager$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/UserLogManager;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/UserLogManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/UserLogManager;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager$15;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "UserLogManager-"

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendLogToServer - zipFile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager$15;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UserLogManager;->c(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager$15;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UserLogManager;->d(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager$15;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UserLogManager;->c(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager$15;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UserLogManager;->d(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "multipart/form-data"

    .line 654
    invoke-static {v0}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->a(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    const-string v1, "logFile"

    .line 656
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lokhttp3/MultipartBody$Part;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    .line 657
    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager$15;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UserLogManager;->f(Lcom/samsung/android/app/music/util/UserLogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;

    move-result-object v1

    const/16 v2, 0x4d2

    .line 658
    invoke-interface {v1, v2, p1, v0}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;->a(ILokhttp3/MultipartBody$Part;Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 648
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/UserLogManager$15;->a(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
