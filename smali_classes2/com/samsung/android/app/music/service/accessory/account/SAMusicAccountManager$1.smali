.class Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 139
    invoke-static {}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 141
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;)V

    .line 144
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Landroid/os/Bundle;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->b(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;)V

    .line 150
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Z)V

    .line 151
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 152
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->b(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Z)Z

    .line 153
    invoke-static {}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
