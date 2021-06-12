.class Lcom/mapps/android/share/Track$10;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track;->requestServerPkgList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mz/common/network/request/OnConnectionListener;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/Track;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$listener:Lcom/mz/common/network/request/OnConnectionListener;

.field private final synthetic val$media_no:Ljava/lang/String;

.field private final synthetic val$pub_no:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/mz/common/network/request/OnConnectionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$10;->this$0:Lcom/mapps/android/share/Track;

    iput-object p2, p0, Lcom/mapps/android/share/Track$10;->val$pub_no:Ljava/lang/String;

    iput-object p3, p0, Lcom/mapps/android/share/Track$10;->val$media_no:Ljava/lang/String;

    iput-object p4, p0, Lcom/mapps/android/share/Track$10;->val$ctx:Landroid/content/Context;

    iput-object p5, p0, Lcom/mapps/android/share/Track$10;->val$listener:Lcom/mz/common/network/request/OnConnectionListener;

    .line 450
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6

    .line 455
    new-instance v0, Lcom/mapps/android/share/Track$TrackAdInfo;

    iget-object v1, p0, Lcom/mapps/android/share/Track$10;->this$0:Lcom/mapps/android/share/Track;

    invoke-direct {v0, v1}, Lcom/mapps/android/share/Track$TrackAdInfo;-><init>(Lcom/mapps/android/share/Track;)V

    .line 456
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 457
    iget-object v2, p0, Lcom/mapps/android/share/Track$10;->val$pub_no:Ljava/lang/String;

    iput-object v2, v0, Lcom/mapps/android/share/Track$TrackAdInfo;->pub_no:Ljava/lang/String;

    .line 458
    iget-object v2, p0, Lcom/mapps/android/share/Track$10;->val$media_no:Ljava/lang/String;

    iput-object v2, v0, Lcom/mapps/android/share/Track$TrackAdInfo;->media_no:Ljava/lang/String;

    .line 459
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605PkgAgList"

    .line 460
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 461
    new-instance v0, Lcom/mz/common/network/request/RequestPkgAgList;

    iget-object v2, p0, Lcom/mapps/android/share/Track$10;->val$ctx:Landroid/content/Context;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/mz/common/network/request/RequestPkgAgList;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 462
    iget-object v1, p0, Lcom/mapps/android/share/Track$10;->val$listener:Lcom/mz/common/network/request/OnConnectionListener;

    invoke-virtual {v0, v1}, Lcom/mz/common/network/request/RequestPkgAgList;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 463
    iget-object v1, p0, Lcom/mapps/android/share/Track$10;->this$0:Lcom/mapps/android/share/Track;

    new-instance v2, Lcom/mz/common/network/Nt;

    iget-object v3, p0, Lcom/mapps/android/share/Track$10;->val$ctx:Landroid/content/Context;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    invoke-static {v1, v2}, Lcom/mapps/android/share/Track;->access$0(Lcom/mapps/android/share/Track;Lcom/mz/common/network/Nt;)V

    .line 464
    iget-object v1, p0, Lcom/mapps/android/share/Track$10;->this$0:Lcom/mapps/android/share/Track;

    invoke-static {v1}, Lcom/mapps/android/share/Track;->access$1(Lcom/mapps/android/share/Track;)Lcom/mz/common/network/Nt;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/share/Track$10;->this$0:Lcom/mapps/android/share/Track;

    invoke-static {v2}, Lcom/mapps/android/share/Track;->access$2(Lcom/mapps/android/share/Track;)Lcom/mz/common/network/Nt$OnProgressbarListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 465
    iget-object v1, p0, Lcom/mapps/android/share/Track$10;->this$0:Lcom/mapps/android/share/Track;

    invoke-static {v1}, Lcom/mapps/android/share/Track;->access$1(Lcom/mapps/android/share/Track;)Lcom/mz/common/network/Nt;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 467
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
