.class Lcom/mapps/android/share/ShareUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/listener/AdvertisingIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil;->getAdvertisingIdForResult(Landroid/os/Handler;Landroid/content/Context;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ShareUtil;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

.field private final synthetic val$mainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;Landroid/os/Handler;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$3;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$3;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/mapps/android/share/ShareUtil$3;->val$mainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/mapps/android/share/ShareUtil$3;->val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/ShareUtil$3;)Lcom/mapps/android/share/ShareUtil;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/mapps/android/share/ShareUtil$3;->this$0:Lcom/mapps/android/share/ShareUtil;

    return-object p0
.end method


# virtual methods
.method public onReceivedAdvertisingId(Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$3;->this$0:Lcom/mapps/android/share/ShareUtil;

    new-instance v1, Lcom/mz/common/utils/AdPreferences;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$3;->val$ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mz/common/utils/AdPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$3;->this$0:Lcom/mapps/android/share/ShareUtil;

    invoke-virtual {p1}, Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    .line 138
    iget-object p1, p0, Lcom/mapps/android/share/ShareUtil$3;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object p1, p1, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    if-eqz p1, :cond_0

    .line 139
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/share/ShareUtil$3$1;

    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$3;->val$mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$3;->val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/mapps/android/share/ShareUtil$3$1;-><init>(Lcom/mapps/android/share/ShareUtil$3;Landroid/os/Handler;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 152
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
