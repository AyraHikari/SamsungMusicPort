.class Lcom/mapps/android/view/EndingAdView$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView$8;->onAdvertisingId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/EndingAdView$8;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView$8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$8$1;->this$1:Lcom/mapps/android/view/EndingAdView$8;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AdViewCodeComplete(Z)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$8$1;->this$1:Lcom/mapps/android/view/EndingAdView$8;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$8;->access$0(Lcom/mapps/android/view/EndingAdView$8;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    iput-boolean p1, v0, Lcom/mapps/android/view/EndingAdView;->adInterval:Z

    .line 224
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$8$1;->this$1:Lcom/mapps/android/view/EndingAdView$8;

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView$8;->access$0(Lcom/mapps/android/view/EndingAdView$8;)Lcom/mapps/android/view/EndingAdView;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView;->access$17(Lcom/mapps/android/view/EndingAdView;)V

    return-void
.end method

.method public AdViewCodeError(Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V
    .locals 1

    .line 229
    sget-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p1, v0, :cond_0

    .line 230
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$8$1;->this$1:Lcom/mapps/android/view/EndingAdView$8;

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView$8;->access$0(Lcom/mapps/android/view/EndingAdView$8;)Lcom/mapps/android/view/EndingAdView;

    move-result-object p1

    const/16 v0, -0x7d0

    invoke-static {p1, v0}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$8$1;->this$1:Lcom/mapps/android/view/EndingAdView$8;

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView$8;->access$0(Lcom/mapps/android/view/EndingAdView$8;)Lcom/mapps/android/view/EndingAdView;

    move-result-object p1

    const/16 v0, -0xc8

    invoke-static {p1, v0}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    :goto_0
    return-void
.end method
