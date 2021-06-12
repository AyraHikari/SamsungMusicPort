.class Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d(Lcom/samsung/android/app/music/model/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/model/UserInfo;

.field final synthetic b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$3;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$3;->a:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$3;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    .line 330
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyUserFeatureChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$3;->a:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;->b(Lcom/samsung/android/app/music/model/UserInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
