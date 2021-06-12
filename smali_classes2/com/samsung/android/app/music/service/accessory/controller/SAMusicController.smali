.class public Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;,
        Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SamsungAccountListenerImpl;,
        Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$HandleSAPMessageListenerImpl;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "SAMusicController"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;

.field protected c:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;

.field protected d:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;

.field protected e:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$HandleSAPMessageListenerImpl;

.field protected f:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SamsungAccountListenerImpl;

.field protected g:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->h:Ljava/lang/String;

    const-string v1, "SAMusicController()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->a(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->a()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;-><init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->c:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$HandleSAPMessageListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$HandleSAPMessageListenerImpl;-><init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->e:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$HandleSAPMessageListenerImpl;

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->e:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$HandleSAPMessageListenerImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;-><init>(Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager$OnHandleSAPMessageListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->d:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;

    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->c:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->a(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 94
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSocketConnection(): Socket is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "added"

    goto :goto_1

    :cond_1
    const-string p1, "null"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 124
    :cond_0
    sget-object p2, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReceivedSAPMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "account-req"

    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->c()V

    :cond_1
    return-void
.end method

.method protected a(ZLjava/lang/String;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->c:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;->a(ZLjava/lang/String;)V

    return-void
.end method

.method protected a([B)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->d:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;->a([B)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->d:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->d:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;->a()V

    .line 74
    iput-object v1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->d:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->a()V

    .line 79
    iput-object v1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->g:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->g:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a()V

    .line 84
    iput-object v1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->g:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    :cond_2
    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .locals 2

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SamsungAccountListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SamsungAccountListenerImpl;-><init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->f:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SamsungAccountListenerImpl;

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->f:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SamsungAccountListenerImpl;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->g:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    return-void
.end method

.method protected c()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->g:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->b()V

    return-void
.end method
