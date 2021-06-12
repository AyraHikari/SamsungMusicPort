.class Lcom/mapps/android/share/ShareUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$1;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$1;->val$ctx:Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$1;->this$0:Lcom/mapps/android/share/ShareUtil;

    new-instance v1, Lcom/mz/common/utils/AdPreferences;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$1;->val$ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mz/common/utils/AdPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    .line 95
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$1;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v0, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$1;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v0, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    const-string v1, "ad_id"

    invoke-virtual {v0, v1}, Lcom/mz/common/utils/AdPreferences;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$1;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$1;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v1, v1, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    const-string v2, "ad_id"

    invoke-virtual {v1, v2}, Lcom/mz/common/utils/AdPreferences;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    :cond_0
    return-void
.end method
