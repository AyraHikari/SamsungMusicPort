.class Lcom/mapps/android/share/ShareUtil$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil$2;->onReceivedAdvertisingId(Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/share/ShareUtil$2;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$2$1;->this$1:Lcom/mapps/android/share/ShareUtil$2;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$2$1;->this$1:Lcom/mapps/android/share/ShareUtil$2;

    invoke-static {v0}, Lcom/mapps/android/share/ShareUtil$2;->access$0(Lcom/mapps/android/share/ShareUtil$2;)Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mz/common/utils/AdPreferences;

    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$2$1;->this$1:Lcom/mapps/android/share/ShareUtil$2;

    invoke-static {v2}, Lcom/mapps/android/share/ShareUtil$2;->access$0(Lcom/mapps/android/share/ShareUtil$2;)Lcom/mapps/android/share/ShareUtil;

    move-result-object v2

    iget-object v2, v2, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mz/common/utils/AdPreferences;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
