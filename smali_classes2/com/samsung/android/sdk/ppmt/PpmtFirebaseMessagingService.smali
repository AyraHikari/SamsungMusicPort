.class public Lcom/samsung/android/sdk/ppmt/PpmtFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 2

    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/ppmt/Ppmt;->a(Landroid/content/Context;Ljava/util/Map;I)V

    :cond_0
    return-void
.end method
