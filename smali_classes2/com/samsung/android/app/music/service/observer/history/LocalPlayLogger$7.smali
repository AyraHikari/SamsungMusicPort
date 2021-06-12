.class Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$7;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    .line 393
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserInfoChanged userInfo :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$7;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$7;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    return-void
.end method
