.class Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungAccountCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;-><init>(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;)V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    .line 172
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    const-string v0, "access_token"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Z)V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->c(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;)Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->release()V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->b(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;)V

    .line 184
    invoke-static {}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceiveAccessToken()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
