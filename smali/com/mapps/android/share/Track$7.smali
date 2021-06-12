.class Lcom/mapps/android/share/Track$7;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track;->SendTagetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/Track;

.field private final synthetic val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$7;->this$0:Lcom/mapps/android/share/Track;

    iput-object p2, p0, Lcom/mapps/android/share/Track$7;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    .line 329
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 334
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    .line 336
    iget-object v1, p0, Lcom/mapps/android/share/Track$7;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    invoke-interface {v1, v0}, Lcom/mapps/android/share/Track$TrackCompleteListener;->onTrackError(Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V

    .line 338
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
