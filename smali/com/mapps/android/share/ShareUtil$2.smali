.class Lcom/mapps/android/share/ShareUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/listener/AdvertisingIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil;->getAdvertisingId(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ShareUtil;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$2;->this$0:Lcom/mapps/android/share/ShareUtil;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/ShareUtil$2;)Lcom/mapps/android/share/ShareUtil;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/mapps/android/share/ShareUtil$2;->this$0:Lcom/mapps/android/share/ShareUtil;

    return-object p0
.end method


# virtual methods
.method public onReceivedAdvertisingId(Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$2;->this$0:Lcom/mapps/android/share/ShareUtil;

    invoke-virtual {p1}, Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    .line 108
    iget-object p1, p0, Lcom/mapps/android/share/ShareUtil$2;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object p1, p1, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    if-eqz p1, :cond_0

    .line 109
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/share/ShareUtil$2$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/share/ShareUtil$2$1;-><init>(Lcom/mapps/android/share/ShareUtil$2;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
