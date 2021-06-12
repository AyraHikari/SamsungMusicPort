.class public final Lcom/samsung/android/app/music/fcm/smp/MarketingSmpFcmService;
.super Lcom/samsung/android/sdk/smp/SmpFcmService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/fcm/smp/MarketingSmpFcmService$Companion;
    }
.end annotation


# static fields
.field public static final b:Lcom/samsung/android/app/music/fcm/smp/MarketingSmpFcmService$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/fcm/smp/MarketingSmpFcmService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/fcm/smp/MarketingSmpFcmService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/fcm/smp/MarketingSmpFcmService;->b:Lcom/samsung/android/app/music/fcm/smp/MarketingSmpFcmService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/SmpFcmService;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 2

    const-string v0, "MarketingSmpFcmService"

    const-string v1, "messageReceived"

    .line 36
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/fcm/smp/MarketingSmpFcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/fcm/FcmController;->a(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MarketingSmpFcmService"

    const-string v1, "onTokenChanged"

    .line 51
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/fcm/smp/MarketingSmpFcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/fcm/FcmController;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
