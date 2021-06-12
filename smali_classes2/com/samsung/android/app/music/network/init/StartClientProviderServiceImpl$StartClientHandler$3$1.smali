.class Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;->a(Lcom/samsung/android/app/music/model/basic/StartClientModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 357
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSignInFailed()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "StartClientHandler"

    const-string v0, "Sign-in failed. try to quest login"

    .line 358
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;

    iget-object p1, p1, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d()V

    :cond_0
    return-void
.end method
