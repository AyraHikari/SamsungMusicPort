.class Lcom/mapps/android/view/AdVideoPlayer$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer$7;->onAdvertisingId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdVideoPlayer$7;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer$7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$7$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$7;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AdViewCodeComplete(Z)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$7$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$7;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer$7;->access$0(Lcom/mapps/android/view/AdVideoPlayer$7;)Lcom/mapps/android/view/AdVideoPlayer;

    move-result-object v0

    iput-boolean p1, v0, Lcom/mapps/android/view/AdVideoPlayer;->adInterval:Z

    .line 215
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$7$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$7;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer$7;->access$0(Lcom/mapps/android/view/AdVideoPlayer$7;)Lcom/mapps/android/view/AdVideoPlayer;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$14(Lcom/mapps/android/view/AdVideoPlayer;)V

    return-void
.end method

.method public AdViewCodeError(Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V
    .locals 1

    .line 220
    sget-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p1, v0, :cond_0

    .line 221
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$7$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$7;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer$7;->access$0(Lcom/mapps/android/view/AdVideoPlayer$7;)Lcom/mapps/android/view/AdVideoPlayer;

    move-result-object p1

    const/16 v0, -0x7d0

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$7$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$7;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer$7;->access$0(Lcom/mapps/android/view/AdVideoPlayer$7;)Lcom/mapps/android/view/AdVideoPlayer;

    move-result-object p1

    const/16 v0, -0xc8

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    :goto_0
    return-void
.end method
