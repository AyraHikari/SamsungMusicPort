.class Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;


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

    .line 157
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$2;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 161
    invoke-static {}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessToken is not received during timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$2;->a:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Z)V

    return-void
.end method
