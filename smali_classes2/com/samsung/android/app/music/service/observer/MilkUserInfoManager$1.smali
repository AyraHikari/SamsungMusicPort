.class Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$1;->a:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserInfoChanged : userInfo :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$1;->a:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->a(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$1;->a:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->a(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$1;->a:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$1;->a:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->a(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->b(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;Z)V

    :cond_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserFeatureChanged : userInfo :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$1;->a:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->a(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$1;->a:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager$1;->a:Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->a(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->b(Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;Z)V

    :cond_0
    return-void
.end method
