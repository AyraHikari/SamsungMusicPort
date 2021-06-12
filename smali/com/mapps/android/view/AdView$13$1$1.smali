.class Lcom/mapps/android/view/AdView$13$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$13$1;->onAdvertisingId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mapps/android/view/AdView$13$1;

.field private final synthetic val$codeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$13$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$13$1$1;->this$2:Lcom/mapps/android/view/AdView$13$1;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$13$1$1;->val$codeType:Ljava/lang/String;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AdViewCodeComplete(Z)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/mapps/android/view/AdView$13$1$1;->this$2:Lcom/mapps/android/view/AdView$13$1;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$13$1;->access$0(Lcom/mapps/android/view/AdView$13$1;)Lcom/mapps/android/view/AdView$13;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$13;->access$0(Lcom/mapps/android/view/AdView$13;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mapps/android/view/AdView;->access$62(Lcom/mapps/android/view/AdView;Z)V

    .line 295
    iget-object p1, p0, Lcom/mapps/android/view/AdView$13$1$1;->this$2:Lcom/mapps/android/view/AdView$13$1;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$13$1;->access$0(Lcom/mapps/android/view/AdView$13$1;)Lcom/mapps/android/view/AdView$13;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdView$13;->access$0(Lcom/mapps/android/view/AdView$13;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    iget-object v0, p0, Lcom/mapps/android/view/AdView$13$1$1;->this$2:Lcom/mapps/android/view/AdView$13$1;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$13$1;->access$0(Lcom/mapps/android/view/AdView$13$1;)Lcom/mapps/android/view/AdView$13;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$13;->access$0(Lcom/mapps/android/view/AdView$13;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$63(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView$13$1$1;->val$codeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/mapps/android/view/AdView;->SendRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public AdViewCodeError(Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V
    .locals 1

    .line 300
    sget-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p1, v0, :cond_0

    .line 301
    iget-object p1, p0, Lcom/mapps/android/view/AdView$13$1$1;->this$2:Lcom/mapps/android/view/AdView$13$1;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$13$1;->access$0(Lcom/mapps/android/view/AdView$13$1;)Lcom/mapps/android/view/AdView$13;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdView$13;->access$0(Lcom/mapps/android/view/AdView$13;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    const/16 v0, -0x7d0

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView$13$1$1;->this$2:Lcom/mapps/android/view/AdView$13$1;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$13$1;->access$0(Lcom/mapps/android/view/AdView$13$1;)Lcom/mapps/android/view/AdView$13;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdView$13;->access$0(Lcom/mapps/android/view/AdView$13;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    const/16 v0, -0xc8

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    :goto_0
    return-void
.end method
