.class public Lcom/facebook/appevents/codeless/internal/UnityReflection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CAPTURE_VIEW_HIERARCHY_METHOD:Ljava/lang/String; = "CaptureViewHierarchy"

.field private static final EVENT_MAPPING_METHOD:Ljava/lang/String; = "OnReceiveMapping"

.field private static final FB_UNITY_GAME_OBJECT:Ljava/lang/String; = "UnityFacebookSDKPlugin"

.field private static final TAG:Ljava/lang/String;

.field private static final UNITY_PLAYER_CLASS:Ljava/lang/String; = "com.unity3d.player.UnityPlayer"

.field private static final UNITY_SEND_MESSAGE_METHOD:Ljava/lang/String; = "UnitySendMessage"

.field private static unityPlayer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/facebook/appevents/codeless/internal/UnityReflection;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/internal/UnityReflection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureViewHierarchy()V
    .locals 3

    const-string v0, "UnityFacebookSDKPlugin"

    const-string v1, "CaptureViewHierarchy"

    const-string v2, ""

    .line 51
    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/codeless/internal/UnityReflection;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventMapping(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UnityFacebookSDKPlugin"

    const-string v1, "OnReceiveMapping"

    .line 55
    invoke-static {v0, v1, p0}, Lcom/facebook/appevents/codeless/internal/UnityReflection;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 38
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/codeless/internal/UnityReflection;->unityPlayer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.unity3d.player.UnityPlayer"

    .line 39
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/internal/UnityReflection;->unityPlayer:Ljava/lang/Class;

    .line 42
    :cond_0
    sget-object v0, Lcom/facebook/appevents/codeless/internal/UnityReflection;->unityPlayer:Ljava/lang/Class;

    const-string v1, "UnitySendMessage"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/facebook/appevents/codeless/internal/UnityReflection;->unityPlayer:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 46
    sget-object p1, Lcom/facebook/appevents/codeless/internal/UnityReflection;->TAG:Ljava/lang/String;

    const-string p2, "Failed to send message to Unity"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
