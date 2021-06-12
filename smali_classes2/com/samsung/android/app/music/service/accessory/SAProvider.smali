.class public Lcom/samsung/android/app/music/service/accessory/SAProvider;
.super Lcom/samsung/android/sdk/accessory/SAAgentV2;
.source "SourceFile"


# static fields
.field private static final SASOCKET_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SAProvider"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSAMusicContoller:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;

    sput-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->SASOCKET_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->SASOCKET_CLASS:Ljava/lang/Class;

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->TAG:Ljava/lang/String;

    const-string v1, "SAProvider()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->onCreate()V

    .line 29
    new-instance p1, Lcom/samsung/android/sdk/accessory/SA;

    invoke-direct {p1}, Lcom/samsung/android/sdk/accessory/SA;-><init>()V

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SA;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private onCreate()V
    .locals 2

    .line 38
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mSAMusicContoller:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    return-void
.end method

.method private onDestroy()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mSAMusicContoller:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mSAMusicContoller:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->b()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mSAMusicContoller:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    .line 59
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V
    .locals 3

    .line 91
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    return-void
.end method

.method protected onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 3

    .line 64
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFindPeerAgentsResponse(): result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", peerAgent count: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    array-length p2, p1

    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 66
    array-length p2, p1

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 67
    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->requestServiceConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :cond_1
    return-void
.end method

.method protected onServiceConnectionRequested(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 2

    .line 73
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->TAG:Ljava/lang/String;

    const-string v1, "onServiceConnectionRequested()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->acceptServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :cond_0
    return-void
.end method

.method protected onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 2

    .line 81
    sget-object p1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnectionResponse result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mSAMusicContoller:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mSAMusicContoller:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->a(Lcom/samsung/android/sdk/accessory/SASocket;)V

    :cond_0
    return-void
.end method

.method public releaseAgent()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->onDestroy()V

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->TAG:Ljava/lang/String;

    const-string v1, "releaseAgent()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-super {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->releaseAgent()V

    return-void
.end method
