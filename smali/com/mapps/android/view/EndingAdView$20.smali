.class Lcom/mapps/android/view/EndingAdView$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->EndOperator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$20;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 837
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$20;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTEnd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTEnd;->e()Lcom/mz/common/network/data/DataListEndAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListEndAD;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$20;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTEnd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTEnd;->e()Lcom/mz/common/network/data/DataListEndAD;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataListEndAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mz/common/network/data/DataIEndAD;

    .line 839
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$20;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataIEndAD;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$31(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
