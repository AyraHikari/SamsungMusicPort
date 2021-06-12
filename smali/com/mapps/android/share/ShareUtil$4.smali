.class Lcom/mapps/android/share/ShareUtil$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$task:Lcom/mapps/android/share/GetAdvertisingIdTask;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;Landroid/os/Handler;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;Lcom/mapps/android/share/GetAdvertisingIdTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$4;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/mapps/android/share/ShareUtil$4;->val$mainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/mapps/android/share/ShareUtil$4;->val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

    iput-object p5, p0, Lcom/mapps/android/share/ShareUtil$4;->val$task:Lcom/mapps/android/share/GetAdvertisingIdTask;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/ShareUtil$4;)Lcom/mapps/android/share/ShareUtil;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    new-instance v1, Lcom/mz/common/utils/AdPreferences;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$4;->val$ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mz/common/utils/AdPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    .line 162
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v0, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v0, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    const-string v1, "ad_id"

    invoke-virtual {v0, v1}, Lcom/mz/common/utils/AdPreferences;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v1, v1, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    const-string v2, "ad_id"

    invoke-virtual {v1, v2}, Lcom/mz/common/utils/AdPreferences;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->val$mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/share/ShareUtil$4$1;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$4;->val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

    invoke-direct {v1, p0, v2}, Lcom/mapps/android/share/ShareUtil$4$1;-><init>(Lcom/mapps/android/share/ShareUtil$4;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->val$mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/share/ShareUtil$4$2;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$4;->val$task:Lcom/mapps/android/share/GetAdvertisingIdTask;

    invoke-direct {v1, p0, v2}, Lcom/mapps/android/share/ShareUtil$4$2;-><init>(Lcom/mapps/android/share/ShareUtil$4;Lcom/mapps/android/share/GetAdvertisingIdTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
